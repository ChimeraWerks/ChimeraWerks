<div align="center">

# Chimera Werks

<a href="https://chimerawerks.com"><img src="https://readme-typing-svg.demolab.com/?font=JetBrains+Mono&weight=500&size=22&duration=3500&pause=900&color=38BDF8&center=true&vCenter=true&width=640&height=55&lines=Local-first%20AI%20infrastructure;Three%20DGX%20Sparks%20and%20a%20lot%20of%20ideas;Finance%20director%20by%20day%2C%20builder%20by%20night" alt="Things I build" /></a>

[![Website](https://img.shields.io/badge/Website-chimerawerks.com-0EA5E9?style=for-the-badge&logo=googlechrome&logoColor=white)](https://chimerawerks.com) [![Email](https://img.shields.io/badge/Email-hello@chimerawerks.com-334155?style=for-the-badge&logo=gmail&logoColor=white)](mailto:hello@chimerawerks.com)

</div>

---

### Hey, I'm the person behind Chimera Werks

A chimera is one animal built from parts that shouldn't go together, which is roughly my career.

My day job is finance director: budgets, forecasts, and numbers that have to be right the first time. Everything else goes into building AI systems, which is the part I'd happily do for free.

Most of it runs on hardware on my desk, because I'd rather not trust someone else's cloud to remember my work for me.

## What I'm building

### 🍳 [sparkKitchen](https://github.com/ChimeraWerks/sparkKitchen)

*Plan, serve and watch AI models on your NVIDIA DGX Spark and GB10 cluster.*

<img src="assets/dgx-spark-cutaway.png" width="380" align="right" alt="sparkKitchen 3D lab: cutaway of a DGX Spark with live heat and airflow simulation">

I run three DGX Sparks, and sparkKitchen is the dashboard I built to keep an eye on them. It lives on your desktop, checks in on every node over SSH, and never installs or changes anything on the cluster.

- Shows what's serving where, with live vLLM, SGLang and llama.cpp throughput, KV cache and latency.
- Works out how much memory a model really needs, layer by layer from its architecture, before you try to load it.
- Tracks GPU clocks, temperatures, throttling and RDMA fabric traffic every second, with two weeks of history.
- Notices when a running container has drifted from the recipe you wrote for it.
- Ranks new models by whether they'll actually fit on your nodes.
- Includes a 3D model of the Spark with a live heat and airflow simulation. That's it on the right.

Open source under Apache-2.0.

<br clear="right">

### ⛩️ Shikigami

*One daemon that lets any AI harness drive any other.*

<img src="assets/shikigami.svg" width="100%" alt="Claude Desktop, Codex Desktop, Hermes, Antigravity and DeepSeek Harness on both sides of the Shikigami daemon. Solid lines carry prompts in, dashed lines carry replies back, so any app can drive any other.">

Shikigami runs a resident daemon with a single MCP surface registered in every harness I use, so an agent in one app can open a session in another, send it a prompt, watch it work and bring the answer back. Any app can be the caller or the target.

It drives the real, headed desktop apps rather than headless terminal sessions. Every turn plays out in a window you can watch, and each app keeps its desktop-only features: artifacts, previews, attachments and its own tools. Every call has a named owner, every reply is saved with a hash, and nothing ever closes the app you're working in.

**private · running daily**

### 🎬 Chimera Studio

*My full pipeline for image and video generation, and for keeping everything it makes organized.*

<p align="center"><img src="assets/chimera-studio-vault.jpg" width="620" alt="Chimera Studio Vault: a grid of generated videos with filters on the left and, on the right, the selected clip's sampler, seed, LoRAs, generation time, peak VRAM and per-node timings"></p>

- **Vault**: scans every folder of generated media, pulls the workflow, prompt and model out of each file, and makes years of output searchable and taggable.
- **Image and video workbenches**: browse and run versioned ComfyUI workflows with the models, LoRAs and recipes they need, including MiniMax H3 video.
- **Custom node manager**: shows every installed node, where it came from and which workflows use it, and warns before an update breaks one.

**private · primary product · used every day**

## Stack I reach for

<table>
  <tr>
    <td><b>Languages</b></td>
    <td><img src="https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white" alt="Python"> <img src="https://img.shields.io/badge/TypeScript-3178C6?style=for-the-badge&logo=typescript&logoColor=white" alt="TypeScript"> <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black" alt="JavaScript"> <img src="https://img.shields.io/badge/PowerShell-5391FE?style=for-the-badge&logo=gnometerminal&logoColor=white" alt="PowerShell"></td>
  </tr>
  <tr>
    <td><b>Apps</b></td>
    <td><img src="https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB" alt="React"> <img src="https://img.shields.io/badge/Vite-646CFF?style=for-the-badge&logo=vite&logoColor=white" alt="Vite"> <img src="https://img.shields.io/badge/FastAPI-009688?style=for-the-badge&logo=fastapi&logoColor=white" alt="FastAPI"> <img src="https://img.shields.io/badge/Node.js-339933?style=for-the-badge&logo=nodedotjs&logoColor=white" alt="Node.js"> <img src="https://img.shields.io/badge/three.js-000000?style=for-the-badge&logo=threedotjs&logoColor=white" alt="three.js"> <img src="https://img.shields.io/badge/Playwright-2EAD33?style=for-the-badge" alt="Playwright"></td>
  </tr>
  <tr>
    <td><b>AI & agents</b></td>
    <td><img src="https://img.shields.io/badge/Claude-D97757?style=for-the-badge&logo=anthropic&logoColor=white" alt="Claude"> <img src="https://img.shields.io/badge/Codex-412991?style=for-the-badge&logo=openai&logoColor=white" alt="Codex"> <img src="https://img.shields.io/badge/Gemini-8E75B2?style=for-the-badge&logo=googlegemini&logoColor=white" alt="Gemini"> <img src="https://img.shields.io/badge/MCP-1E293B?style=for-the-badge" alt="MCP"> <img src="https://img.shields.io/badge/ComfyUI-1E293B?style=for-the-badge" alt="ComfyUI"> <img src="https://img.shields.io/badge/Hugging%20Face-FFD21E?style=for-the-badge&logo=huggingface&logoColor=black" alt="Hugging Face"></td>
  </tr>
  <tr>
    <td><b>Inference</b></td>
    <td><img src="https://img.shields.io/badge/vLLM-30A2FF?style=for-the-badge" alt="vLLM"> <img src="https://img.shields.io/badge/SGLang-1E293B?style=for-the-badge" alt="SGLang"> <img src="https://img.shields.io/badge/llama.cpp-1E293B?style=for-the-badge" alt="llama.cpp"> <img src="https://img.shields.io/badge/PyTorch-EE4C2C?style=for-the-badge&logo=pytorch&logoColor=white" alt="PyTorch"></td>
  </tr>
  <tr>
    <td><b>Hardware</b></td>
    <td><img src="https://img.shields.io/badge/DGX%20Spark-76B900?style=for-the-badge&logo=nvidia&logoColor=white" alt="DGX Spark"> <img src="https://img.shields.io/badge/CUDA-76B900?style=for-the-badge&logo=nvidia&logoColor=white" alt="CUDA"> <img src="https://img.shields.io/badge/RTX%205090-76B900?style=for-the-badge&logo=nvidia&logoColor=white" alt="RTX 5090"></td>
  </tr>
  <tr>
    <td><b>Infra</b></td>
    <td><img src="https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white" alt="Docker"> <img src="https://img.shields.io/badge/uv-DE5FE9?style=for-the-badge&logo=uv&logoColor=white" alt="uv"> <img src="https://img.shields.io/badge/SQLite-003B57?style=for-the-badge&logo=sqlite&logoColor=white" alt="SQLite"> <img src="https://img.shields.io/badge/GitHub%20Actions-2088FF?style=for-the-badge&logo=githubactions&logoColor=white" alt="GitHub Actions"> <img src="https://img.shields.io/badge/Cloudflare-F38020?style=for-the-badge&logo=cloudflare&logoColor=white" alt="Cloudflare"> <img src="https://img.shields.io/badge/Passkeys-1E293B?style=for-the-badge" alt="Passkeys"></td>
  </tr>
</table>

---

<div align="center">

Say hi: **[hello@chimerawerks.com](mailto:hello@chimerawerks.com)**

<sub>Three heads, two hands, one very patient keyboard.</sub>

</div>
