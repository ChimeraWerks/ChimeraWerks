# Validation

## Docs-Only Validation

Use this order for changes in this repo:

1. Run `git status --short --branch` to see the working tree.
2. Run `rg --files` to confirm expected docs exist.
3. Run `rg -n "docs/agents|AGENTS.md|repo-map.md|commands.md|boundaries.md|validation.md|security.md" AGENTS.md README.md docs/agents` to confirm routing references.
4. Run `git diff --check` to catch whitespace errors in tracked diffs.
5. Run `rg -n "[ \t]+$" README.md AGENTS.md CLAUDE.md docs/agents` to catch trailing whitespace in tracked and untracked Markdown files.
6. Read the final diff for public-safety and provenance issues.

## What Each Check Proves

| Check | Proves |
|---|---|
| `git status --short --branch` | Shows branch state and whether unrelated files are present. |
| `rg --files` | Confirms created files are in the expected locations. |
| Routing `rg` | Confirms the root instructions, README, and agent docs reference each other. |
| `git diff --check` | Catches whitespace errors in tracked diffs before commit. |
| Trailing-whitespace `rg` | Catches whitespace issues in new untracked docs too. |
| Manual diff review | Catches misleading claims, privacy leaks, stale links, and orphaned docs. |

## Current Missing Validation

There is no Markdown linter, link checker, package manager, test suite, or CI workflow detected in this repo snapshot. If any are added later, update `docs/agents/commands.md` and this file in the same change.

## Final Reporting

Report validation as pass, fail, or not run. Never imply a check passed if it was skipped.
