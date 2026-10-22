---
name: client-intake
description: >-
  Collect and validate client briefs for local-business website packs: required
  fields (name, services, area, NAP, hours, CTA, photos), placeholders vs facts,
  and handoff into vertical-templates. Use when onboarding a studio client,
  “brief”, intake form, or before personalizing a template. Does not prospect
  leads or write full site copy (see copy-local).
disable-model-invocation: true
---

# Client intake

Structured brief for **economical vertical sites**. Output is a filled intake
object + gap list — not a redesigned website.

**Source:** Audari (this repo). Field spec:
[references/fields.md](references/fields.md). Output:
[references/output.md](references/output.md).

## Handoffs

| Next step | Skill |
|---|---|
| Pick vertical + sections | `vertical-templates` |
| Write/polish on-page copy | `copy-local` (optional `/oil-tone` for prose polish) |
| Local SEO NAP/schema | `local-seo` |
| Build chrome | `site-checklist` |
| Legal pages | `compliance-checklist` |
| Go live / care | `deploy-care` |

## How to use

1. Gather answers (form paste, email, call notes)  
2. Mark each field: `confirmed` | `placeholder` | `missing`  
3. Ask **one** grouped question for all `missing` must-haves  
4. Emit intake block (output.md) for the build chat  

## Hard rules

1. Never invent phone, hours, prices, or reviews as confirmed facts.  
2. Prospecting is out of scope.  
3. Don’t start visual redesign during intake.

## Related

- `vertical-templates`, `copy-local`, `local-seo`, `deploy-care`
