---
name: vertical-templates
description: >-
  Build and sell economical multi-vertical website templates for local businesses
  (studio offer packs): section blueprints per trade, client intake, local SEO
  (NAP/GBP/JSON-LD), base vs paid add-ons (forms, booking). Use for Audari-style
  base site + monthly care, “template per attività”, plumber/cafe/salon packs,
  or packaging integrations. Not for award/motion showcases — hand those to
  craft-budget / oil-ui / motion-web. Hands off chrome to site-checklist,
  legal pages to compliance-checklist.
disable-model-invocation: true
---

# Vertical templates (local business packs)

**Positioning:** curated, SEO-ready **templates per attività**, personalized lightly
per client — **not** spectacular portfolio craft. Default commercial frame
(fill amounts from the user’s rate card — never invent studio list prices):

| Item | Default |
|---|---|
| One-time site | **base** (template + content swap + soft-launch chrome) |
| Monthly care | **care** (hosting/DNS/uptime basics — define in contract) |
| Extras | Named **add-ons** (forms, booking, WhatsApp, …) — see integrations |

**Source:** Audari (this repo). Offer map:
[references/offer.md](references/offer.md). Intake:
[references/intake.md](references/intake.md). Vertical spines:
[references/verticals.md](references/verticals.md). Local SEO:
[references/local-seo.md](references/local-seo.md). Integrations:
[references/integrations.md](references/integrations.md). Shared infra vs SaaS:
[references/shared-infra.md](references/shared-infra.md).

## Handoffs

| Topic | Skill |
|---|---|
| Client brief / missing facts | `client-intake` |
| On-page copy | `copy-local` (+ optional `oil-tone`) |
| NAP / titles / LocalBusiness / GBP | `local-seo` |
| Meta/OG/robots/sitemap/404/forms UX/CWV | `site-checklist` |
| Privacy/Terms/cookies/company identity | `compliance-checklist` |
| Form/security/deps | `security-checklist` |
| First deploy + care / DNS / handoff | `deploy-care` |
| Hosting resilience beyond care plan | `prod-checklist` lean |
| Award / motion / 3D wow | **Out of scope** → craft-budget / motion-web / oil-ui |

## How to use

1. **Mode:** `new-vertical` | `client-fit` | `add-on` | `intake-only`
2. Pick or invent a **vertical slug** (e.g. `barber`, `plumber`, `cafe`) from verticals.md
3. Fill **intake** gaps before inventing client facts — mark invented copy clearly
4. Ship **base pack** sections only; list add-ons by name (user’s prices), don’t sneak scope
5. Before public URL: run `/site-checklist` soft-launch + `/compliance-checklist` for legal pages

## Output formats

### New vertical template

```markdown
## Vertical — <slug> / <locale>
### Included in base
- Sections: …
### Local SEO defaults
- …
### Add-ons (named; price from rate card)
- …
### Intake fields required
- …
### Stack notes
- …
```

### Client fit

```markdown
## Client fit — <business> / <vertical>
### From intake
- …
### Template chosen + overrides
- …
### Out of scope / quote as add-on
- …
### Launch checklist handoff
- /site-checklist — …
- /compliance-checklist — …
```

## Hard rules

1. Do not promise award design or custom WebGL in the base pack.
2. Do not invent opening hours, phone, or reviews — intake or “placeholder” labels.
3. Prefer solid existing services for booking/payments over bespoke apps in v1 — see `shared-infra.md` (own shell + content; don’t own night-waking engines yet).
4. Prospecting (“find businesses without a site”) is **out of scope** — qualify leads the user provides.
5. Do not hard-code euro amounts — use `base` / `care` / `add-on` and the user’s rate card.

## Related

- `site-checklist`, `compliance-checklist`, `security-checklist`
- `craft-budget` — only if the user upgrades to premium craft (different offer)
