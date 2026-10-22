# Authoring skills (Audari)

## When a topic becomes a skill

Add a skill when the agent repeatedly gets the **default wrong** (e.g. “just rate-limit by IP”) and a short policy fixes quality across projects.

Skip a skill if it is only one-off advice or a full framework (keep those as repos + thin wrappers).

## Folder template

```text
skills/<name>/
├── SKILL.md                 # required — under ~150 lines if possible
└── references/              # optional — progressive disclosure
    ├── signals.md
    └── stacks.md
```

## SKILL.md rules

1. Frontmatter: `name` (matches folder), `description` (WHAT + WHEN, third person, trigger terms).
2. Default `disable-model-invocation: true` for specialist skills (auth, security). Omit it only for ambient policies like craft budgets.
3. Lead with **defaults and stop rules**, then workflow, then pointers to `references/`.
4. No offensive cyber, no academic-evasion, no “bypass detector” content.
5. Prefer checklists and tables over essays.
6. Name stacks the user actually uses (Vercel, Cloudflare, Clerk, Better Auth, Next.js).
7. Prefer **verify / evidence / not-enough** references over longer viral item lists.
8. Professional bar = done-when + how to check — not “add item 102 from Instagram”.
9. When citing external standards, link [AUTHORITY.md](AUTHORITY.md); never claim certification.

## After adding

1. Run `.\scripts\sync-to-cursor.ps1`
2. New agent session
3. Smoke on a **real** repo per [smoke.md](smoke.md) — not only `/skill-name` in empty chat
4. If the smoke taught a pattern, add `references/worked-example.md` and/or `examples/*.md`

## Future public release

- Keep secrets out of the repo (sanitize examples)
- Keep `examples/` current from smokes
- Add `.cursor-plugin/marketplace.json` when ready for plugin install
