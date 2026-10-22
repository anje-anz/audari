# Lean prod (anti–101 theatre)

The viral “101 things” list is a **map**, not a shopping cart. Professional use:
pick stage → do the defaults → deepen **one** cluster when evidence demands it.

## Default stack (this kit)

Assume **Next.js on Vercel + managed DB (Neon/Supabase) + Stripe** unless the
project says otherwise.

| Need | Prefer | Avoid early |
|---|---|---|
| Deploy | Vercel preview + prod | Self-managed K8s (8) |
| Rate limit | Edge + Upstash / CF | Custom global Redis cluster |
| Queue | Vercel / provider jobs, Inngest, QStash | Kafka “because scale” |
| Observability | Platform logs + one error tracker + a few alerts | Full metrics carnival |
| Cache | HTTP cache / CDN / `unstable_cache` with tags | Multi-layer Redis without invalidation story |
| Auth abuse | `auth-abuse-guard` | Tuning bcrypt alone |

## When to open a heavy full-list item

| Item family | Open when |
|---|---|
| K8s / service mesh | You outgrew the platform and own the runtime |
| Sharding / multi-region | Single-region backups + restore already proven; latency/regulation needs it |
| Saga / distributed TX | Multiple writable services already exist |
| Full SLO/error-budget program | Paying customers + on-call exist |
| Chaos engineering | You have monitors and a game-day owner |

## Verify (mvp bar)

| Control | Done-when |
|---|---|
| Timeouts | Outbound calls have explicit timeouts |
| Idempotency | Payment/webhook handlers safe on retry |
| Health | `/api/health` (or platform check) green |
| Backups | Provider backup on; **one** restore drill logged |
| Alerts | Error-rate or 5xx alert reaches a human |
| Migrations | Forward path documented; no hot-edit prod schema |

## Not enough

| Gesture | Missing |
|---|---|
| “We’re on Vercel so prod is done” | Authz, backups drill, alerts, webhook idempotency |
| Implemented 40 list items | Stage defaults + verify |
| Multi-region before restore works | Continuity theatre |
