# Verify site chrome (owned sites only)

Concrete checks. Thresholds are **guidance**, not certifications.

## Discoverability

| ID | Command / check |
|---|---|
| D1–D2 | View-source or rich preview: unique title + description on home + key pages |
| D3 | [opengraph.xyz](https://www.opengraph.xyz) or Slack/iMessage paste — image loads over HTTPS |
| D5 | `/favicon.ico` or configured icons return 200; tab icon visible |
| D6 | `curl -s https://host/robots.txt` — Sitemap line; no accidental `Disallow: /` on prod |
| D7 | `curl -s https://host/sitemap.xml` — URLs match public pages only |
| D8 | Canonical host: www vs apex redirect **one** way; HTTPS |

## UX / forms

| ID | Check |
|---|---|
| U10 | Unknown path → **custom** 404 body + real HTTP 404 |
| U11 | First screen mobile + desktop: one primary CTA visible without scroll (conversion pages) |
| F15–F17 | Submit empty, bad email, happy path — errors + success visible |
| F18 | Click every nav/footer/legal/hero link once on staging |

## Measure & consent

| ID | Check |
|---|---|
| M18 | Prod: pageview (or equivalent) appears in analytics UI after visit |
| M19 | With CMP: tags don’t fire before consent when classified non-essential → compliance |

## Performance surface (soft bar)

| ID | Guidance |
|---|---|
| P25–P26 | Lab: Lighthouse/PageSpeed on mobile — fix **catastrophic** LCP/CLS (multi‑MB hero, layout jump) before ads |
| P28 | Count third-party scripts; defer chat/analytics if they wreck LCP |
| P29 | Hero/content images are compressed (WebP/AVIF or optimized JPEG); spot-check file sizes in Network |

Deep caching/CDN architecture → `prod-checklist`. Visual craft → `craft-budget`.

## Soft-launch gate (professional)

All must be true before sharing a public link with real strangers:

- [ ] D1–D3, D5–D7  
- [ ] U10, U11, F17  
- [ ] Privacy + Terms live (compliance)  
- [ ] Cookie stance honest (compliance C)  
- [ ] X2 if staging exists  

Public/ads: add D8, R20, F18, P25–P28 sanity.
