---
name: local-seo
description: >-
  Local SEO for small business sites: service+area titles, NAP consistency,
  LocalBusiness JSON-LD, Google Business Profile URL alignment, internal links,
  no fake reviews. Use for Audari/vertical templates, local packs, or
  “local SEO checklist”. Not a full SEO agency (no link building/ads). Hands off
  general chrome to site-checklist; legal to compliance-checklist.
disable-model-invocation: true
---

# Local SEO (small business packs)

On-page + GBP hygiene for **one location / one service area** sites. Complements
`site-checklist` (robots/sitemap/OG) with local-specific rules.

**Source:** Audari (this repo). Checklist:
[references/checklist.md](references/checklist.md). Schema notes:
[references/schema.md](references/schema.md). **Verify / launch gate:**
[references/verify.md](references/verify.md). Not enough:
[references/not-enough.md](references/not-enough.md).

## Handoffs

| Topic | Skill |
|---|---|
| Robots/sitemap/OG/CWV | `site-checklist` |
| Intake NAP facts | `client-intake` |
| Copy wording | `copy-local` |
| Privacy / claims | `compliance-checklist` |
| Go-live URL | `deploy-care` |

## How to use

1. **Stage:** `draft` | `soft-launch` | `public` (same as `site-checklist`)  
2. Confirm NAP from intake (`confirmed` only)  
3. Apply checklist.md on the template/client site  
4. Align GBP site URL after deploy  
5. Never add AggregateRating without real sources  

## Stop rules

Core (all Audari skills): shape + stage first · only that stage · evidence or gap ·
one pass, then stop · owned and read-only · hand off · no certification claims.
Full text: `docs/CONVENTIONS.md` in the Audari repo. For this skill:

- Done when the stage gate in `verify.md` passes.
- Unconfirmed NAP or hours → Blocker owned by `client`, not invented copy.
- No ranking forecasts, link building, or ads advice.

## Output format

```markdown
## Local SEO — <client> / <stage>
### Blockers
- **<id>** — done-when · evidence · owner
### Should
- …
### OK
- **<id>** — evidence
### Handoff
- /site-checklist — …
```

## Hard rules

1. No hidden keyword suburbs.  
2. No fake stars in JSON-LD.  
3. Don’t promise rankings in sales or on-page copy.  

## Related

- `vertical-templates` (still has a short local-seo pointer), `site-checklist`, `deploy-care`
