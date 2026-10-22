---
name: prod-checklist
description: >-
  Production readiness checklist for apps and APIs: resilience, data, scale,
  deploy, observability, security, performance, and networking. Use when
  shipping beyond a demo, reviewing architecture, hardening a vibe-coded app,
  planning MVP vs scale work, or when the user mentions prod checklist, vibe
  coders list, or “what am I missing before production.”
disable-model-invocation: true
---

# Prod checklist (vibe → production)

**Source of truth:** Audari (this repo). Full 1–101 index:
[references/full-list.md](references/full-list.md). Stage defaults:
[references/by-stage.md](references/by-stage.md). **Lean / anti-theatre:**
[references/lean.md](references/lean.md). Kit smoke method:
`docs/smoke.md`.

Do not dump all 101 items into chat. **Pick the stage**, open the matching
clusters, apply the minimum defaults, deepen only where the product needs it.
Read `lean.md` before proposing K8s, sharding, or multi-region.
On a real-repo smoke, stay lean — see `examples/saas-next-smoke.md` §5.

## How to use this skill

1. Name the **stage**: `prototype` | `mvp` | `first-users` | `scale`
2. Run the **cluster defaults** for that stage (below + by-stage.md)
3. For each gap: one concrete decision (do / defer / N/A) with a one-line why
4. Link out to deeper kit skills when they exist (do not re-teach them here)

## Clusters (map of the 101)

| # | Cluster | Topics (see full-list) | Deeper skill |
|---|---|---|---|
| A | Edge & traffic | 1–5, 48–50, 74–75 | — |
| B | Resilience | 10–14, 39–40, 44 | — |
| C | Async & realtime | 15–21, 22–24, 101 | — |
| D | Data & consistency | 25–38, 81–82 | — |
| E | Runtime & scale | 41–47, 88–90 | — |
| F | Deliver & release | 6–9, 51–57 | — |
| G | Observability | 58–66, 91–94 | — |
| H | Security | 67–80 | `auth-abuse-guard` (login/stuffing) |
| I | Continuity | 83–87, 95–96 | — |
| J | Protocols | 97–100 | — |

## Stage defaults (minimum bar)

### prototype
Ship the idea. Only: basic HTTPS/TLS if public, secrets not in git, one deploy path, logs you can read, no obvious SQLi/XSS on user input.

### mvp
Add: rate limiting on sensitive routes, timeouts + bounded retries, idempotency on payments/webhooks, indexes for hot queries, health check, CI that runs tests, migrations with rollback plan, CORS/CSRF as applicable, WAF/DDoS at edge if exposed.

### first-users
Add: caching where read-heavy, queue for slow work + DLQ mindset, structured logging + metrics + alerts on error rate/latency, backups + restore drill once, feature flags for risky changes, auth hardening (`auth-abuse-guard`), encryption in transit everywhere.

### scale
Add: deliberate horizontal scale, cache invalidation strategy, replicas/sharding only with a reason, circuit breakers, SLOs/error budgets, tracing, multi-region/DR if the business needs it, cost/cold-start budgets, partition/clock assumptions documented.

## Anti-patterns

- Implementing Kubernetes “because the list has it” on a single Next app
- Raising bcrypt cost instead of gating auth abuse
- Caching without an invalidation story
- Retries without idempotency or backoff caps
- Alerts on every metric (noise) or none (blind)
- Multi-region before single-region backups work

## Output format (when reviewing a project)

```markdown
## Prod checklist — <stage>
### Must fix now
- …
### Defer (with trigger)
- … — when <condition>
### N/A
- … — <why>
### Follow-up skills
- /auth-abuse-guard — …
```

## Related kit skills

- `auth-abuse-guard` — stuffing, bots, cheap gate before password hash
- `security-checklist` — app-sec / AI-built security pass
- `compliance-checklist` — privacy/ToS/payments/a11y launch obligations (not legal advice)
- `craft-budget` — frontend/premium site token policy (orthogonal)
- `site-checklist` — public site chrome (meta/OG/404); CWV basics there, infra here


When adding a new deep skill to the kit, register it in the cluster table above.

