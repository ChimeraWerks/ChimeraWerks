# Instruction policy

Read when: adding, changing, or deleting anything in `AGENTS.md`, a nested `AGENTS.md`, or a routed lazy doc, or deciding where a newly learned rule should live.
Do not read for: `HANDOFF.md`, `ROADMAP.md`, code comments, or design documents.

## Why this exists

Always-loaded instructions spend context and instruction-following budget before the task is known, and instruction files only grow unless a written law stops them.
This file is that law.
It binds every agent working in this repo, on any harness.

## Placement ladder

Try each tier top-down; a rule lives at the first tier that holds it.

| Tier | Home | Review threshold | Holds |
|---|---|---|---|
| 0 | tests, lint, hooks, scripts | - | anything mechanically checkable; write the check, delete the prose |
| 1 | root `AGENTS.md` | 120 lines / 1500 words | scars, hard boundaries, exact commands, one-line routing |
| 2 | `<subtree>/AGENTS.md` | 60 lines | delta only, where the subtree has traps its parent lacks |
| 3 | routed lazy doc in the docs dir | 200 lines | task-scoped procedures; opens with `Read when:`; one hop from root |
| 4 | `.env.local` or equivalent | - | machine-specific values; never committed source |
| 5 | harness memory | - | accelerant only; never the sole home for cross-harness facts |
| 6 | delete | - | discoverable, generic, stale, restated, frontier-obvious |

There is no hard length cap: the budget is the admission test, and a long file where every line passes it is correct — a big project legitimately carries more scars than a small one.
Review thresholds are audit prompts, not limits; past one, the gate warns and the right response is an audit pass, never cramming lines or dropping a real scar.

Demoting content down the ladder is always allowed.
Deleting requires proof.
Promoting requires the admission test: the line names a likely, costly, non-obvious failure it prevents; no tooling enforces it; one search would not surface it; no lazier tier holds it.

## Write triggers

You may touch instruction files only when one of these occurred; no trigger means no edit, no matter how interesting the session was.

1. A documented command failed as written, verified by running it.
2. You changed a command, gate, flag, port, or env key an instruction file names.
3. You lost real time to a failure that one line would have prevented, whose cause is invisible in the code, and which will recur.
4. You shipped a boundary that future edits could silently violate and no test fully enforces; prefer writing the test (tier 0).

Fix trigger 1 and 2 items in the same commit as the change that caused them.

## Permission matrix

| Action | Allowed | Gate |
|---|---|---|
| Fix a stale command or path | must, same commit | run it fresh first |
| Add a scar, boundary, or routing line | may | template + admission test |
| Demote content down a tier | may, always | its routing line lands in the same commit |
| Update a routed lazy doc | may | its own admission test |
| Delete a line | only with proof | run the line's named check, or show the subsystem is gone |
| Promote up a tier, restructure root, change review thresholds, edit this policy | ask the operator | - |

## Formats

Scar line: state what breaks, why the code alone cannot show it, and the check that keeps it honest.
A scar that cannot name its check is rejected by format.

Routing line: `For <task>, read <path>.`

New lazy doc: create the file and its root routing line in one commit; the file opens with a `Read when:` line.

## Commit rule

Any commit that adds instruction lines names the failure the addition prevents in its message.

## Content classes

Instruction tiers are permanent law.
`HANDOFF.md` and `ROADMAP.md` are cyclical session-state, overwritten by design; a scar parked there dies at the next save.
Design documents are reference material: they may stay unrouted, and the one-hop rule binds agent-instruction docs only.

## Adjacent artifacts

README serves human visitors; update it in the same PR that ships or removes a user-facing capability; `AGENTS.md` stays authoritative for commands.
CHANGELOG, where the repo keeps one, is generated from commit messages at release time and never hand-edited.
Version identity is derived, never hand-bumped: commit count as build number, plus short SHA and a dirty flag; an operator-owned era label is the only hand-set part.

## The gate

`node scripts/check-agents-md.mjs` hard-fails only on mechanical truths: referenced `.md` paths that do not exist, and banned generic phrases.
Size is advisory: past the review thresholds it prints WARN lines prompting an audit and still exits 0.
It runs inside the repo's normal verification gate; a red gate blocks the change like any failing test.
