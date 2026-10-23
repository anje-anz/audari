# Audari

Agent skills for shipping software and studio sites — security, compliance,
launch checklists, local-business templates, deploy and care, and release
discipline.

Built for [Cursor](https://cursor.com) and compatible skill hosts. Each skill is
a short policy with stages, verify steps, and stop rules — not a long checklist
dumped into chat.

> Not legal advice. Not ASVS or GDPR certification. See
> [docs/AUTHORITY.md](docs/AUTHORITY.md).

## Layout

```text
audari/
├── README.md
├── LICENSE
├── docs/
│   ├── authoring.md
│   ├── CONVENTIONS.md
│   ├── smoke.md
│   ├── BRAND.md
│   ├── AUTHORITY.md
│   └── asvs-l1-gap.md
├── examples/
│   └── saas-next-smoke.md
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

Third-party craft skills (awwwards, oil-ui, motion-web, …) are installed
separately — they are not part of this repo.

## Install

```powershell
.\scripts\sync-to-cursor.ps1
```

Copies `skills/*` into `%USERPROFILE%\.cursor\skills\<name>\`. Start a new
agent chat so Cursor reloads skills.

## Use

Invoke by name (`/security-checklist`, `/compliance-checklist`, …) or by
natural language that matches a skill’s `description`.

Shared stages, severity, evidence, and stop rules:
[docs/CONVENTIONS.md](docs/CONVENTIONS.md). How we smoke-test skills:
[docs/smoke.md](docs/smoke.md).

Everything here is free and complete. An optional paid add-on, **Audari Ship
Gate**, packages a pre-launch SHIP / FIX / HOLD verdict and client report on top
of these checks; you don't need it to use the kit.

## Principles

- Prefer short policies over encyclopedias
- Defaults, stages, and stop rules
- Cite evidence from the real repo
- Defense and craft only — no offensive tooling
- This repo is the source of truth; `~/.cursor/skills` is the install target

## License

MIT — see [LICENSE](LICENSE).
