#!/usr/bin/env pwsh
# Gate check for the repo's instruction architecture (see docs/agents/instruction-policy.md).
# PowerShell port of the shared Node gate (Chimera-Library agents-md skill): this repo has no
# Node/Python runtime, so the gate is a PowerShell step. It enforces the mechanical half of the
# policy only - referenced-path existence and banned generic phrases. Judgment (admission test,
# scar quality) stays with agents.
#
#   pwsh scripts/check-agents-md.ps1 [-Root <repo-root>] [-Cap <lines>] [-WordCap <words>]
#
# Exit 0 = pass. Exit 1 = violations, one per line on stdout as `FAIL <rule>: <detail>`.
# Read-only and idempotent. Size is ADVISORY, never a failure: past the review thresholds it
# prints WARN lines and still passes - the doctrine's budget is the admission test, not a number.

[CmdletBinding()]
param(
  [string]$Root = (Get-Location).Path,
  [int]$Cap = 120,
  [int]$WordCap = 1500
)

$ErrorActionPreference = 'Stop'
$failures = New-Object System.Collections.Generic.List[string]
$warnings = New-Object System.Collections.Generic.List[string]

$agentsPath = Join-Path $Root 'AGENTS.md'
if (-not (Test-Path -LiteralPath $agentsPath)) {
  Write-Output "FAIL missing: $agentsPath not found. Run the agents-md skill's init mode to create it."
  exit 1
}

$text = Get-Content -LiteralPath $agentsPath -Raw
$lines = $text -split "`r?`n"
$lineCount = $lines.Count
$wordCount = ($text -split '\s+' | Where-Object { $_ -ne '' }).Count

if ($lineCount -gt $Cap) {
  $warnings.Add("size: AGENTS.md is $lineCount lines (review threshold $Cap). Growth usually carries sediment - run the agents-md skill's audit mode. Not a failure; a long file where every line passes the admission test is correct.")
}
if ($wordCount -gt $WordCap) {
  $warnings.Add("size: AGENTS.md is $wordCount words (review threshold $WordCap). Same as above - audit, don't cram or drop real scars.")
}

# Generic virtue phrases say nothing a frontier model does not already do; they only spend context.
$banned = @('best practice', 'write clean code', 'be careful', 'high-quality code', 'follow good')
$lower = $text.ToLowerInvariant()
foreach ($phrase in $banned) {
  if ($lower.Contains($phrase)) {
    $failures.Add("banned-phrase: `"$phrase`" found. Replace with a concrete rule or delete.")
  }
}

# Every repo-relative .md path the file references must exist; a dead routing line strands the lazy tier.
# `@AGENTS.md`, `http...`, and `#anchor` are harness import directives / links / anchors, not filesystem
# routes - skipping them keeps the CLAUDE.md bridge syntax from dead-routing the gate against itself.
$seen = New-Object System.Collections.Generic.HashSet[string]
foreach ($m in [regex]::Matches($text, '(?:\]\(|`)([^)`\s:*<>"'']+\.md)(?:\)|`)')) {
  $ref = $m.Groups[1].Value
  if ($ref.StartsWith('http') -or $ref.StartsWith('#') -or $ref.StartsWith('@') -or $seen.Contains($ref)) { continue }
  [void]$seen.Add($ref)
  if (-not (Test-Path -LiteralPath (Join-Path $Root $ref))) {
    $failures.Add("dead-route: referenced path `"$ref`" does not exist. Fix the path or create the doc in the same commit.")
  }
}

foreach ($w in $warnings) { Write-Output "WARN $w" }

if ($failures.Count -eq 0) {
  $advisory = if ($warnings.Count) { ", $($warnings.Count) advisory warning(s)" } else { '' }
  Write-Output "PASS AGENTS.md: $lineCount lines / $wordCount words (review thresholds $Cap/$WordCap), $($seen.Count) routed paths verified, 0 banned phrases$advisory."
  exit 0
}

foreach ($f in $failures) { Write-Output "FAIL $f" }
Write-Error "agents-md gate: $($failures.Count) violation(s). Policy: docs/agents/instruction-policy.md"
exit 1
