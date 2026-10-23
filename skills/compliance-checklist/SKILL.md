---
name: compliance-checklist
description: >-
  Launch compliance checklist for apps and SaaS: privacy policy, terms and
  conditions, GDPR/ePrivacy ops, cookies, payments disclosure, IP/OSS licences,
  accessibility, store policies, AI transparency, and evidence. Use when drafting
  or reviewing Privacy/Terms, GDPR readiness, DPA/deletion/retention, launching,
  pre-App-Store submit, or “how not to get sued.” Single skill for privacy+terms+GDPR
  (no separate packs). Not legal advice; flags gaps and when to involve counsel.
disable-model-invocation: true
---

# Compliance checklist (launch readiness)

**Not legal advice.** Inventory **regulatory, contractual, and platform**
obligations — and the **evidence** that you meet them. Does not interpret law,
certify GDPR/SOC2/PCI, or replace counsel. For material risk (payments, kids,
health, EU transfers, marketplace, employment), **recommend qualified counsel**.

**Alias:** older chats may say `legal-checklist` — treat that as this skill.

**Source:** Audari (this repo). Full index:
[references/full-list.md](references/full-list.md). By stage:
[references/by-stage.md](references/by-stage.md). By product:
[references/by-product.md](references/by-product.md). Processors/stacks:
[references/stacks-processors.md](references/stacks-processors.md). Evidence:
[references/evidence.md](references/evidence.md). Anti-theatre:
[references/not-enough.md](references/not-enough.md). **Worked example** (substance over generator):
[references/worked-example.md](references/worked-example.md). **Privacy & Terms drafting:**
[references/privacy-terms.md](references/privacy-terms.md). **GDPR ops:**
[references/gdpr-ops.md](references/gdpr-ops.md). Authority links (EDPB, etc.):
`docs/AUTHORITY.md`.

## Legal vs compliance (same skill)

| Lens | Examples in this checklist |
|---|---|
| **Compliance** | GDPR bases, cookies, DPA/SCC, retention, breach notify, EAA/a11y, AI Act transparency, store rules, PCI-lite if cards |
| **Legal / commercial** | ToS, IP ownership, trademarks, OSS licence obligations, consumer disclosures |

One skill covers **Privacy + Terms + GDPR** so launch reviews stay consistent.
Do **not** add separate third-party “GDPR generator” skills. Prefer saying
**compliance** in output titles. Policy **dates/versions** → `release-versioning`.

## How to use

1. **Product shape:** `marketing-site` | `saas` | `mobile` | `marketplace` | `content-ugc`
2. **Stage:** `prototype` | `mvp` | `first-users` | `scale`
3. **Markets** (default: EU + public web if unknown)
4. Walk clusters; mark each gap with **owner:** you | counsel | vendor | accountant
5. Prefer linking existing policy pages; never invent “we’re certified”
6. Cite **evidence** (evidence.md) or mark gap — not vibes / Instagram lists
7. Privacy/Terms outline or stub → `privacy-terms.md`; GDPR control bar → `gdpr-ops.md`

## Clusters

| # | Cluster | Covers |
|---|---|---|
| P | Privacy & data | Policy, legal basis, retention, deletion, DPIA, DPA/SCC, subprocessors, RoPA |
| C | Cookies & tracking | Consent/CMP, tag classification, ePrivacy |
| T | Terms & consumer | ToS, unfair terms, withdrawal, pricing honesty |
| $ | Payments & money | Subs disclosure, refunds, VAT/OSS, PCI-lite (no raw card storage) |
| I | IP & licences | Ownership, trademarks, OSS notices, third-party assets |
| S | Security (compliance view) | TOMs, breach procedure — tech → `security-checklist` |
| A | Access & inclusion | Accessibility (EAA/WCAG), age gates |
| M | Markets & ops | Company identity, tax IDs, insurance, employment IP |
| R | Platforms & stores | Apple / Google / Stripe / host AUP |
| G | Generative AI | Disclosure, training claims, AI Act transparency, prohibited uses |
| U | UGC / platforms | Moderation, notice-and-action, DSA-class duties |
| E | Evidence & governance | What you’d show an auditor or buyer: policies, logs, vendor list, training |

## Stage defaults (summary)

| Stage | Bar |
|---|---|
| **prototype** | No false compliance claims; minimal truthful data notice if collecting emails; OSS/IP not accidental theft |
| **mvp** | Privacy + Terms live; cookie stance true; deletion path; processor honesty; OSS scan; payment disclosures if charging; no PAN in your DB |
| **first-users** | Retention; breach runbook; marketing consent hygiene; a11y baseline; subprocessors; evidence folder started |
| **scale** | Counsel review; transfers/DPIA as needed; insurance; store program; AI Act/DSA classification if relevant; buyer/DD ready |

## Stop rules

Core (all Audari skills): shape + stage first · only that stage · evidence or gap ·
one pass, then stop · owned and read-only · hand off · no certification claims.
Full text: `docs/CONVENTIONS.md` in the Audari repo. For this skill:

- Done when each stage item is OK with evidence, a gap with an owner, or a counsel handoff.
- List counsel questions; do not answer them.
- A policy page existing is not evidence — its content must match the real stack.

## Output format

```markdown
## Compliance checklist — <shape> / <stage> / <markets>
### Blockers
- **<id> <item>** — obligation · done-when · evidence · owner: you|client|counsel|vendor
### Should
- …
### Defer
- … — trigger: …
### OK
- **<id>** — evidence
### Handoff
- counsel / accountant — …
- /security-checklist — …
- /prod-checklist — …
```

## Hard rules for the agent

1. Do not claim “GDPR/SOC2/PCI compliant” from a template pass.
2. Do not invent exemptions without facts.
3. Open-source: recommend a real licence scan.
4. Payments: store/Stripe rules can beat your ToS — check both; never store raw card data.
5. Tech controls → `security-checklist`; uptime/backups → `prod-checklist`.

## Related kit skills

- `security-checklist` — technical app-sec
- `prod-checklist` — operational readiness
- `auth-abuse-guard` — auth abuse (supports security TOMs)
- `craft-budget` — unrelated (UI craft)
- `site-checklist` — SEO/OG/404/forms chrome (legal pages stay here)
- `store-checklist` — App Store / Play submission gate (labels, manifests, demo login)
- `vertical-templates` — local business packs (legal pages still here)
- `release-versioning` — effective dates / versions on Privacy & Terms
