# Verify (professional) — observational only

No exploit PoCs. Prefer **config review, tests, headers, and read-only checks**
on systems you own. Stack defaults assume **Next.js + Vercel** unless noted.

## Secrets & exposure (S)

| Done-when | How to check |
|---|---|
| No secrets in git history / tree | `git grep` / secret scanner on repo; `.env*` in `.gitignore` |
| Client bundle has no API secrets | Build → search `.next` / client chunks for `sk_`, `SECRET`, service keys |
| Prod errors are opaque | Force a 500 on staging; body has no stack, SQL, or paths |

## Authz / tenancy (Z) — highest ROI

| Done-when | How to check |
|---|---|
| Object access is server-enforced | Test: authenticated user A requests B’s resource ID → **403/404**, not 200 |
| Admin routes gated | Unauthenticated + non-admin → deny |
| Mass assignment blocked | Extra fields in PATCH body ignored or rejected |

Ship at least **one automated IDOR test** per critical resource (X6) by `mvp`.

## Sessions / cookies (A)

| Done-when | How to check |
|---|---|
| Session cookie flags | DevTools → cookie: `HttpOnly`, `Secure`, `SameSite` appropriate |
| JWT/session secret not hardcoded | Env only; rotate path documented |
| Logout invalidates server session | Old cookie rejected after logout (if stateful) |

## Injection & XSS (I / W)

| Done-when | How to check |
|---|---|
| DB access parameterized / ORM | Hot write paths reviewed; no string-concat SQL |
| User HTML not raw-rendered | React default escaping; markdown sanitizer if used |
| Security headers present | `curl -sI https://…` → CSP/HSTS/frame protections as claimed (46, X1, X7) |

## Webhooks & payments (P)

| Done-when | How to check |
|---|---|
| Stripe (or peer) signature verified | Handler rejects unsigned / wrong-secret bodies |
| Replay window | Old timestamp / reused event id rejected (59) |
| Price/quantity server-side | Client-only amount ignored |

## Supply chain (C)

| Done-when | How to check |
|---|---|
| Lockfile committed; CI uses it | `npm ci` / equivalent in CI |
| Actions pinned | SHA or version policy (61–62, X5) |
| Audit triage | `npm audit` reviewed; criticals have ticket or waiver note |

## Generative AI (G)

| Done-when | How to check |
|---|---|
| Tools allowlisted | Model cannot call arbitrary shell/SQL/pay |
| Model output untrusted | Output that hits HTML/SQL/URL goes through same validators as user input |

## Evidence pack (first-users+)

Keep a short note (Notion/repo `SECURITY.md` section):

1. Last dependency audit date  
2. IDOR tests that exist  
3. Webhook signing confirmed  
4. Who has prod console access (X8)
