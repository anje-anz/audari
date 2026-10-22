# Defaults by stage

Use with `prod-checklist`. Items are **minimum expectations**, not a mandate to implement every related number from the full list.

## prototype

| Do | Why |
|---|---|
| Secrets out of git; env-based config (67) | Avoid leaking keys |
| TLS on any public URL (71, 73) | Baseline transit security |
| Parameterized queries / safe ORM (78) | Stop trivial SQLi |
| Escape/encode output (79) | Stop trivial XSS |
| One CI or at least `test` script (6) | Catch breaks early |
| Readable logs (59) | Debug without guessing |

Defer: K8s (8), multi-region (86), sharding (30), full SLO stack (63–65).
See [lean.md](lean.md) for stack defaults and verify bar.

## mvp

Everything in **prototype**, plus:

| Do | Why |
|---|---|
| Rate limit auth and expensive routes (1) | Stuffing / abuse — see `auth-abuse-guard` |
| Timeouts + capped retries + backoff (11–13) | Avoid retry storms |
| Idempotency on payments/webhooks (14, 101) | Safe retries |
| Indexes + avoid obvious N+1 (25–27) | First perf cliff |
| Connection pooling if DB (28) | Exhaustion under load |
| Health endpoint (56) | Orchestrators & uptime checks |
| Migrations + schema version habit (81–82) | Don’t invent prod by hand |
| CORS/CSRF correctly for cookie/SPA (76–77) | Browser attack surface |
| Edge WAF/DDoS if public (74–75) | Cheap insurance |
| Backups configured (84) | Before you need them |

## first-users

Everything in **mvp**, plus:

| Do | Why |
|---|---|
| Cache hot reads + invalidation plan (2, 49–50) | Cost & latency |
| Queue slow/email/webhooks work (15–16, 20) | Keep request path thin |
| Metrics + alerts on errors & latency (61–62, 91–93) | Know before users tweet |
| Structured logging + request ids (59–60 light) | Supportability |
| Feature flags for risky deploys (51) | Instant kill switch |
| Rollout strategy you can reverse (52–55) | Survive bad ships |
| Auth abuse gate (H + `auth-abuse-guard`) | Credential stuffing |
| Restore test once (84 → 83 light) | Backup that restores |
| Cost glance on serverless (88–90) | Surprise bills |

## scale

Everything in **first-users**, plus **only with evidence**:

| Consider | Trigger |
|---|---|
| Horizontal scale / autoscaling (45–46) | Sustained CPU/RPS ceiling |
| Read replicas (29) | Read-heavy, replica lag OK |
| Sharding/partitioning (30–31) | Single DB write wall |
| Circuit breakers (10), backpressure (44) | Dependency failure cascades |
| SLOs / error budgets (63–65) | Need release discipline |
| Full tracing (60), tail latency (94) | Hard-to-find latency |
| Multi-region / DR / chaos (83–87, 95–96) | Business continuity requirements |
| Protocol upgrades (99–100) | Measured need, not fashion |

## Explicit non-goals by stage

| Topic | prototype | mvp | first-users | scale |
|---|---|---|---|---|
| Kubernetes | skip | skip unless required | maybe | yes if fleet |
| Saga / distributed TX | skip | skip | rare | when multi-service writes |
| Multi-region | skip | skip | skip | when RPO/RTO demand |
| Chaos engineering | skip | skip | optional game day | program |
