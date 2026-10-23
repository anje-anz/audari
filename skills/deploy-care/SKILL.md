---
name: deploy-care
description: >-
  Deploy and monthly care operations for studio-hosted local business sites:
  Vercel/DNS/domains, what the care plan includes vs excludes, client access
  handoff, uptime checks, break-glass runbook, and safe content tweaks. Use when
  launching an Audari/vertical template to production, quoting monthly care,
  transferring a domain, “hosting incluso”, or incident on a client site.
  Complements vertical-templates (offer) and site-checklist (chrome); not a full
  prod-checklist / SRE program.
disable-model-invocation: true
---

# Deploy & care (studio-hosted sites)

Operational skill for **shipping and looking after** economical client sites
(default care frame: **monthly care** — amounts from the user’s rate card).

**Source:** Audari (this repo). Care scope:
[references/care-plan.md](references/care-plan.md). Stack:
[references/vercel-dns.md](references/vercel-dns.md). Runbook:
[references/runbook.md](references/runbook.md). Handoff:
[references/handoff.md](references/handoff.md). Verify:
[references/verify.md](references/verify.md). Exclusions:
[references/not-included.md](references/not-included.md).

## Handoffs

| Topic | Skill |
|---|---|
| What the base build contains / vertical IA | `vertical-templates` |
| Meta/OG/robots/404/forms before public | `site-checklist` |
| Privacy/Terms/cookies | `compliance-checklist` |
| Secrets, form abuse, deps | `security-checklist` |
| Deep infra (queues, multi-region) | `prod-checklist` lean — rare for vitrine sites |
| Shared booking engines | `vertical-templates` → `shared-infra.md` (don’t own night-waking systems) |

## How to use

1. **Mode:** `first-deploy` | `care-quote` | `domain` | `tweak` | `incident`
2. Name **client slug**, **production URL**, **who owns the domain registrar**
3. Apply the matching checklist below; cite evidence (URL, DNS panel, Vercel project)
4. Never invent “24/7 SLA” — care-plan.md is the contract language

## Modes (summary)

### first-deploy

1. Prod project on Vercel (or agreed host) linked to the right repo/folder  
2. Env: only required public keys; secrets in host, not git (`security-checklist`)  
3. Custom domain + HTTPS (platform cert)  
4. Soft-launch gate → `/site-checklist`  
5. Legal pages live → `/compliance-checklist`  
6. Client handoff pack → `handoff.md`  
7. Confirm care inclusions in writing (email/PDF) → `care-plan.md`

### care-quote

Output a one-page **Care schedule**: included, caps, response expectations, exclusions (`not-included.md`). No fluff.

### domain

Registrar ownership (client vs studio), DNS records, TTL, email DNS (MX/SPF) **untouched** unless in scope — see vercel-dns.md.

### tweak

In-care text/image swap within monthly cap. Out of cap → quote as paid change. No redesign.

### incident

Follow `runbook.md`: confirm down vs DNS vs deploy; restore; notify client with facts only.

## Stop rules

Core (all Audari skills): mode first · evidence or gap · one pass, then stop ·
owned and read-only · hand off · no certification claims.
Full text: `docs/CONVENTIONS.md` in the Audari repo. For this skill:

- One mode per pass; done when that mode's checklist and `verify.md` items are ticked.
- Anything outside the care scope is a quote, not a silent fix.
- Incidents: restore and report facts; root-cause essays are a second turn.

## Output format

```markdown
## Deploy/care — <client> / <mode>
### OK
- … — evidence
### Blockers
- … — owner: client|registrar|you
### Care scope reminder
- Included: …
- Excluded: …
### Verify
- [ ] production URL HTTPS
- [ ] …
```

## Hard rules

1. **Say what’s included** every deploy — silent “we’ll handle everything” creates unpaid labour.  
2. Client owns **content truth**; studio owns **hosting plumbing** under care.  
3. No production deploys from dirty git / unknown env.  
4. Domain transfer only with explicit client confirmation.  
5. Do not promise SEO ranking, ads, or daily edits in default care.
6. Do not hard-code care prices — use the user’s rate card.

## Related

- `vertical-templates`, `site-checklist`, `compliance-checklist`, `security-checklist`, `prod-checklist`, `release-versioning`
