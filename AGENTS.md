# Agent Instructions

This repository is the public Chimera Werks GitHub profile and the navigational map for the Chimera repo ecosystem. It is a front door for humans and agents, not the implementation home for the products it describes. It is public: assume every committed file can appear on GitHub.

## Start here

1. `README.md` - human-facing studio overview.
2. `docs/agents/README.md` - agent-doc index and routing table.

## Hard boundaries (this repo's real traps)

- Do not add implementation code, dependencies, or generated artifacts. This repo's role is docs/profile only; adding runtime code silently changes what the repo IS, and nothing here tests for it. Changing the role is an operator decision.
- Do not edit other repos from here. This repo points at them; to change one, switch to its checkout and read its own `AGENTS.md`.
- Public-surface leak boundary: never commit secrets, raw local filesystem paths, raw stderr/stdout, private URLs/tunnels, or exploit/bypass steps. The map may name private repos at the "what and why" level only. This is invisible in a diff until it is on GitHub - read `docs/agents/security.md` before adding any private, path, command, auth, or security-sensitive detail.
- Do not silently promote an inference into fact. Every non-obvious repo claim carries a provenance label (`live_github`, `local_readme`, `user_supplied`, `inferred`, `fallback`); an unsourced or conflicting entry is marked for follow-up, not guessed. Read `docs/agents/repo-map.md` before making claims about a Chimera repo.

## Commands

This repo has no package manager, tests, build, or CI - it is docs/profile. Discovery and docs-only validation commands live in `docs/agents/commands.md`; run them from the repo root. The repo map is a dated snapshot; refresh it with the `gh repo list` command there before trusting stale entries.

## Validation gate

Run `pwsh scripts/check-agents-md.ps1` before finalizing. It hard-fails on dead routed `.md` paths and banned generic phrases, and warns (advisory) past 120 lines / 1500 words. It mirrors the shared Node gate; the instruction write policy it enforces is `docs/agents/instruction-policy.md` (read before adding, changing, or deleting any instruction line). For the docs-only validation order, read `docs/agents/validation.md`.
