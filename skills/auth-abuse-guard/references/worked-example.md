# Worked slice: product limits ≠ login gate (example SaaS)

Full narrative: `examples/saas-next-smoke.md`.

## Pattern to learn

The product correctly rate-limits **scan** APIs (`consumeGuestRateLimit` /
`consumeUserRateLimit`). Login still did:

```text
read form → supabase.auth.signInWithPassword(...)
```

with no edge challenge / multi-key limit / Turnstile **before** the IdP call.

**Wrong conclusion:** “They have rate limits, auth is fine.”  
**Right conclusion:** name the threat (stuffing/hash DoS), then require the
pipeline on **login/signup/reset** — [verify.md](verify.md) acceptance.

## How to report

> **Auth abuse** — risk: ungated password verify · fix: cheap gate then IdP ·
> verify: under flood, IdP/hash QPS flat; challenges/429 dominate
