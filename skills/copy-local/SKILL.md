---
name: copy-local
description: >-
  Write and polish on-page copy for local business websites (EN/IT): hero, services,
  CTA (call/WhatsApp/book), about, FAQ — honest, scannable, no fake claims or AI
  fluff. Use after client-intake for Audari/vertical templates, or when rewriting
  lorem on a local site. Optional: oil-tone for prose naturalness after substance
  is correct. Not for long essays, ads campaigns, or medical/legal advice copy.
disable-model-invocation: true
---

# Copy for local business sites

Short, **verifiable** website copy. Substance from intake; tone = clear neighbour,
not corporate brochure and not hype.

**Source:** Audari (this repo). Patterns:
[references/patterns.md](references/patterns.md). Ban list:
[references/bans.md](references/bans.md).

## Handoffs

| Topic | Skill |
|---|---|
| Missing facts | `client-intake` |
| Section structure | `vertical-templates` |
| Prose “sounds AI / stiff” after facts OK | `/oil-tone` (third-party) if installed |
| NAP / titles / schema wording | `local-seo` |

## How to use

1. Read intake — only `confirmed` fields become hard claims  
2. Draft per section (patterns.md) in the **site locale**  
3. Run bans.md  
4. Optional oil-tone pass for flow — **do not** let tone invent facts  

## Hard rules

1. No `#1 in town`, fake stats, or invented reviews.  
2. CTAs match intake (`tel:`, WhatsApp link, form, book).  
3. Prices only if `prices_public` confirmed.  
4. Medical/financial promises → refuse or mark “needs client counsel”.  

## Related

- `client-intake`, `vertical-templates`, `local-seo`, `oil-tone`
