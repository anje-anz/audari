# Verify the auth abuse gate

Defensive checks only on **your** staging/prod. Goal: prove the **expensive**
step is behind the gate and real users aren’t soft-locked.

## Acceptance (mvp)

| Criterion | Pass looks like |
|---|---|
| Cheap before expensive | Under synthetic flood of bad logins, **hash/IdP QPS stays flat** while edge/app returns 429/challenge |
| Multi-key limits | Same email from many IPs still challenges/limits; same IP many emails still limits |
| Uniform errors | Unknown email vs wrong password → same copy (and similar timing if practical) |
| Soft lockout | Victim account still usable after attacker spam (challenge, not hard lock) |
| Turnstile/CAPTCHA | Server verifies token; missing/invalid token never reaches password verify |
| Fail closed | Redis/limit-store down → login degrades to challenge-all or deny, **not** open hash |

## How to check (owned environments)

1. **Metrics** — dashboards for: challenge issuance rate, hash QPS, 429 rate, login success rate, latency.  
2. **Staging drill** — scripted gentle load on `/api/auth/*` (your env only); confirm challenges fire before CPU melts.  
3. **Code path read** — order in handler is edge → limit → challenge verify → **then** `signIn`/hash.  
4. **Config** — Cloudflare/Vercel rules on auth paths; Turnstile siteverify server-side.  
5. **Enum** — signup/login messages reviewed for account existence leaks.

## Not a pass

| Gesture | Why it fails |
|---|---|
| “We rate-limit by IP” only | Stuffing distributes IPs |
| Hard lockout after N fails | Attacker locks customers out |
| CAPTCHA only in the browser, never verified | Bots skip the widget |
| Raising bcrypt cost under attack | Amplifies hash DoS |
| No alerts | You learn from Twitter |

## Handoff

App-sec outside login (IDOR, XSS, webhooks) → `security-checklist`.  
Infra rate limits / edge capacity → `prod-checklist`.
