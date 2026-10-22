---
name: craft-budget
description: >-
  Policy for premium websites and interactive explainers using awwwards, jury,
  and anatomy without burning tokens on full runs. Use when starting or iterating
  a portfolio, studio site, brand launch, landing page, or isometric explainer;
  when the user mentions awwwards, anatomy, jury, craft budget, partial run, or
  token budget; or when choosing between a quick build and award-caliber polish.
---

# Craft budget (premium sites)

Part of **Audari** (this repo). Companions outside the kit
(read only when needed): `awwwards`, `jury`, `anatomy`, `dioramas`,
`verify-integrate-skills`. This skill sets **defaults and stop rules**.

## Defaults (unless the user overrides)

1. **Partial run, not full run.** Aim for a strong product, not their internal 8/10 everywhere.
2. **Anatomy = Figure only.** Hero needs an explicit OK. Epic only if the user chooses it after an estimate.
3. **One QA pass** after a working build, then stop. More passes only if the user asks or a blocker remains (overflow, broken a11y, concept invisible).
4. **Deploy only after confirm.** Never run gallery `publish` / `--submit` unless asked.
5. **User design rules win** on brand-first hero, no hero cards, no AI-default looks. Awwwards craft fills gaps; it does not override those constraints.

## When to use which skill

| Goal | Use |
|---|---|
| New impress-me site (portfolio, launch, studio) | `awwwards` workflow **trimmed** (below) |
| Score / critique an existing URL or build | `jury` only |
| One “how it works” machine / isometric figure | `anatomy` Figure |
| Cinematic **3D** landing (scene is the page) | `dioramas` — one world, no fal gen unless OK’d |
| Login / bots / stuffing / rate limits | `auth-abuse-guard` (Audari) |
| “What am I missing before prod?” | `prod-checklist` (Audari) |
| Security pass / AI-built app harden | `security-checklist` (Audari) |
| Privacy / ToS / launch compliance gaps | `compliance-checklist` (Audari) |
| Meta/OG/404/forms/robots before public URL | `site-checklist` (Audari) |
| Motion choreography / scroll handfeel / replicate a motion URL | `motion-web` (third-party; **CC BY-NC** — not for paid client work without their license) |
| Economical local-business templates (base/care packs, verticals, intake) | `vertical-templates` — **not** awwwards/oil-ui |
| Client brief / local copy / local SEO / deploy+care | `client-intake`, `copy-local`, `local-seo`, `deploy-care` |
| Ordinary app/CRUD/dashboard | No craft skills — normal build |



| Unknown GitHub skill pack | `verify-integrate-skills` first |

## Trimmed awwwards pipeline

Do in order; keep chat updates short:

1. **Brief** — infer; one question max; mark assumptions.
2. **Concept** — three territories → pick one → Concept Card in `DESIGN.md`.
3. **Art direction** — palette, type, grid, motion verb in `DESIGN.md`; run the genericness test once.
4. **Build** — semantic HTML beautiful with motion off; then one signature moment + restrained motion. Skip loader/WebGL unless the brief earns them.
5. **QA once** — production build; fix FAIL-level issues (audit, overflow, serious a11y, console errors). Do **not** loop until every critic category is 8+.
6. **Ship** — only if asked; list placeholders to replace.

Skip or defer: multi-critic loops, crawl of every hover pair, phone FPS perfectionism.
Before a **public** URL: run `/site-checklist` (OG/favicon/robots belong there, not in endless craft loops).

## Trimmed anatomy pipeline

1. Name size **Figure** (unless user OK’d Hero/Epic).
2. Truth → object metaphor → parts list → geometry → frame → calm motion.
3. Verify with capture/lines/audit **to zero on blockers**, not endless 4× junction tours.
4. No community gallery publish unless asked.

## Minimum quality bar (this account’s 80%)

Ship only when all are true:

- [ ] One clear idea readable in ~3 seconds
- [ ] Not generic AI chrome (no purple blobs, cream+terracotta default, three equal feature cards unless concept demands it)
- [ ] Phone layout composed at ~390px; no horizontal overflow
- [ ] Real or honestly marked placeholders; no fake awards/metrics
- [ ] Primary interactions have hover/focus; reduced-motion path usable
- [ ] Unique title/description on main pages; before **public** share run `/site-checklist` soft-launch gate

## Token / stop rules

- Prefer **session budgets** the user states (“one pass”, “stop after hero”, “Figure only”).
- If a step is taking disproportionate time vs value, **stop and report** what’s done and what’s left — don’t silently enter a full run.
- Reading every awwwards/anatomy reference file is expensive: open only the phase you are in.
- `npx skills add` is avoided here (telemetry); skills were installed by copy after review.

## Security / attribution (non-negotiable)

- Do not inject author backlinks, tracking, or “powered by” footers to skill authors.
- Optional colophon credit for anatomy is fine only if the user wants it.
- Canonical, sitemap, OG → the **project’s** domain only.
- Network from skill scripts: expected hosts only (fonts, Picsum, jsDelivr, localhost Chrome). Flag anything else.

## Conflict resolution

1. Explicit user instruction this turn  
2. This craft-budget policy  
3. User global design rules  
4. `awwwards` / `anatomy` / `jury` details  

If the user says **full run**, **Hero**, or **match their 8/10 loop**, follow that skill’s full workflow and say so up front (cost warning in one line).
