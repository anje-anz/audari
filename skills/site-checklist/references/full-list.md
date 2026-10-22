# Site launch — full index

Merges and **upgrades** the viral lists (“vibe coded site is fake” + “20 things to
tell Claude before launching”). Labels are check prompts. Legal depth lives in
`compliance-checklist`.

## Viral → kit map

| Viral theme | Kit ID | Notes |
|---|---|---|
| Custom 404 | U10 | Branded + link home/search; not bare host 404 |
| CTA above the fold | U11 | One primary action; craft owns visual weight |
| Meta title / description per page | D1–D2 | Unique; ~50–60 / ~140–160 chars as guidance not law |
| Open Graph / social share | D3–D4 | Absolute HTTPS image; Twitter/X card if you care |
| Favicon set | D5 | SVG/ICO + apple-touch; not only `/favicon.ico` 404 |
| robots.txt | D6 | Allow public; Disallow drafts/admin; Sitemap URL |
| sitemap.xml | D7 | Submitted or linked; only indexable URLs |
| Alt text | R20 | Meaningful alts; decorative empty alt |
| Mobile breakpoints | R21 | Compose ~390px; no horizontal scroll |
| Sticky mobile CTA | U12 | Conversion landings; don’t fight cookie/chat widgets |
| Loading states | U13 | Buttons/forms/skeleton — no dead click |
| Form error states | F15 | Field-level + summary; keep input |
| Thank-you page (or state) | F16 | Post-submit confirmation; no silent void |
| Privacy / Terms / cookies | → compliance | Do not re-checklist here |
| Analytics | M18 | Installed + events; consent → compliance C |
| Real contact address | → compliance M49 | Impressum-class where required |
| FAQ | U14 | Soft-launch+ if support/email load |
| Canonical URLs | D8 | One preferred URL; http/https + www consistency |
| Accessibility | R22 + compliance A | This skill: surface; compliance: EAA/WCAG program |
| Test forms | F17 | Real submit path + spam honeypot/rate if public |
| Broken links | F18 | Crawl main nav/footer/CTA targets |
| Optimise performance / compressed images | P25–P29 | CWV + real image compression; prod for CDN |

## D — Discoverability

| ID | Check | Done-when |
|---|---|---|
| D1 | **Title** per indexable page | Unique `<title>`; brand + page purpose |
| D2 | **Meta description** per indexable page | Unique; honest; not keyword stuffing |
| D3 | **Open Graph** | `og:title`, `og:description`, `og:image` (1200×630-ish), `og:url` |
| D4 | **Twitter/X card** (optional) | `summary_large_image` if social traffic matters |
| D5 | **Favicon set** | Works in tab + bookmark + iOS home; dark/light OK |
| D6 | **robots.txt** | Public paths allowed; previews/app private paths disallowed; points to sitemap |
| D7 | **sitemap.xml** | All public canonical URLs; no noindex/noauth pages |
| D8 | **Canonical** | `<link rel="canonical">` (or platform equiv) on pages that can duplicate |
| D9 | **noindex where needed** | Staging, thank-you if thin, search result pages |

## U — UX chrome

| ID | Check | Done-when |
|---|---|---|
| U10 | **Custom 404** | On-brand; path to home + primary nav; status actually 404 |
| U11 | **Primary CTA above the fold** | Desktop + mobile first screen; one clear verb |
| U12 | **Sticky mobile CTA** | If landing is conversion-led; dismissible if obstructive |
| U13 | **Loading / pending states** | Async actions show progress; disable double-submit |
| U14 | **FAQ** | Answers top objections; links to contact/docs |
| U15 | **Empty states** | Lists/search not blank white with no next step |

## F — Forms & trust

| ID | Check | Done-when |
|---|---|---|
| F15 | **Form errors** | Inline + accessible; server errors surfaced |
| F16 | **Success path** | Thank-you page **or** clear in-page success (prefer URL for ads attribution) |
| F17 | **Form test pass** | Happy path + invalid email + empty required; spam control if public |
| F18 | **Broken-link pass** | Main templates: nav, footer, hero CTA, legal links |
| F19 | **Contact truth** | Mailto/form works; company identity → compliance M49 |

## M — Measure

| ID | Check | Done-when |
|---|---|---|
| M18 | **Analytics installed** | Pageviews (and key conversions) fire in prod |
| M19 | **Consent alignment** | Non-essential tags wait for CMP when required → compliance C |
| M20 | **No PII in events** | Emails/names not in event props by default |

## R — Responsive & a11y surface

| ID | Check | Done-when |
|---|---|---|
| R20 | **Alt text** | Content images described; UI icons labeled or aria |
| R21 | **Breakpoints** | ~390 / tablet / desktop composed; tap targets usable |
| R22 | **Keyboard / focus** | Tab order sane on nav + forms; visible focus |
| R23 | **Contrast** | Body text readable on real backgrounds (not only dark hero) |

Deep WCAG/EAA program → `compliance-checklist` A.

## P — Performance surface

| ID | Check | Done-when |
|---|---|---|
| P25 | **LCP sanity** | Hero media not multi‑MB uncompressed; priority hint if needed |
| P26 | **CLS sanity** | Images/fonts reserved space; no layout jump on load |
| P27 | **Font strategy** | `font-display`; subset or system fallback |
| P28 | **Third-party budget** | Analytics/chat/widgets counted; defer non-critical |
| P29 | **Compressed images** | WebP/AVIF or properly compressed JPEG/PNG; no multi‑MB PNG heroes in prod |

CDN, caching architecture, edge → `prod-checklist`.

## Kit extras

| ID | Check | Why |
|---|---|---|
| X1 | **HTTPS + HSTS** (host/platform) | Launch hygiene; security headers depth → security-checklist |
| X2 | **Staging not indexable** | Basic auth or noindex + robots |
| X3 | **Language / `hreflang`** if multi-locale | Avoid duplicate confusion |
| X4 | **JSON-LD** (Organization / WebSite) when it helps | Optional; keep honest |
| X5 | **Privacy / Terms / cookies links in footer** | Discoverability of legal pages |
