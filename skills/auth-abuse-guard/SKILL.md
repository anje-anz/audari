---
name: auth-abuse-guard
description: >-
  Defend login, signup, and password-reset endpoints against credential stuffing,
  distributed bots, and expensive-hash DoS without locking out real users. Use
  when designing or reviewing auth, login APIs, rate limits, CAPTCHA, Turnstile,
  bot management, bcrypt/Argon2 cost, Passkeys, or interview-style “10k bots
  hammering login” questions. Prefer this over naive IP bans or account lockouts.
disable-model-invocation: true
---

# Auth abuse guard

**One-line rule:** score each auth request cheaply, challenge the doubtful ones,
and keep slow password hashing / IdP calls **behind** that gate.

This skill is defensive product guidance only. Do not provide attack playbooks,
credential lists, or bypass recipes.

## Defaults (ship these unless the user overrides)

1. **Cheap before expensive** — never run bcrypt/Argon2/IdP password verify as the first line of defense under load.
2. **No aggressive account lockouts** as the primary control (attackers lock victims out). Prefer soft delays, challenges, and step-up.
3. **Multi-key rate limits** — IP *and* account/email *and* device/session fingerprint *and* ASN/route — not IP alone.
4. **Proportional response** — low → allow; medium → challenge; high → drop/queue **before** hash.
5. Prefer **Passkeys / WebAuthn** (or social OAuth) for new products; passwords get the full gate.
6. Check passwords against known-breach corpora via **k-anonymity** (e.g. HIBP range API) on signup/change — not by uploading full passwords to random services.
7. Put bot/challenge termination at the **edge** when available (Cloudflare / Vercel Firewall / Turnstile), not only in app code.

## Threat model (name it first)

| Pattern | What it looks like | Wrong fix |
|---|---|---|
| **Credential stuffing** | Many IPs, 1–2 tries/account, leaked email+password pairs | “5 attempts then lock” |
| **Online brute force** | Many tries on few accounts | IP ban only |
| **Hash DoS** | Flood of login posts to burn CPU on slow hashes | Bigger servers only |
| **Lockout abuse** | Attacker triggers lock on victim emails | Hard lockout |
| **Enum / spray** | Timing or message differences on signup/login | Verbose “user not found” |

If the brief is stuffing-shaped, do **not** design as if it were single-IP brute force.

## Decision pipeline

Implement in this order (fail closed on infra errors for high-risk paths):

```text
1. Edge / WAF / bot score (if any)
2. Protocol & shape checks (method, content-type, body size, honeypot)
3. Multi-key rate limits + soft delay
4. Risk score (signals below)
5. Action: allow | challenge | step-up | drop
6. Only then: password verify / magic-link / OTP send
7. Uniform responses + constant-ish timing where practical
```

### Risk signals (combine; no single signal is enough)

Read [references/signals.md](references/signals.md) when implementing.

Minimum set:

- Request / TLS / client inconsistency (UA vs platform hints; edge bot score)
- Failure velocity for this client/device/ASN
- Known device / returning session cookie (bound, rotated, not sole trust)
- IP/ASN reputation and geo impossibility vs user baseline
- Rare email domains or disposable mail on signup (product-dependent)

### Actions

| Band | Action |
|---|---|
| Green | Proceed to verify |
| Yellow | CAPTCHA / Turnstile / proof-of-work; or email/SMS OTP step-up |
| Red | 429/403 or silent drop **before** hash; optional tarpit delay |
| Credential stuff suspected at scale | Temporary stricter challenges globally; alert |

## What not to do

- Block “the botnet” by IP list alone
- Global “5 failures → lock account” as the main control
- Reveal whether an email exists (`Invalid credentials` for both cases)
- Run full hash on clearly automated floods
- Trust `X-Forwarded-For` without trusting the proxy that sets it
- Log raw passwords or full session tokens
- Skip MFA/step-up for sensitive actions after a risky login

Details: [references/anti-patterns.md](references/anti-patterns.md).
Acceptance: [references/verify.md](references/verify.md).
**Worked example** (scan limits ≠ login gate):
[references/worked-example.md](references/worked-example.md).

## Stack mapping

Apply the same pipeline; wire with the project’s stack. See [references/stacks.md](references/stacks.md).

| Layer | Typical choices |
|---|---|
| Edge | Cloudflare Bot Management / WAF, Turnstile, Vercel Firewall |
| App auth | Clerk, Better Auth, Auth.js, Supabase Auth, Cognito |
| Hash | Argon2id (preferred) or bcrypt with tuned cost; never in the hot unauthenticated megapath without a gate |
| Limits | Redis / Upstash / Cloudflare rate limiting / Durable Object counters |
| Passwords | Passkeys first; HIBP-style breach check on set/change |

## Implementation checklist

When adding or reviewing login/signup/reset:

- [ ] Threat named (stuffing vs brute vs enum)
- [ ] Edge challenge or bot score in front of origin when on supported hosts
- [ ] Rate limits on ≥2 keys (account + IP or device)
- [ ] Risk band → allow / challenge / drop documented
- [ ] Password verify only after green/yellow-pass
- [ ] Lockout policy soft or absent; step-up preferred
- [ ] Identical error copy for bad user vs bad password
- [ ] Passkeys or OAuth offered if greenfield
- [ ] Breach-password check on signup/password change
- [ ] Metrics: challenge rate, hash QPS, stuffing-like velocity alerts
- [ ] Load test: gated path stays up when ungated hash would melt
- [ ] Acceptance criteria in [references/verify.md](references/verify.md) marked pass/fail

## Professional bar

Do not stop at “added Turnstile”. Stop when **verify.md acceptance** passes on staging
(or document explicit defer with trigger). Prefer evidence (metrics + handler order)
over checklist theatre.

## Interview / design-doc closer

> Score each auth request cheaply, challenge the doubtful ones, and protect the slow expensive step behind them — without using lockouts as a weapon against real users.

## Related kit skills

- `security-checklist` — full app-sec pass (authz, XSS, webhooks, AI tools, …)
- `prod-checklist` — broader production map (rate limiting sits in cluster A/H)
- `craft-budget` — frontend/premium site token policy (orthogonal)


## Out of scope

- Attacking or testing third-party sites
- Building “humanizers” or detector bypass tools
- Guaranteeing zero bots (goal is cost asymmetry + UX preservation)

