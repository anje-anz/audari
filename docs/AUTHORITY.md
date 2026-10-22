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
| App security requirements | OWASP ASVS 5.x | https://asvs.owasp.org/ · https://github.com/OWASP/ASVS |
| Secure SDLC (enterprise) | NIST SSDF SP 800-218 | https://csrc.nist.gov/pubs/sp/800/218/final |
| Version numbers | SemVer 2.0.0 | https://semver.org/ |
| Changelogs | Keep a Changelog 2.0.0 | https://keepachangelog.com/en/2.0.0/ |
| iOS distribution | Apple App Store Review Guidelines | https://developer.apple.com/app-store/review/guidelines/ |
| Android distribution | Google Play Policy Center | https://play.google.com/about/developer-content-policy/ |
| Accessibility | W3C WAI / WCAG | https://www.w3.org/WAI/ |

Optional clarity for SMEs (UK): ICO organisation guides — https://ico.org.uk/

## Kit skill ↔ authority (intent)

| Skill | Closest authority intent |
|---|---|
| `compliance-checklist` (+ `gdpr-ops`, `privacy-terms`, `evidence`) | GDPR transparency, Art. 28 processor awareness, accountability *documentation* |
| `security-checklist` | ASVS-style *application* controls (subset); SSDF “produce well-secured software” at indie depth |
| `auth-abuse-guard` | ASVS authentication / abuse resistance (narrow slice) |
| `release-versioning` | SemVer + Keep a Changelog; policy page dating (accountability hygiene) |
| `store-checklist` | Apple / Google review & privacy disclosure surfaces |
| `site-checklist` / `local-seo` | Launch / local discoverability hygiene (not a legal standard) |
| `deploy-care` | Operational care — not NIST IR / enterprise SRE |
| `vertical-templates` / `client-intake` / `copy-local` | Studio product policy — no external standard |

## Honest ceiling

- **Good for:** founder/studio accountability, launch gates, agent defaults that beat viral lists.  
- **Not:** ASVS full verification, ISO 27001, SOC 2, EDPB-approved code of conduct, or legal opinions.  
- OWASP does **not** certify products as “ASVS compliant”; neither does this kit.

## Maintenance

When deepening a skill, prefer citing a row from this table in `references/` over inventing new frameworks.  
ASVS L1 coverage snapshot: [asvs-l1-gap.md](asvs-l1-gap.md).
