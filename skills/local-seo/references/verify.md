# Verify local SEO (owned sites only)

Concrete checks against `checklist.md` ids. Ranking is never a pass criterion.

## On-page

| ID | Check |
|---|---|
| L1–L2 | View-source on home + each service page: unique `<title>` and description; area named honestly |
| L3 | One `<h1>` per page; matches the title's intent |
| L4 | Footer NAP matches intake **character for character** (street abbreviations, phone format) |
| L5 | On a phone: `tel:` opens dialer; maps link opens the right pin |
| L6 | Service-area list = areas the client confirmed in intake; no hidden or footer-stuffed suburbs |
| L7 | From home, Services and Contact are one click away; each service page links to Contact |

## Structured data

| ID | Check |
|---|---|
| L8 | [Schema Markup Validator](https://validator.schema.org/) or Google Rich Results Test on the **production** URL: no errors |
| L8 | JSON-LD `name` / `telephone` / `address` / `url` equal the visible NAP and canonical URL |
| L8 | `openingHoursSpecification` only if hours are `confirmed` in intake |
| L8 | No `aggregateRating` / `review` without a verifiable source on file |

## Google Business Profile

| ID | Check |
|---|---|
| L9 | GBP website field = canonical URL (same host, https, www/apex as `site-checklist` D8) — confirmed by client or dashboard screenshot |
| L10 | Hours, phone, and category agree across site, GBP, and intake |

## Stage gate

| Stage | Must pass |
|---|---|
| **draft** | L1–L4 on home; no invented NAP |
| **soft-launch** | + L5–L8 |
| **public** | + L9–L10, and `site-checklist` soft-launch gate already passed |

Unconfirmed client facts block the gate with owner `client` — don't fill them in.
