<div align="center">

<img src="assets/chimerawerks-mark.png" width="110" alt="Chimera Werks logo: a lion, a goat with a terminal prompt in its eye, and a serpent, woven into one creature">

# Chimera Werks

**Local-first AI infrastructure, built on hardware on my desk.**

<a href="https://chimerawerks.com"><img src="https://readme-typing-svg.demolab.com/?font=JetBrains+Mono&weight=500&size=22&duration=3500&pause=900&color=38BDF8&center=true&vCenter=true&width=640&height=55&lines=Local-first%20AI%20infrastructure;Three%20DGX%20Sparks%20and%20a%20lot%20of%20ideas;Finance%20director%20by%20day%2C%20builder%20by%20night" alt="Local-first AI infrastructure. Three DGX Sparks and a lot of ideas. Finance director by day, builder by night." /></a>

[![Website](https://img.shields.io/badge/Website-chimerawerks.com-0EA5E9?style=for-the-badge&logo=googlechrome&logoColor=white)](https://chimerawerks.com) [![Email](https://img.shields.io/badge/Email-hello@chimerawerks.com-334155?style=for-the-badge&logo=gmail&logoColor=white)](mailto:hello@chimerawerks.com)

</div>

---

### Hey, I'm the person behind Chimera Werks

A chimera is one animal built from parts that shouldn't go together, which is roughly my career.

My day job is finance director: budgets, forecasts, and numbers that have to be right the first time. Everything else goes into building AI systems, which is the part I'd happily do for free.

Most of it runs on hardware on my desk, because I'd rather not trust someone else's cloud to remember my work for me.

## What I'm building

<a href="https://github.com/ChimeraWerks/sparkKitchen"><img src="assets/sparkkitchen-banner.webp" width="100%" alt="sparkKitchen"></a>

*Plan, serve and watch AI models on your NVIDIA DGX Spark and GB10 cluster.*

<sub><b>Alpha · open source under Apache-2.0</b></sub>

<picture><source media="(prefers-reduced-motion: reduce)" srcset="assets/sparkkitchen-3d-lab.jpg"><img src="assets/sparkkitchen-3d-lab.webp" width="100%" alt="sparkKitchen 3D lab: the solved exhaust plume leaving a DGX Spark, the see-through case with its airflow, thermal vision of the exploded parts, and an air speed slice through the blowers"></picture>

I run three DGX Sparks, and sparkKitchen is the dashboard I built to keep an eye on them.

- **Hands off the cluster**: it lives on your desktop, checks in on every node over SSH, and never starts, stops or reconfigures anything there.
- **Serving**: what's running where, with live vLLM, SGLang and llama.cpp throughput, KV cache and latency.
- **Memory**: how much a model really needs, layer by layer from its architecture, before you try to load it.
- **Sensors**: GPU clocks, temperatures, throttling and RDMA fabric traffic every second, with two weeks of history.
- **Recipes and models**: flags a container that has drifted from its recipe, and ranks new models by whether they'll fit.
- **3D lab**: a model of the Spark with a live heat and airflow simulation. That's it above.

<img src="assets/shikigami-banner.webp" width="100%" alt="Shikigami: send, watch, return">

*One daemon that lets any AI harness drive any other.*

<sub><b>Running daily · public release coming soon</b></sub>

<img src="assets/shikigami-summoning.webp" width="100%" alt="Ink-wash illustration: a robed onmyoji at a low desk releases white paper spirits toward five floating app windows; some spirits fly back carrying sealed scrolls">

Shikigami runs a resident daemon with a single MCP surface, registered in every harness I use: Claude Desktop, Codex Desktop, Hermes, Antigravity and DeepSeek Harness.

- **Any app drives any other**: an agent in one app opens a session in another, sends it a prompt, watches it work and brings the answer back. Any app can be the caller or the target.
- **Real desktop apps**: every turn plays out in a window you can watch, not a headless terminal session.
- **Nothing lost**: each app keeps its desktop-only features, such as artifacts, previews, attachments and its own tools.
- **Accountable**: every call has a named owner, every reply is saved with a hash, and nothing ever closes the app you're working in.

<img src="assets/chimera-studio-banner.webp" width="100%" alt="Chimera Studio: generate, organize, recall">

*My full pipeline for image and video generation, and for keeping everything it makes organized.*

<sub><b>Primary product · used every day · public release coming soon</b></sub>

<img src="assets/chimera-studio-vault.jpg" width="100%" alt="Chimera Studio Vault: a grid of generated videos with filters on the left and, on the right, the selected clip's sampler, seed, LoRAs, generation time, peak VRAM and per-node timings">

- **Vault**: scans every folder of generated media, pulls the workflow, prompt and model out of each file, and makes years of output searchable and taggable.
- **Image and video workbenches**: browse and run versioned ComfyUI workflows with the models, LoRAs and recipes they need, including MiniMax H3 video.
- **Custom node manager**: shows every installed node, where it came from and which workflows use it, and warns before an update breaks one.

## Stack I reach for

<table>
  <tr>
    <td><b>Languages</b></td>
    <td><img src="https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white" alt="Python"> <img src="https://img.shields.io/badge/TypeScript-3178C6?style=flat-square&logo=typescript&logoColor=white" alt="TypeScript"> <img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=flat-square&logo=javascript&logoColor=black" alt="JavaScript"> <img src="https://img.shields.io/badge/PowerShell-5391FE?style=flat-square&logo=gnometerminal&logoColor=white" alt="PowerShell"></td>
  </tr>
  <tr>
    <td><b>Apps</b></td>
    <td><img src="https://img.shields.io/badge/React-20232A?style=flat-square&logo=react&logoColor=61DAFB" alt="React"> <img src="https://img.shields.io/badge/Vite-646CFF?style=flat-square&logo=vite&logoColor=white" alt="Vite"> <img src="https://img.shields.io/badge/FastAPI-009688?style=flat-square&logo=fastapi&logoColor=white" alt="FastAPI"> <img src="https://img.shields.io/badge/Node.js-339933?style=flat-square&logo=nodedotjs&logoColor=white" alt="Node.js"> <img src="https://img.shields.io/badge/three.js-000000?style=flat-square&logo=threedotjs&logoColor=white" alt="three.js"> <img src="https://img.shields.io/badge/Playwright-2EAD33?style=flat-square" alt="Playwright"></td>
  </tr>
  <tr>
    <td><b>AI & agents</b></td>
    <td><img src="https://img.shields.io/badge/Claude-D97757?style=flat-square&logo=anthropic&logoColor=white" alt="Claude"> <img src="https://img.shields.io/badge/Codex-412991?style=flat-square&logo=openai&logoColor=white" alt="Codex"> <img src="https://img.shields.io/badge/Gemini-8E75B2?style=flat-square&logo=googlegemini&logoColor=white" alt="Gemini"> <img src="https://img.shields.io/badge/MCP-1E293B?style=flat-square" alt="MCP"> <img src="https://img.shields.io/badge/ComfyUI-1E293B?style=flat-square" alt="ComfyUI"> <img src="https://img.shields.io/badge/Hugging%20Face-FFD21E?style=flat-square&logo=huggingface&logoColor=black" alt="Hugging Face"></td>
  </tr>
  <tr>
    <td><b>Inference</b></td>
    <td><img src="https://img.shields.io/badge/vLLM-30A2FF?style=flat-square" alt="vLLM"> <img src="https://img.shields.io/badge/SGLang-1E293B?style=flat-square" alt="SGLang"> <img src="https://img.shields.io/badge/llama.cpp-1E293B?style=flat-square" alt="llama.cpp"> <img src="https://img.shields.io/badge/PyTorch-EE4C2C?style=flat-square&logo=pytorch&logoColor=white" alt="PyTorch"></td>
  </tr>
  <tr>
    <td><b>Hardware</b></td>
    <td><img src="https://img.shields.io/badge/DGX%20Spark-76B900?style=flat-square&logo=nvidia&logoColor=white" alt="DGX Spark"> <img src="https://img.shields.io/badge/CUDA-76B900?style=flat-square&logo=nvidia&logoColor=white" alt="CUDA"> <img src="https://img.shields.io/badge/RTX%205090-76B900?style=flat-square&logo=nvidia&logoColor=white" alt="RTX 5090"></td>
  </tr>
  <tr>
    <td><b>Infra</b></td>
    <td><img src="https://img.shields.io/badge/Docker-2496ED?style=flat-square&logo=docker&logoColor=white" alt="Docker"> <img src="https://img.shields.io/badge/uv-DE5FE9?style=flat-square&logo=uv&logoColor=white" alt="uv"> <img src="https://img.shields.io/badge/SQLite-003B57?style=flat-square&logo=sqlite&logoColor=white" alt="SQLite"> <img src="https://img.shields.io/badge/GitHub%20Actions-2088FF?style=flat-square&logo=githubactions&logoColor=white" alt="GitHub Actions"> <img src="https://img.shields.io/badge/Cloudflare-F38020?style=flat-square&logo=cloudflare&logoColor=white" alt="Cloudflare"> <img src="https://img.shields.io/badge/Passkeys-1E293B?style=flat-square" alt="Passkeys"></td>
  </tr>
</table>

---

<div align="center">

Say hi: **[hello@chimerawerks.com](mailto:hello@chimerawerks.com)**

<sub>Three heads, two hands, one very patient keyboard.</sub>

</div>
