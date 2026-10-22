# Anti-patterns (auth-abuse-guard)

## Controls that fail stuffing

| Anti-pattern | Why it fails |
|---|---|
| Ban single IPs | Botnets, residential proxies, CGNAT |
| “5 tries then lock account” | Attacker locks victims; stuffing uses 1–2 tries |
| Rate limit only by IP | Spreads under threshold per IP |
| CAPTCHA on every login forever | Farms + UX death; use proportional |
| Bigger bcrypt cost under attack | Amplifies CPU DoS |
| Different errors for unknown email | Account enumeration |
| Trust browser “I am mobile” UA | Trivial to forge |

## Product / UX traps

- Locking users after shared-household NAT false positives
- Emailing “your account is locked” storms (support + panic)
- Silent permanent bans without appeal on payment accounts
- Challenges that break password managers / Passkey flows

## Security theater

- TLS fingerprint as the *only* gate
- Device IDs in localStorage without binding/rotation
- Client-only rate limits
- Logging passwords “for fraud”

## Safer replacements

| Instead of | Prefer |
|---|---|
| Hard lockout | Soft delay + challenge + step-up MFA |
| IP ban list | Multi-key limits + edge bot score |
| Always CAPTCHA | Risk-banded Turnstile / proof-of-work |
| Raise hash cost | Cap concurrency + drop red band early |
| Custom “secret” login URL | Real gates; obscurity is optional extra only |
