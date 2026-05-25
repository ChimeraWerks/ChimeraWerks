# Boundaries

## What This Repo Owns

- The public Chimera Werks GitHub profile.
- A high-level map of Chimera repos and adjacent checkouts.
- Agent instructions for maintaining the profile and map.
- Source/provenance labels for claims about repo purpose and status.

## What This Repo Does Not Own

- Product implementation for any mapped repo.
- Detailed architecture docs for individual repos.
- Secrets, credentials, local environment details, raw local paths, shell transcripts, or private logs.
- Operational exploit steps, bypass instructions, or sensitive security procedures.
- Generated indexes that cannot be reviewed by a human.

## README Boundary

`README.md` is the human-facing profile. It should stay readable, public-safe, and high level. If a detail mainly helps agents, put it in `docs/agents/`.

## Agent Docs Boundary

`docs/agents/` is the routed agent workspace. It may be denser than `README.md`, but it is still part of a public profile repository. Do not use it as a hidden private notebook.

## Repo Map Boundary

`docs/agents/repo-map.md` may include private repo names and high-level purposes when the user wants a complete ecosystem map. It must not include private implementation details, secrets, raw local paths, raw commands from other repos, or sensitive operational notes.

## Cross-Repo Work

This repo can point to other repos, but it should not be used to edit them. If a task requires changing another repo, switch to that checkout, read its own `AGENTS.md` or equivalent instructions, and validate there.
