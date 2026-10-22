---
name: security-checklist
description: >-
  Security checklist for AI-built and vibe-coded apps: secrets, authz, injection,
  sessions, supply chain, AI agent risks, webhooks, CI/CD, and config hardening.
  Use when reviewing security before launch, hardening a Next/API app, OWASP-style
  pass, “securitymaxxing”, or AI-built app security checks. Prefer this for
  app-sec review; use auth-abuse-guard for login stuffing/bots in depth.
disable-model-invocation: true
---

# Security checklist (AI-built apps)

**Source:** Audari (this repo). Full index (1–70 + kit extras):
[references/full-list.md](references/full-list.md). Stage defaults:
[references/by-stage.md](references/by-stage.md). **Verify:**
[references/verify.md](references/verify.md). **Stacks:**
[references/stacks.md](references/stacks.md). Anti-theatre:
[references/not-enough.md](references/not-enough.md). Layers:
[references/by-layer.md](references/by-layer.md). **Worked example** (real passes):
[references/worked-example.md](references/worked-example.md). Viral launch-20 map:
[references/viral-launch-20.md](references/viral-launch-20.md). Authority / ASVS snapshot:
`docs/AUTHORITY.md`, `docs/asvs-l1-gap.md`.

Defense and verification only. Do **not** provide exploit PoCs, payloads, or
attack reproduction steps — state the risk, the fix, and how to **check** it.
This skill **is** the prevention pass — do not invent a parallel “prevention”
skill for OSI/attack-per-layer content; map those into clusters via by-layer.

## How to use

1. Name the **stage**: `prototype` | `mvp` | `first-users` | `scale`
2. Walk **clusters** for that stage (by-stage.md)
3. For each hit: **risk → fix → verify** (verify from `verify.md`, not vibes)
4. Prefer stack notes in `stacks.md` over generic advice
5. Defer with a trigger; mark N/A with why; reject gestures in `not-enough.md`
6. Hand off deep login/stuffing work to `/auth-abuse-guard`

## Clusters

| # | Cluster | Items (see full-list) | Notes |
|---|---|---|---|
| S | Secrets & exposure | 1–3, 11–14, 29–30, 35–36, 65, 68 | Highest ROI for vibe apps |
| A | Authn / sessions | 4, 24–26, 47, 54–56, 69 | Pair with `auth-abuse-guard` |
| Z | Authz / tenancy | 5–7, 9, 33, 41, 49, 51 | IDOR/BOLA is the classic miss |
| I | Injection & files | 16–23, 34, 52–53 | Include AI tool output as input |
| W | Web / browser | 19–20, 27, 46, 68–69 | Headers, cookies, CORS |
| P | Payments & webhooks | 31–32, 59 | Never trust the client |
| R | Abuse & logic | 28, 57–58, 63–64, 70 | Rate limits, races, fail-closed |
| C | Supply chain & CI | 37–38, 50, 60–62 | Pins, Actions trust, review |
| M | Monitor & recovery | 42–45 | Audit, alerts, backups |
| G | Generative AI | 39–40, 66–67 | Prompt injection, tool perms |
| X | Kit extras | X1–X10 | CSP, GraphQL, Passkeys, TLS, physical, trim responses, publishable keys |

## Stage defaults (summary)

| Stage | Must cover |
|---|---|
| **prototype** | S (no secrets in git/JS/env public), basic input validation, no open admin, no verbose prod errors |
| **mvp** | + Z (authz on every object), A (session/JWT hygiene), I (SQLi/XSS/upload), W (CORS/CSRF/cookies), R (rate limits on auth), P if payments |
| **first-users** | + C (deps audit), M (audit logs + backup restore), headers (46), MFA path (55), webhook signing/replay, AI cluster if agents |
| **scale** | + tenancy isolation hard, security monitoring, CI pins, fail-closed checks, business-logic abuse review |

Details: [references/by-stage.md](references/by-stage.md).

## Output format

```markdown
## Security checklist — <stage>
### Critical (ship-blockers)
- **<item>** — risk: … · fix: … · verify: …
### Should fix soon
- …
### Defer
- … — when <trigger>
### N/A
- … — <why>
### Follow-ups
- /auth-abuse-guard — …
- /prod-checklist — backups/DR overlap
```

## Improvements over the viral list

- Staged so you don’t “securitymaxx” a prototype into paralysis
- **Authz/IDOR** called out as the usual AI-app failure mode
- **AI agent** cluster (prompt injection, tool permissions, untrusted model output)
- **Fail closed** (63) and **timeouts** (64) tied to abuse resistance
- Explicit handoff to `auth-abuse-guard` for stuffing/bots (deeper than “add rate limits”)
- Kit extras: CSP, GraphQL depth/complexity, Passkeys, SSRF allowlists, dependency pinning, TLS floor (X7), physical/LAN/console (X8)
- **by-layer.md**: OSI “what breaks each layer” → existing clusters (no second checklist)

## Related kit skills

- `auth-abuse-guard` — login risk gate, stuffing, challenges
- `prod-checklist` — broader prod map (overlaps: backups, TLS, rate limits)
- `compliance-checklist` — privacy/ToS/DPA/payments/a11y/AI obligations (not legal advice)
- `craft-budget` — unrelated (frontend craft)
- `store-checklist` — mobile store submission (not app-sec depth)

