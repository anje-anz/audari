# Care plan (monthly — amount from rate card)

Override amounts in the quote; **do not** leave inclusions vague.

## Included (default)

| Item | Detail |
|---|---|
| Hosting | Production deploy on studio Vercel team (or named host) |
| TLS | Platform-managed HTTPS |
| Uptime awareness | Studio notices obvious downtime (see runbook) — **not** a formal SLA with penalties |
| Break-glass | Studio can redeploy last known good / fix DNS if studio controls DNS |
| Tiny content tweaks | Up to **N=2** small text changes / month (typo, hour change, phone) — set N in quote |
| Dependency hygiene | Occasional platform/runtime bumps when required for security — batched, not continuous feature work |

## Explicitly optional (must be written if sold)

| Item | Note |
|---|---|
| DNS hosted at studio | Only if client delegates NS or points records as documented |
| Registrar paid by studio | Rare; usually client keeps registrar |
| Email on domain | Usually **out** — Google Workspace / Microsoft elsewhere |
| Monthly report | Out unless quoted |
| Image swaps beyond N | Paid tweak |

## Response expectations (honest language)

Use in quotes:

> We monitor and fix hosting/DNS issues under this care plan on business days.  
> This is not a 24/7 enterprise SLA. Content redesign, SEO campaigns, and new pages are quoted separately.

## Billing hygiene

- Care starts when production URL is live and handoff is sent  
- Pause care = site may stay up until period end; then migrate or archive policy stated in quote  
- Non-payment: document grace → read-only notice → takedown policy (your legal text)
