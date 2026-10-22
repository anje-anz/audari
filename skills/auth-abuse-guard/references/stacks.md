# Stack wiring (auth-abuse-guard)

Map the pipeline to common stacks. Prefer managed edge + managed auth when the product allows.

## Vercel + Cloudflare

1. **Cloudflare** in front (or CF for DNS + proxy): WAF rate rules, Bot Fight / Bot Management, Turnstile widget on login UI.
2. **Vercel Firewall** / custom rules: extra path-based limits on `/api/auth/*`.
3. App: after Turnstile server verify → then Better Auth / Auth.js / Clerk backend.

Origin should assume edge can fail open: still keep app-level multi-key limits.

## Clerk

- Enable bot/attack protections Clerk exposes for the plan.
- Add Turnstile or similar on custom sign-in UIs.
- Prefer Clerk’s rate limits + Passkeys; add edge rules on the Clerk-hosted pages’ vanity domain if applicable.
- Do not re-hash passwords yourself — protect the **routes that trigger Clerk** from floods (SSR forms, API bridges).

## Better Auth / Auth.js (Next.js)

- Middleware or route handlers: rate limit (Upstash Redis) keyed by IP + email normalized.
- Verify Turnstile token in the same handler **before** `signIn("credentials")`.
- Credentials provider: Argon2id/bcrypt only after challenge pass.
- Expose Passkeys / OAuth as primary CTAs.

## Supabase Auth

- Edge rate limits on `/auth/v1/token` and related via CF.
- CAPTCHA integration Supabase documents (hCaptcha/Turnstile).
- Disable noisy user-enumeration where settings allow; uniform errors in your UI layer.

## DIY (Express / Hono / Fastify)

```text
edge → turnstileVerify → rateLimit({ip, email}) → riskScore → 
  challenge? → passwordVerify → session
```

Use a shared counter store (Redis). Fail closed on Redis outage for **login** (or degrade to challenge-everything), not fail open to unlimited hashing.

## Password hashing

- Prefer **Argon2id** with memory/time calibrated to ~50–100ms on target hardware under normal load — not seconds.
- Under attack, **do not** raise cost dynamically in a way that deepens DoS; rely on gates instead.
- Cap concurrent hash operations per process.

## Observability

Alert on: hash QPS↑, challenge solve rate↓, failures per ASN↑, login latency↑ with CPU↑. Those together scream stuffing/DoS.

Proof of control: [verify.md](verify.md).

## Stripe Customer Portal / magic-link adjacent

Treat **magic-link send**, **OTP send**, and **password-reset** as expensive/abusable
like login: same multi-key limits + challenge before send.
