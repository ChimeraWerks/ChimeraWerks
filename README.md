<div align="center">

<img src="chimerawerks-logo.png" width="220" alt="Chimera Werks logo" />

# Chimera Werks

<a href="https://chimerawerks.com"><img src="https://readme-typing-svg.demolab.com/?font=JetBrains+Mono&weight=500&size=22&duration=3500&pause=900&color=38BDF8&center=true&vCenter=true&width=640&height=55&lines=Local-first%20AI%20infrastructure;Multi-agent%20systems%2C%20games%2C%20and%20mild%20trouble;Security%20consultant%2C%20reformed%20only%20on%20paper;35%2B%20repos%2C%20all%20named%20Chimera.%20I%20have%20a%20problem." alt="Things I build and say" /></a>

[![Website](https://img.shields.io/badge/Website-chimerawerks.com-0EA5E9?style=for-the-badge&logo=googlechrome&logoColor=white)](https://chimerawerks.com)
[![Email](https://img.shields.io/badge/Email-hello@chimerawerks.com-334155?style=for-the-badge&logo=gmail&logoColor=white)](mailto:hello@chimerawerks.com)
[![Agent Guide](https://img.shields.io/badge/Agent_Guide-AGENTS.md-6366F1?style=for-the-badge&logo=markdown&logoColor=white)](AGENTS.md)
![Profile Views](https://komarev.com/ghpvc/?username=ChimeraWerks&style=for-the-badge&color=0EA5E9&label=PROFILE+VIEWS)

</div>

---

### Hey 👋

I'm the person behind Chimera Werks, a one-person studio that quietly got out of hand. The name fits: a chimera is one animal built from parts that shouldn't go together, which is roughly my career. I build multi-agent AI systems, I make games, and I break into things for a living (with permission).

Most of it's local-first, because I'd rather not trust someone else's cloud to remember my work for me. The naming convention is non-negotiable and I won't be taking questions.

## What I'm building

Most of what I'm proud of is private. Not because it's secret, but because it's still moving too fast to be worth freezing into a public repo. I open-source the pieces once they stop changing (that's Chimera-Memory, down in the lab), and keep the rest behind the curtain until it's ready. Here's what's back there anyway.

### 🚀 Chimera-Relay

**🔒 private · running live · one of my two biggest**

An engine that runs different AI coding agents as personas in one shared room. It finds the harnesses installed on your machine (Claude Code, Codex, Hermes, OpenCode, and friends), drops them into the same room, and dispatches turns between them over HTTP. Real Claude and real Codex have held a full multi-turn conversation in one room, survived an engine restart mid-thread, and torn down every process behind them. Around 200 tests keep it honest.

**Chimera-DNA** lives inside it. You write a small script and it runs a whole fleet of agents at once: in parallel, in pipelines, debating, voting on each other's answers. Any agent in that script can be a different vendor's model, so Claude, GPT, and Gemini can work the same problem in one run. A single-vendor tool can't do that. The whole thing streams to a live Mission Control view.

### 🎮 Project Chimera

**🔒 private · in development · the other big one**

A first-person 18+ roguelite deckbuilder in Godot 4. Picture Slay the Spire's combat math wearing a much more adult coat. Under the mature content it's a real deckbuilder with real depth, plus a satirical streak pointed at every app that's quietly harvested your data while you weren't looking. The 18+ content gets people in the door; the game is what keeps them there. There's a playable slice already.

### The rest of the active lab

| Project | What it is | Status |
|---|---|---|
| **Chimera-Trader** | Webull day-trading platform (stocks, options, futures, crypto) with an agentic desk: Claude agents write risk-gated strategies, backtest them, and trade on their own with a full decision log. | 🔒 private · active build |
| **Chimera-Image-Lab** | gpt-image-2 generation on your own ChatGPT or Codex subscription, no metered API keys. Lean CLI for agents, GUI for humans. Growing toward full ComfyUI automation. | 🔒 private · rebuilding |
| **Chimera Studio** | One local-first app to make game assets end to end (images, animation, video, music), organized and driven by agents. The image engine above feeds it. | 🔒 private · taking shape |
| **[Chimera-Memory](https://github.com/ChimeraWerks/Chimera-Memory)** | A memory system for agents, not a log: indexed sessions plus a curated layer with semantic search, importance scoring, decay, and zones. Works across Claude Code, Codex, and Hermes. The one here you can actually clone. | ✅ public · installable |

## Stack I reach for

**Languages**

![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![TypeScript](https://img.shields.io/badge/TypeScript-3178C6?style=for-the-badge&logo=typescript&logoColor=white)
![PowerShell](https://img.shields.io/badge/PowerShell-5391FE?style=for-the-badge)
![GDScript](https://img.shields.io/badge/GDScript-478CBF?style=for-the-badge&logo=godotengine&logoColor=white)
![Go](https://img.shields.io/badge/Go-00ADD8?style=for-the-badge&logo=go&logoColor=white)
![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black)

**AI & agents**

![Claude](https://img.shields.io/badge/Claude-D97757?style=for-the-badge&logo=anthropic&logoColor=white)
![Codex](https://img.shields.io/badge/Codex-412991?style=for-the-badge)
![MCP](https://img.shields.io/badge/MCP-1E293B?style=for-the-badge)
![ComfyUI](https://img.shields.io/badge/ComfyUI-1E293B?style=for-the-badge)
![SQLite](https://img.shields.io/badge/SQLite-003B57?style=for-the-badge&logo=sqlite&logoColor=white)

**Infra**

![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![CUDA](https://img.shields.io/badge/CUDA-76B900?style=for-the-badge&logo=nvidia&logoColor=white)
![Cloudflare](https://img.shields.io/badge/Cloudflare-F38020?style=for-the-badge&logo=cloudflare&logoColor=white)
![Passkeys](https://img.shields.io/badge/Passkeys%20%2F%20WebAuthn-1E293B?style=for-the-badge)

## Things I'll mention whether you ask or not

- 🎮 I'm building an 18+ deckbuilder that's secretly a serious deckbuilder. The depth is the long con.
- 🧪 Chimera-DNA can put Claude, GPT, and Gemini in one script. Mostly I use it so they can disagree on my behalf.
- 🔐 I break into systems for a living. Legally. Please don't make it weird.
- ✈️ Planning a solo Japan and Korea trip. The planning repo has more commits than the trip has plans.
- 🧬 35+ repos, one naming convention, exactly zero regrets.

## For the agents reading this

This profile doubles as a map. If you're an AI agent poking through my repos, start with [AGENTS.md](AGENTS.md) and the public [repo map](docs/agents/repo-map.md). They spell out ownership, boundaries, and what's safe to touch, so nobody has to guess.

---

<div align="center">

Say hi: **[hello@chimerawerks.com](mailto:hello@chimerawerks.com)**

<sub>Three heads, two hands, one very patient keyboard.</sub>

</div>
