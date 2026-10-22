# Stack defaults (this kit’s usual world)

Apply clusters with these wiring notes. Still do risk → fix → verify.

## Next.js (App Router) on Vercel

| Risk | Prefer |
|---|---|
| Secrets in client | `server-only` modules; env without `NEXT_PUBLIC_` for secrets |
| Authz miss | Check session **in Server Actions / Route Handlers**, not only in UI |
| CSRF on mutations | SameSite cookies + origin checks; or framework CSRF helpers |
| Headers | `headers()` in `next.config` / Vercel / middleware — CSP+HSTS (46, X7) |
| Uploads | Vercel Blob / S3 with type/size limits; never trust `Content-Type` alone |
| SSRF | Allowlist hosts for any `fetch(userUrl)` |

## Auth providers

| Provider | Security notes |
|---|---|
| **Clerk** | Use their session; still enforce **your** tenancy on DB rows; protect custom bridges with `auth-abuse-guard` |
| **Better Auth / Auth.js** | Cookie flags; credentials path gated; Passkeys if greenfield |
| **Supabase Auth** | RLS **on** for user data; service role only on server; never in client |

## Data

| Store | Notes |
|---|---|
| Postgres (Neon/Supabase/RDS) | Parameterized queries; least-privilege DB role for app |
| Prisma / Drizzle | Still check `where: { id, userId }` / tenant on every mutation |
| Redis / Upstash | No session PII in keys you log; auth rate-limit counters here |

## Payments

| Provider | Notes |
|---|---|
| **Stripe** | Webhook secret; idempotent event handling; never trust client `amount` |
| Customer Portal / Checkout | Prefer hosted Checkout to reduce PCI scope |

## AI features

| Pattern | Notes |
|---|---|
| Vercel AI SDK / tool calling | Explicit tool list; human-in-loop for pay/email/delete |
| RAG | Treat retrieved docs as untrusted for HTML/SQL; citation ≠ truth |

## What “professional” is not here

- Buying a WAF sticker without authz tests  
- “We use Clerk so we’re secure” without tenant checks  
- SOC2 marketing copy without the controls above
