# SemVer (default for products & template kits)

`MAJOR.MINOR.PATCH` (optionally `-beta.N`).

| Bump | When |
|---|---|
| **MAJOR** | Breaking: remove/rename public API, template IA incompatible with prior client forks, migration required |
| **MINOR** | Backward-compatible feature: new vertical, new optional section, additive API |
| **PATCH** | Bugfix, copy typo, dependency patch, docs |

## Pre-1.0

`0.y.z` — MINOR may still be rough; still write CHANGELOG. Prefer reaching `1.0.0` when first external client depends on stability.

## Monorepo

- Root version **or** per-package versions — pick one policy and stick to it  
- `audari-templates`: prefer **root kit version** + note which verticals changed in CHANGELOG  

## Not SemVer

- Marketing “Version 2026” alone — OK as **codename**, still keep SemVer underneath  
- Calendar versions (`2026.10.22`) — allowed if documented; don’t mix silently with SemVer  
