# Viral “20 things before launching” → this skill

Instagram-style “have Claude do before launching your app” lists. **Do not** run
as a flat 20 dump — map to stage + clusters, then risk → fix → verify.

| # | Viral label | Kit | Notes |
|---|---|---|---|
| 1 | Hide API keys | S 1–3, 14 | Server env only; never `NEXT_PUBLIC_` for secrets |
| 2 | Purge Git secrets | S 13 | History scan; rotate anything that leaked |
| 3 | Use public DB key | S + stacks | **Publishable/anon** client key ≠ service role; RLS required |
| 4 | Enable row-level security | Z 7, 41, 49 | Supabase/Postgres RLS on user tables |
| 5 | Encrypt sensitive data | 48 + X7 | TLS everywhere; field encrypt only where needed |
| 6 | Enforce server-side auth | 15, Z 5 | Server Actions / Route Handlers check session |
| 7 | Lock record access | Z 6, 33 | IDOR tests — user A ≠ user B’s rows |
| 8 | Block field tampering | Z 51 | Mass assignment / allowlisted PATCH |
| 9 | Secure session cookies | A 25, 47 | HttpOnly Secure SameSite |
| 10 | Hash passwords | A 4 | Prefer managed auth / Argon2id — never roll weak MD5 |
| 11 | Rate limit login | R 28 → `auth-abuse-guard` | Multi-key + challenge, not IP alone |
| 12 | Add bot protection | → `auth-abuse-guard` | Turnstile/edge before hash |
| 13 | Parameterize queries | I 17–18 | ORM / bound params |
| 14 | Validate all input | I 16, 34 | Schema on write paths |
| 15 | Escape user content | I 19, W | No raw HTML from users/model |
| 16 | Restrict file uploads | I 21 | Type/size/storage path |
| 17 | Trim API responses | **X9** | Don’t return secrets, hashes, internal ids unnecessarily |
| 18 | Add security headers | W 46, X1 | CSP HSTS frame |
| 19 | Force HTTPS | X7 / prod TLS | Platform + HSTS |
| 20 | Scan dependencies | C 37–38, 62 | Lockfile + audit triage |

**Wrong viral advice fixed here:** “public DB key” means the **publishable** key with
RLS — not opening the database to the world. “Rate limit login” alone is incomplete →
`auth-abuse-guard`.
