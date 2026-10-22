# Security defaults by stage

Pair with `security-checklist`. Prefer **verify** steps that are observational (config review, tests, headers) over offensive probing of third-party systems.

## prototype

Ship-blockers only:

| Check | Verify |
|---|---|
| 2, 3, 13 — no secrets in repo / public env | `git log`/scan; `.env` not deployed as static |
| 14, 68 — no API keys in client JS / storage | Bundle grep; Network tab |
| 9, 10 — no open admin/debug in prod | Routes 401/404 without auth |
| 12 — generic errors in prod | Trigger error; no stack/SQL in response |
| 16–17 — parameterized queries / validation on writes | Code review hot paths |
| 15 — no “security only in the browser” | Sensitive rules exist server-side |

## mvp

All of **prototype**, plus:

| Check | Verify |
|---|---|
| 5, 6, 33, 51 — authz on object IDs | Automated tests: user A cannot read/write B |
| 4, 25–26, 47 — session/JWT/cookie hygiene | HttpOnly+Secure+SameSite; strong JWT secret; short TTL |
| 24, 56 — reset + enumeration | Same response timing/copy for unknown emails |
| 19–20, 27, 46 — XSS/CSRF/CORS/headers | CSP/CORS least privilege; state-changing CSRF defense |
| 21–23 — uploads / SSRF | Type/size allowlist; no open URL fetch |
| 28 — rate limits on auth/reset/OTP | Multi-key; see `auth-abuse-guard` |
| 31–32, 59 — webhooks/payments | Signature + timestamp; amount/price server-side |
| 8, 30 — cloud defaults | No public buckets; rotate defaults |
| 48 — TLS everywhere; encrypt sensitive fields if needed | HTTPS only; no secrets in plaintext DB if required |

## first-users

All of **mvp**, plus:

| Check | Verify |
|---|---|
| 37–38, 62 — dependency hygiene | `npm audit` / equivalent; lockfile; pin Actions |
| 50 — review AI-generated authz/payment code | Human pass on those files |
| 42–44 — audit log + backup restore | One restore drill |
| 45 — internal tools behind auth/SSO | Not on public DNS bare |
| 54–55, 69 — OAuth redirect allowlist; MFA for privileged | Config review |
| 39–40, 66–67 — if using agents/LLM tools | Tool allowlist; no raw SQL/shell from model; sanitize rendered output |
| 57–58, 63–64 — logic abuse, races, fail-closed, timeouts | Idempotency keys; transactions; deny on checker failure |
| X1–X2, X4 — CSP; GraphQL limits; SSRF allowlist | Config present |

## scale

All of **first-users**, plus evidence-driven:

| Check | Trigger |
|---|---|
| 49 — hard tenant isolation | Multi-tenant growth |
| 43 — security monitoring / anomaly alerts | Real traffic |
| 60–61 — CI OIDC, least privilege, no fork secrets | Team size / public repo |
| 55 — MFA mandatory for admin | Privileged blast radius |
| X3 — Passkeys for high-value users | Account takeover cost high |
| X5–X6 — pin policy + IDOR test suite in CI | Ongoing change velocity |

## Overlap map

| Topic | Prefer skill |
|---|---|
| Login stuffing, bot challenges, lockouts | `auth-abuse-guard` |
| Backups, DR, general prod | `prod-checklist` (M/I continuity) |
| Headers / TLS as prod hygiene | Either; security-checklist owns app-sec framing |
