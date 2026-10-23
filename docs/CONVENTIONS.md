# Conventions (shared across Audari skills)

One vocabulary for stages, severity, evidence, and stopping. Skills keep their
own clusters and item ids; this file is what makes outputs comparable.

## Stage crosswalk

Skills name stages for their surface. Pick the row that matches **who can reach
the thing today** — never a later stage than reality.

| Reach | Site (`site-checklist`, `local-seo`) | App (`security` / `compliance` / `prod`) |
|---|---|---|
| Private URL, owner only | `draft` | `prototype` |
| Shared link, real strangers, no ads | `soft-launch` | `mvp` |
| Indexed / ads / paying users | `public` | `first-users` |
| Sustained load, teams, buyer due diligence | — | `scale` |

`store-checklist` uses submission steps (`preflight` → `metadata` → `submit`),
all before public reach. `deploy-care` and `release-versioning` use **modes**.
Studio vitrine sites rarely go past `public` / `first-users`.

## Severity (output headings)

Use these headings in this order. Omit empty ones.

| Heading | Means | Every item carries |
|---|---|---|
| **Blockers** | Do not move to the next stage / share the URL | done-when · evidence (or "no evidence") · owner |
| **Should** | Fix within the current stage | done-when · owner |
| **Defer** | Real, but not for this stage | trigger that makes it due |
| **N/A** | Doesn't apply to this shape | one-line why |
| **OK** | Checked and passing | evidence |
| **Handoff** | Belongs to another skill or a human | skill or role (counsel, vendor, client) |

Owners: `you` · `client` · `counsel` · `vendor` · `accountant`.

Skill-specific wording may follow in parentheses (e.g. *Blockers (rejection-likely)*),
but the heading word stays the same.

## Evidence

| Counts | Doesn't count |
|---|---|
| File path (+ line) read in the repo | A metadata string pointing at a file nobody checked |
| Command output on an **owned** URL (`curl -sI`, `robots.txt`, 404 status) | "Uses Stripe / Clerk / Vercel" |
| Test or check that fails when the control is removed | Config intent, TODO comments, a README promise |
| Dashboard / console panel the user confirms | "Looks fine on my laptop" |
| Screenshot or recording of the flow | A cookie banner without a tag inventory |

**Missing evidence is a gap, not a pass.** Write `evidence: none` and classify it.

## Stop rules (all checklist skills)

1. **Name shape + stage first.** Don't invent a later stage to justify more work.
2. **Walk only that stage's clusters.** No full-list dumps into chat.
3. **Evidence or gap.** Every OK and every Blocker cites evidence per the table above.
4. **One pass, then output, then stop.** Fixing is a second turn unless the user asked for it.
5. **Owned systems, read-only.** No exploits, payloads, third-party load tests, or printed secret values.
6. **Hand off, don't re-teach.** If another skill owns the topic, name it under Handoff.
7. **No certification language.** Follow claim language in [AUTHORITY.md](AUTHORITY.md).

A pass is **done** when the skill's verify gate is met for the stage, or every
remaining item is a Defer with a trigger or a Handoff with an owner.

## Output skeleton

```markdown
## <Skill> — <shape> / <stage>
### Blockers
- **<id> <item>** — done-when · evidence · owner
### Should
- …
### Defer
- … — trigger: …
### N/A
- … — why
### OK
- **<id>** — evidence
### Handoff
- /<skill> — …
```
