# Agent Instructions

## Purpose

This repository is the public Chimera Werks profile and the navigational map for the Chimera repo ecosystem. Treat it as a front door for humans and future agents, not as the implementation home for the products it describes.

## Start Here

1. Read `README.md` for the human-facing studio overview.
2. Read `docs/agents/README.md` for the agent-doc index.
3. Read `docs/agents/repo-map.md` before making claims about a Chimera repo.
4. Read `docs/agents/commands.md` before running discovery or validation commands.
5. Read `docs/agents/boundaries.md` before changing the map structure or public/profile content.
6. Read `docs/agents/security.md` before adding private, security-sensitive, path, command, or repo-internal detail.
7. Read `docs/agents/validation.md` before finalizing work.

## Operating Contract

- Inspect relevant docs, repo metadata, and current git state before editing.
- Prefer narrow, finished documentation changes over broad partial rewrites.
- Preserve the profile role of `README.md`; move dense agent guidance into `docs/agents/`.
- Label provenance explicitly with terms such as `live_github`, `local_readme`, `user_supplied`, `fallback`, `generated`, or `inferred`.
- Do not invent repo purpose, ownership, privacy status, or production readiness when the source is missing.
- Do not add implementation code to this repo unless the user explicitly changes the repo's role.
- Avoid unrelated cleanup, formatting churn, new dependencies, or generated artifacts.
- Protect secrets, private implementation details, local filesystem paths, raw commands, raw stderr, and sensitive repo internals from public-facing docs.
- Report validation honestly, including checks that were not run.

## Comment Standard For Future Code

If this repo later gains runtime, adapter, process, filesystem, browser, or server-boundary code, every operational comment must include:

- why: the non-obvious reason the code exists
- scar: the failure mode, platform quirk, upstream limit, or production incident it protects against
- source: a checkable anchor such as upstream issue/PR/docs URL, ADR, smoke receipt date, or named test
- test: the test that proves the scar stays handled

Do not write operational comments when no real scar can be named. Never add comments for self-named helpers, trivial branches, or fields that already explain themselves.

## Map Maintenance

- Use GitHub organization metadata as the first source for canonical repo names, URLs, visibility, archived status, language, and descriptions.
- Use local README or package metadata only to enrich purpose and "why" fields.
- Mark local-only or adjacent checkouts separately from canonical `ChimeraWerks` organization repos.
- Keep private/internal repo descriptions high-level unless the user explicitly approves publishing deeper detail.
- When a repo has no description or conflicting local/GitHub evidence, mark it as needing follow-up instead of guessing.

## Validation

Run the smallest relevant checks. For docs-only changes, verify:

- `AGENTS.md` references every required agent doc.
- `docs/agents/README.md` indexes every file under `docs/agents/`.
- `README.md` links to `AGENTS.md` and `docs/agents/repo-map.md`.
- Public-facing docs avoid secrets, raw local paths, and unnecessary private internals.
- `git diff --check` passes.

## Final Response

Include what changed, key files, validation, assumptions, risks, and follow-ups. If discovery was based on a snapshot, include the snapshot date.
