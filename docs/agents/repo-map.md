# Chimera Repo Map

This is the canonical map for this repository. It is meant to help humans and agents understand what exists, what each repo does, and why it exists before they make changes.

Snapshot date: 2026-05-25

## Source Labels

| Label | Meaning |
|---|---|
| `live_github` | Read from GitHub organization metadata during the snapshot. |
| `local_readme` | Read from an available local checkout README during the snapshot. |
| `user_supplied` | Stated by the user in this setup request or existing repo profile text. |
| `inferred` | Conservative interpretation from names, descriptions, or nearby repo context. |
| `fallback` | Placeholder where the map needs a better source. |

Use these labels when updating repo entries. Do not silently promote an inference into fact.

## Canonical GitHub Organization Repos

| Repo | Status | Visibility | Purpose | Why It Exists | Provenance |
|---|---|---|---|---|---|
| [`ChimeraWerks`](https://github.com/ChimeraWerks/ChimeraWerks) | active | public | GitHub profile and ecosystem map | Gives humans and agents one front door into Chimera Werks. | `live_github`, `user_supplied` |
| [`Chimera-Registry`](https://github.com/ChimeraWerks/Chimera-Registry) | active | private | Private operational registry | Centralizes ports, APIs, MCPs, connectors, skills, commands, web surfaces, and secret-location pointers across Chimera repos. | `live_github`, `user_supplied` |
| [`ChimeraWerks.com`](https://github.com/ChimeraWerks/ChimeraWerks.com) | active | public | Public website landing page | Presents the studio outside GitHub. | `live_github` |
| [`ChimeraStudio`](https://github.com/ChimeraWerks/ChimeraStudio) | active | private | Local-first AI media platform for images, video, audio, and workflow metadata | Solves the "after generation" problem: search, filter, preserve, and reuse large creative output libraries. | `live_github`, `local_readme`, `user_supplied` |
| [`ChimeraImageLab`](https://github.com/ChimeraWerks/ChimeraImageLab) | active | private | Image generation, review, packaging, and publishing operating workflow | Makes image production repeatable, inspectable, and agent-operable. | `live_github`, `local_readme` |
| [`SillyTavern-ComfyUI-Immersion`](https://github.com/ChimeraWerks/SillyTavern-ComfyUI-Immersion) | active | private | SillyTavern extension for local ComfyUI image generation | Lets chat and character workflows call controlled local image-generation workflows. | `live_github`, `local_readme` |
| [`LTX-Desktop`](https://github.com/ChimeraWerks/LTX-Desktop) | active | public | Desktop app for generating videos with LTX models | Makes local video generation easier to install, run, and operate. | `live_github` |
| [`audio-adversarial-toolkit`](https://github.com/ChimeraWerks/audio-adversarial-toolkit) | active | public | CLI for testing adversarial audio changes against detection systems | Supports robustness testing and hardening of audio fingerprinting/copyright-detection systems. | `live_github`, `local_readme` |
| [`ChimeraGPT`](https://github.com/ChimeraWerks/ChimeraGPT) | active | private | ChatGPT Apps SDK and MCP-backed task queue | Lets Chimera apps, Codex sessions, ChatGPT conversations, and user-facing controls offload research and analysis to ChatGPT through supported tools. | `live_github`, `local_readme` |
| [`Chimera-Memory`](https://github.com/ChimeraWerks/Chimera-Memory) | active | public | MCP memory server for transcript indexing and curated memory | Gives agents queryable recall across sessions without depending on a single harness. | `live_github`, `local_readme` |
| [`Chimera-Library`](https://github.com/ChimeraWerks/Chimera-Library) | active | private | Source of truth for Chimera skills, records, packs, and instruction assets | Keeps agent knowledge portable across Claude Code, Codex, Hermes, Antigravity CLI, and future runtimes. | `live_github`, `local_readme` |
| [`Chimera-Research`](https://github.com/ChimeraWerks/Chimera-Research) | active | private | Local-first research pipeline lab | Prefers local search, browser-backed collection, deterministic extraction, and small evidence packs before LLM analysis. | `live_github`, `local_readme` |
| [`Chimera-Lock`](https://github.com/ChimeraWerks/Chimera-Lock) | active | private | Shared passkey/WebAuthn authentication gate | Gives Chimera web-facing apps one reusable auth boundary instead of each app inventing its own. | `live_github`, `local_readme` |
| [`ChimeraPersonas`](https://github.com/ChimeraWerks/ChimeraPersonas) | active | private | Persistent persona runtime with identity, memory, curiosity, and autonomy systems | Runs AI teammates as long-lived people-shaped agents rather than disposable assistants. | `live_github`, `local_readme` |
| [`PersonifyAgents`](https://github.com/ChimeraWerks/PersonifyAgents) | active | private | Platform for personifying agents with identity, voice, memory, embodiment, and autonomy | Provides a reusable layer for turning agents into coherent teammates. | `live_github`, `local_readme` |
| [`ChimeraAgency`](https://github.com/ChimeraWerks/ChimeraAgency) | active | private | Earlier autonomous AI development team architecture | Preserves older multi-agent team context and may overlap with `ChimeraPersonas`. Audit before changing. | `live_github`, `local_readme` |
| [`ChimeraCLI`](https://github.com/ChimeraWerks/ChimeraCLI) | active | private | Web-based multi-window Claude Code terminal | Provides a browser cockpit for CLI-based agent work. | `live_github` |
| [`Chimera-Game-Studio`](https://github.com/ChimeraWerks/Chimera-Game-Studio) | active | private | Game-focused Chimera workspace | Needs follow-up audit; current GitHub metadata has no description. | `live_github`, `fallback` |
| [`ProjectChimera`](https://github.com/ChimeraWerks/ProjectChimera) | active | private | Godot game project | Explores interactive systems, game UI, and narrative/gameplay tooling. Keep sensitive content details out of public profile docs. | `live_github`, `local_readme` |
| [`ChimeraTrader`](https://github.com/ChimeraWerks/ChimeraTrader) | active | private | Professional trading application powered by Webull OpenAPI | Experiments with market data, streaming, automation, backtesting, and trading workflows. | `live_github`, `local_readme` |
| [`ChimeraBreach`](https://github.com/ChimeraWerks/ChimeraBreach) | active | private | Penetration-testing knowledge base and methodology docs | Keeps security methodology, tool references, and research organized. Avoid operational exploit detail in this public map. | `live_github` |
| [`Patched`](https://github.com/ChimeraWerks/Patched) | active | private | Locally patched extensions and tools | Holds modified tools for local experimentation. Treat as high-risk and avoid public operational details. | `live_github` |
| [`ai.accelerators`](https://github.com/ChimeraWerks/ai.accelerators) | active | public | Accelerators for Python environments | Shares reusable environment/performance helpers. | `live_github` |
| [`2026-Japan`](https://github.com/ChimeraWerks/2026-Japan) | active | private | Japan and Korea trip planning workspace | Personal planning repo in the org; not part of the core Chimera product architecture. | `live_github` |
| [`cyberpunk-chimerawerks`](https://github.com/ChimeraWerks/cyberpunk-chimerawerks) | active | private | Experimental themed web project | Brand/design exploration; needs follow-up audit before presenting as official surface. | `live_github`, `local_readme` |
| [`ChimeraUI`](https://github.com/ChimeraWerks/ChimeraUI) | archived | private | Archived UI work | Preserves previous interface experiments. A local checkout may have diverged, so audit before relying on it. | `live_github`, `local_readme` |
| [`ChimeraQuant`](https://github.com/ChimeraWerks/ChimeraQuant) | archived | public | Unified model quantization workbench | Preserves earlier work around profiling, quantizing, auditing, and exporting models. | `live_github` |
| [`Music`](https://github.com/ChimeraWerks/Music) | archived | private | Music creation techniques archive | Preserves technique notes; not part of the active product map. | `live_github` |

## Local-Adjacent Checkouts

These were visible as local or adjacent checkouts during the snapshot, but they are not canonical `ChimeraWerks` organization repos unless the remote says so. Treat them as references or aliases until confirmed.

| Checkout | Relationship | Purpose | Guidance | Provenance |
|---|---|---|---|---|
| `Chimera-Browser` | External remote | Camoufox/browser automation related checkout | Reference only; do not document as a Chimera-owned repo without confirmation. | `local_readme` |
| `Chimera-Codex` | Local checkout, no origin detected | Codex app/wrapper related workspace | Needs owner confirmation before adding to the canonical map. | `local_readme`, `fallback` |
| `Chimera-Hermes-Patches` | Local checkout, no origin detected | Local Hermes patch overlay | Useful for Hermes context, but not a GitHub org repo in the snapshot. | `local_readme` |
| `ChimeraGPT-Automation` | Local checkout, no origin detected | ChatGPT web app and Discord consult bridge automation | Keep separate from canonical `ChimeraGPT` until remote ownership is clear. | `local_readme` |
| `ChimeraSkills` | Alias checkout for `Chimera-Library` | Older/local name for the skills/library repo | Treat `Chimera-Library` as canonical. | `local_readme` |
| `ProjectChimera-integration-clean` | Duplicate checkout for `ProjectChimera` | Integration/cleanup workspace | Treat `ProjectChimera` as canonical. | `local_readme` |
| `CLIProxyAPI` | External remote | OpenAI/Gemini/Claude/Codex compatible CLI proxy server | Adjacent dependency/reference, not Chimera-owned in the snapshot. | `local_readme` |
| `hermes-agent` | External remote | Upstream Hermes Agent | Reference for Chimera/Hermes work, not Chimera-owned. | `local_readme` |
| `hermes-desktop` | External remote | Desktop UI for Hermes Agent | Reference for desktop/Hermes work, not Chimera-owned. | `local_readme` |
| `OB1` | External remote | Thinking/memory infrastructure project | Adjacent memory/protocol reference, not Chimera-owned. | `local_readme` |
| `Open-Design` | External remote | Design tooling project | Adjacent UI/design reference, not Chimera-owned. | `local_readme` |
| `PewMetrics` | Local checkout, no origin/readme detected | Unknown | Needs owner confirmation before inclusion. | `fallback` |

Backup, archive, and duplicate folders are intentionally omitted from the canonical map unless they have a distinct GitHub repo identity.

## Relationships To Remember

| Relationship | Notes |
|---|---|
| `ChimeraStudio` is the flagship creative-media product. | It anchors the "metadata after generation" studio thesis. |
| `Chimera-Registry` is the private operational map. | Keep ports, APIs, MCPs, connectors, skills, commands, web surfaces, and secret-location pointers there instead of in this public profile repo. |
| `Chimera-Memory`, `Chimera-Library`, `Chimera-Research`, and `ChimeraGPT` form the agent infrastructure layer. | Memory, skills, research, and task queue should be described consistently across docs. |
| `ChimeraPersonas`, `PersonifyAgents`, and `ChimeraAgency` overlap conceptually. | Audit current ownership before moving concepts between them. |
| `Chimera-Lock` is a shared boundary component. | Treat auth/security claims conservatively and read repo-specific docs before implementation. |
| Archived repos are historical context. | Do not revive them from this map without checking their own repo state. |

## Update Process

1. Refresh GitHub organization metadata using the command in `docs/agents/commands.md`.
2. Check current local README/package metadata only for repos relevant to the change.
3. Update status, visibility, purpose, "why", and provenance together.
4. Keep uncertain entries marked as `fallback` or `inferred`.
5. Re-run docs validation from `docs/agents/validation.md`.
