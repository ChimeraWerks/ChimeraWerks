<p align="center">
  <img src="chimerawerks-logo.png" alt="Chimera Werks" width="220" />
</p>

<h1 align="center">Chimera Werks</h1>

<p align="center">
  <strong>Local-first AI infrastructure for creative media, agent memory, and autonomous workflows.</strong>
</p>

<p align="center">
  <a href="https://chimerawerks.com">Website</a>
  &nbsp;|&nbsp;
  <a href="mailto:hello@chimerawerks.com">Contact</a>
  &nbsp;|&nbsp;
  <a href="AGENTS.md">Agent Guide</a>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/local--first-systems-111827?style=flat-square" alt="local-first systems" />
  <img src="https://img.shields.io/badge/structured-metadata-334155?style=flat-square" alt="structured metadata" />
  <img src="https://img.shields.io/badge/agent-memory-3f3f46?style=flat-square" alt="agent memory" />
  <img src="https://img.shields.io/badge/creative-infrastructure-0f766e?style=flat-square" alt="creative infrastructure" />
</p>

---

## Studio

Chimera Werks builds tools for the moment when AI work stops being a prompt and becomes a library, a workflow, a memory system, and eventually an operating environment.

Most generation tools optimize for the next output. We focus on everything after that: finding the thing you made, preserving how it was made, turning metadata into something searchable, and giving humans and agents enough context to keep moving.

We work across four connected layers:

| Layer | What it means |
|---|---|
| Creative media systems | Local-first tools for browsing, indexing, generating, and reusing AI media. |
| Agent infrastructure | Memory, skills, research, queues, and operating maps for long-running AI work. |
| Private registries | Ports, services, APIs, MCPs, connectors, commands, and internal surfaces kept organized without leaking secrets. |
| Human-grade interfaces | Fast, legible tools designed for people doing real work at scale. |

## Flagship

### Chimera Studio

A local-first media platform for large AI creative libraries.

Chimera Studio extracts, decomposes, and indexes workflow metadata from AI-generated images, video, and audio, then serves it through a fast browser UI. It is built around the belief that prompts, models, LoRAs, samplers, seeds, schedulers, node graphs, and sidecar metadata should be queryable fields, not mystery blobs buried in files.

The current product is private while it is still evolving, but it anchors the studio thesis: creative momentum depends on being able to find, understand, and reuse what you have already made.

## Public Work

| Project | What it is | Built for |
|---|---|---|
| [`Chimera-Memory`](https://github.com/ChimeraWerks/Chimera-Memory) | MCP memory server for transcript indexing and curated recall | Agents that need queryable session memory |
| [`LTX-Desktop`](https://github.com/ChimeraWerks/LTX-Desktop) | Desktop app for generating videos with LTX models | Local video generation workflows |
| [`audio-adversarial-toolkit`](https://github.com/ChimeraWerks/audio-adversarial-toolkit) | CLI for adversarial audio robustness testing | Audio fingerprinting and copyright-detection research |
| [`ai.accelerators`](https://github.com/ChimeraWerks/ai.accelerators) | Python environment accelerators | Faster local AI setup |
| [`ChimeraQuant`](https://github.com/ChimeraWerks/ChimeraQuant) | Archived model quantization workbench | Earlier quantization research |
| [`ChimeraWerks.com`](https://github.com/ChimeraWerks/ChimeraWerks.com) | Public site | Studio presence |

## Private Lab

Much of the active Chimera ecosystem is private because it contains operational details, unfinished product systems, security-sensitive infrastructure, or personal workflow context.

Current private work includes:

- **Chimera Studio** for AI media libraries and metadata decomposition.
- **ChimeraGPT** for ChatGPT Apps SDK and MCP-backed task queues.
- **Chimera Library** for shared skills, playbooks, and agent instruction assets.
- **Chimera Research** for local-first research pipelines and evidence packs.
- **Chimera Personas** and **PersonifyAgents** for persistent, person-shaped AI teammates.
- **Chimera Lock** for shared passkey/WebAuthn access boundaries.
- **Chimera Registry** for private operational maps across repos, ports, APIs, MCPs, connectors, skills, commands, and web surfaces.

## Principles

- **Local-first when it matters.** Creative libraries, memory, and operational context should not require a cloud round trip to stay useful.
- **Metadata is product surface.** If a field helps you find, compare, rebuild, or understand an artifact, it deserves structure.
- **Agents need maps.** Autonomous work gets safer when repos explain ownership, boundaries, commands, and validation.
- **Speed is a feature.** Interfaces should keep up with the pace of creative and agent-assisted work.
- **Private does not mean careless.** Internal registries can hold sensitive maps, but raw secrets belong in secret stores, not git.

## For Agents

This profile repo also acts as a public, sanitized navigation point for future agents.

- Start with [`AGENTS.md`](AGENTS.md).
- Use [`docs/agents/repo-map.md`](docs/agents/repo-map.md) for the public ecosystem map.
- Use the private `Chimera-Registry` repo for operational details when you have access.

---

<p align="center">
  <a href="mailto:hello@chimerawerks.com"><strong>hello@chimerawerks.com</strong></a>
</p>

<p align="center">
  <sub>Chimera Werks - 2026</sub>
</p>
