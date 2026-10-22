# Audari

**Audari** is a curated set of **Agent Skills** for product engineering and
studio shipping: security, compliance, launch chrome, local-business templates,
deploy/care, and release discipline.

Built for [Cursor](https://cursor.com) (and compatible skill hosts). Policy over
encyclopedias — staged checklists, verify steps, and stop rules so agents don’t
ship viral Instagram lists as gospel.

> Not legal advice. Not ASVS/GDPR certification. See [docs/AUTHORITY.md](docs/AUTHORITY.md).

## Name

**Audari** — evidence-first shipping bars for agents (audit / accountability).
Public GitHub repo: [`audari`](https://github.com/anje-anz/audari). Local
folder may still be `skills-kit`.

## Layout

```text
audari/   # or skills-kit/ locally
├── README.md
├── LICENSE                 # MIT
├── docs/
│   ├── authoring.md
│   ├── smoke.md
│   ├── BRAND.md
│   ├── AUTHORITY.md        # EDPB / OWASP / NIST / SemVer map
│   └── asvs-l1-gap.md
├── examples/
│   └── saas-next-smoke.md  # anonymized worked review
├── scripts/
│   └── sync-to-cursor.ps1
└── skills/
    ├── auth-abuse-guard/
    ├── craft-budget/
    ├── prod-checklist/
    ├── security-checklist/
    ├── compliance-checklist/
    ├── site-checklist/
    ├── store-checklist/
    ├── vertical-templates/
    ├── client-intake/
    ├── copy-local/
    ├── local-seo/
    ├── deploy-care/
    └── release-versioning/
```

Third-party skills (awwwards, oil-ui, …) stay **outside** this repo — install
separately after your verify flow.

## Install (local Cursor)

```powershell
.\scripts\sync-to-cursor.ps1
```

Copies `skills/*` → `%USERPROFILE%\.cursor\skills\<name>\`. Start a **new**
agent chat so Cursor rediscovers skills.

## Use

`/security-checklist`, `/compliance-checklist`, `/vertical-templates`, …
or natural language matching each skill’s `description`.

Smoke method: [docs/smoke.md](docs/smoke.md).

## Principles

- Policy skills, not encyclopedias  
- Defaults + stop rules  
- Verify on real repos; cite evidence  
- Defense and craft only — no offensive tooling  
- This repo is source of truth; `~/.cursor/skills` is a deploy target  
- No personal client names, private paths, secrets, or fixed studio price lists  

## License

MIT — see [LICENSE](LICENSE).
