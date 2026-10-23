# Authority map (what we align to — and what we are not)

This kit is **policy for agents**, not a certification. Use these sources to
benchmark and improve skills. Do not claim “GDPR/ASVS/NIST certified” from a
skill pass.

## Canonical sources

| Domain | Authority | Primary URLs |
|---|---|---|
| GDPR accountability | EDPB | https://www.edpb.europa.eu/topics/accountability-and-compliance-tools/accountability_en |
| EDPB tools / codes / certs | EDPB | https://www.edpb.europa.eu/accountability-tools_en |
| Controller / processor guidance index | EDPB | https://www.edpb.europa.eu/guidelines-relevant-for-controllers-and-processors_en |
| Processors / sub-processors | EDPB Opinion 22/2024 | https://www.edpb.europa.eu/documents/opinion-of-the-board-art-64/opinion-222024-on-certain-obligations-following-from-the_en |
| GDPR text | EUR-Lex Reg. 2016/679 | https://eur-lex.europa.eu/eli/reg/2016/679/oj |
| Cookies / terminal access | ePrivacy Directive 2002/58/EC | https://eur-lex.europa.eu/eli/dir/2002/58/oj |
| Accessibility (EU products/services) | European Accessibility Act, Dir. (EU) 2019/882 | https://eur-lex.europa.eu/eli/dir/2019/882/oj |
| AI transparency | AI Act, Reg. (EU) 2024/1689 | https://eur-lex.europa.eu/eli/reg/2024/1689/oj |
| Platforms / UGC | Digital Services Act, Reg. (EU) 2022/2065 | https://eur-lex.europa.eu/eli/reg/2022/2065/oj |
| App security requirements | OWASP ASVS 5.x | https://asvs.owasp.org/ · https://github.com/OWASP/ASVS |
| HTTP security headers | OWASP Secure Headers Project | https://owasp.org/projects/secure-headers-project |
| Secure SDLC (enterprise) | NIST SSDF SP 800-218 | https://csrc.nist.gov/pubs/sp/800/218/final |
| Version numbers | SemVer 2.0.0 | https://semver.org/ |
| Changelogs | Keep a Changelog 2.0.0 | https://keepachangelog.com/en/2.0.0/ |
| iOS distribution | Apple App Store Review Guidelines | https://developer.apple.com/app-store/review/guidelines/ |
| Android distribution | Google Play Policy Center | https://play.google.com/about/developer-content-policy/ |
| Accessibility | W3C WAI / WCAG 2.2 | https://www.w3.org/WAI/ · https://www.w3.org/TR/WCAG22/ |
| Search hygiene | Google Search Central | https://developers.google.com/search/docs |
| Structured data | schema.org + Google structured data policies | https://schema.org/LocalBusiness · https://developers.google.com/search/docs/appearance/structured-data/sd-policies |
| Business listings | Google Business Profile guidelines | https://support.google.com/business/answer/3038177 |
| Page experience | Core Web Vitals (web.dev) | https://web.dev/articles/vitals |

Optional clarity for SMEs (UK): ICO organisation guides — https://ico.org.uk/

## Kit skill ↔ authority (intent)

| Skill | Closest authority intent |
|---|---|
| `compliance-checklist` (+ `gdpr-ops`, `privacy-terms`, `evidence`) | GDPR transparency, Art. 28 processor awareness, accountability *documentation*; ePrivacy cookie consent; EAA/WCAG surface; AI Act transparency and DSA duties as *flags* for counsel |
| `security-checklist` | ASVS-style *application* controls (subset); OWASP Secure Headers for W/X1; SSDF “produce well-secured software” at indie depth |
| `auth-abuse-guard` | ASVS authentication / abuse resistance (narrow slice) |
| `release-versioning` | SemVer + Keep a Changelog; policy page dating (accountability hygiene) |
| `store-checklist` | Apple / Google review & privacy disclosure surfaces |
| `site-checklist` | Google Search Central basics; Core Web Vitals; WCAG *surface* checks (not an audit) |
| `local-seo` | schema.org LocalBusiness + Google structured data policies; GBP guidelines |
| `deploy-care` | Operational care — not NIST IR / enterprise SRE |
| `vertical-templates` / `client-intake` / `copy-local` / `craft-budget` | Studio product policy — no external standard |

## Honest ceiling

- **Good for:** founder/studio accountability, launch gates, agent defaults that beat viral lists.  
- **Not:** ASVS full verification, ISO 27001, SOC 2, EDPB-approved code of conduct, or legal opinions.  
- OWASP does **not** certify products as “ASVS compliant”; neither does this kit.

## Claim language

What agents and studios may write in reports, proposals, and client emails.

| Say | Don't say |
|---|---|
| “Reviewed against the Audari `<skill>` `<stage>` checks on `<date>`” | “GDPR compliant” · “ASVS L1 verified” · “certified” |
| “Security controls informed by OWASP ASVS (subset)” | “Secure” · “hack-proof” · “fully hardened” |
| “Consent setup matches the tag inventory on `<date>`” | “Cookie law compliant” |
| “WCAG 2.2 surface checks: alt text, focus, contrast spot-check” | “WCAG AA compliant” · “fully accessible” (without an audit) |
| “Gaps listed; counsel recommended for `<topic>`” | “Legally reviewed” (unless counsel did) |
| “Uptime monitored; response per care schedule” | “24/7 SLA” · “guaranteed uptime” |
| “Local SEO basics in place” | “Page one on Google” · any ranking promise |

A passing review is a dated statement about evidence seen, not a property of the product.

## Maintenance

When deepening a skill, prefer citing a row from this table in `references/` over inventing new frameworks.  
ASVS L1 coverage snapshot: [asvs-l1-gap.md](asvs-l1-gap.md).
