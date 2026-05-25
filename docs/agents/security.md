# Security And Public-Surface Rules

## Public Repository Rule

Assume every committed file in this repo can become visible on GitHub. Keep the profile and agent docs useful without turning them into a dump of private implementation detail.

## Private Repo Detail

Private repo names and high-level purposes may appear in the map when needed for ecosystem navigation. Do not add:

- secrets, tokens, keys, credentials, cookies, or account identifiers
- raw local filesystem paths
- raw stderr/stdout from other repos
- private deployment URLs or tunnels
- sensitive implementation details from auth, security, browser, shell, filesystem, or agent-runtime code
- exploit steps, bypass recipes, or operational security procedures

## Source Labeling

Every non-obvious repo claim should be tied to a provenance label from `docs/agents/repo-map.md`. If the source is unclear, mark the claim as `fallback` or `inferred` and leave a follow-up note.

## Browser And Agent Surfaces

Never leak raw paths, commands, secrets, or private stderr to browser-facing docs. Summarize what happened and what to do next instead.

## Security-Sensitive Repos

For repos such as `Chimera-Lock`, `ChimeraBreach`, `Patched`, browser automation workspaces, and agent runtime infrastructure, keep this map at the "what and why" level. Read the target repo's own instructions before making or publishing detailed claims.
