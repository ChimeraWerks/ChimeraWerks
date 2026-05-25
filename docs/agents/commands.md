# Commands

Run commands from the repository root unless a task explicitly requires another checkout.

## Detected Commands

This repo has no package manager, source tree, tests, build scripts, or CI configuration in the current snapshot. It is a docs/profile repository.

## Discovery

Refresh canonical GitHub organization metadata:

```powershell
gh repo list ChimeraWerks --limit 200 --json name,description,url,repositoryTopics,isArchived,primaryLanguage,updatedAt,visibility
```

List tracked files:

```powershell
rg --files
```

Check working tree state:

```powershell
git status --short --branch
```

## Docs Validation

Check for whitespace errors:

```powershell
git diff --check
```

Check tracked and untracked Markdown files for trailing whitespace:

```powershell
rg -n "[ \t]+$" README.md AGENTS.md CLAUDE.md docs/agents
```

Confirm agent-doc wiring:

```powershell
rg -n "docs/agents|AGENTS.md|repo-map.md|commands.md|boundaries.md|validation.md|security.md" AGENTS.md README.md docs/agents
```

Inspect the final diff:

```powershell
git diff -- README.md AGENTS.md CLAUDE.md docs/agents
```

If a Markdown linter is later added, record the exact command here and in `docs/agents/validation.md`.
