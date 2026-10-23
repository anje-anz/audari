---
name: site-checklist
description: >-
  Public website / landing launch checklist: SEO chrome, OG/favicon, robots/sitemap,
  404, forms UX, CTA, analytics install, mobile, CWV basics, broken links. Use when
  “vibe coded site is fake”, “before launching your site”, marketing-site polish,
  or Claude launch lists for portfolio/landing. Hands off Privacy/Terms/cookies to
  compliance-checklist; craft quality to craft-budget; infra scale to prod-checklist.
disable-model-invocation: true
---

# Site checklist (public web chrome)

**Not** a second prod or compliance skill. Completes viral “20 things before launch /
vibe site is fake” lists into one staged pass for **marketing sites, landings,
portfolios, and SaaS marketing pages**.

**Source:** Audari (this repo). Index:
[references/full-list.md](references/full-list.md). Stages:
[references/by-stage.md](references/by-stage.md). **Verify / soft-launch gate:**
[references/verify.md](references/verify.md). **Worked example** (metadata vs disk):
[references/worked-example.md](references/worked-example.md).

## Handoffs (do not duplicate)

| Topic | Skill |
|---|---|
| Privacy, Terms, cookie/CMP truth, company address, a11y/EAA depth | `compliance-checklist` |
| Award craft, motion, token budget, anatomy | `craft-budget` (+ awwwards/jury) |
| Backups, queues, K8s, SLOs, TLS infra | `prod-checklist` |
| Headers/XSS/CSRF/auth | `security-checklist` |
| Local-business template packs / base–care–add-on scope | `vertical-templates` |

## How to use

1. **Shape:** `landing` | `portfolio` | `saas-marketing` | `docs-site`
2. **Stage:** `draft` | `soft-launch` | `public`
3. Walk clusters for that stage; mark gaps **done / missing / N/A**
4. Soft-launch/public: pass the gate in `verify.md` (not “looks fine on my laptop”)
5. Legal pages → invoke compliance, don’t invent “GDPR OK”

## Clusters

| # | Cluster | Covers |
|---|---|---|
| D | Discoverability | Titles, descriptions, canonical, robots, sitemap, OG/Twitter, favicon |
| U | UX chrome | CTA fold, sticky mobile CTA, 404, FAQ, loading/empty/error, thank-you |
| F | Forms & trust | Validation, errors, success path, broken-link pass, real contact (→ compliance) |
| M | Measure | Analytics installed + consent-aware (→ compliance for legal basis) |
| R | Responsive & a11y surface | Breakpoints, tap targets, alt text, focus — deep a11y → compliance |
| P | Performance surface | LCP/CLS/INP, compressed images (P29), fonts — deep → prod |

## Stage defaults (summary)

| Stage | Bar |
|---|---|
| **draft** | Unique title/desc on main URL; mobile not broken; forms don’t silently fail; no fake metrics |
| **soft-launch** | + robots/sitemap, OG+favicon, custom 404, analytics behind consent if needed, Privacy/Terms live |
| **public** | + canonicals, alt text, FAQ if support load, sticky CTA if conversion page, link check, CWV sane |

## Stop rules

Core (all Audari skills): shape + stage first · only that stage · evidence or gap ·
one pass, then stop · owned and read-only · hand off · no certification claims.
Full text: `docs/CONVENTIONS.md` in the Audari repo. For this skill:

- Done when the stage gate in `verify.md` passes, or each miss is Defer/Handoff.
- Check assets **exist** (file on disk, URL 200) — a metadata string is not evidence.
- No craft or copy polish items; those go to `craft-budget` / `copy-local`.

## Output format

```markdown
## Site checklist — <shape> / <stage>
### Blockers
- **<id> <item>** — done-when · evidence · owner
### Should
- …
### Defer
- … — trigger: …
### OK
- **<id>** — evidence
### Handoff
- /compliance-checklist — …
- /craft-budget — …
```

## Related

- `compliance-checklist` — Privacy/Terms/cookies/contact/a11y
- `craft-budget` — visual craft after chrome exists
- `prod-checklist` — performance/infra beyond CWV basics
- `security-checklist` — security headers / XSS on forms
