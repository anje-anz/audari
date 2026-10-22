# Common processors (EU-leaning SaaS starter)

**Not legal advice.** Typical **categories** founders forget to list. Replace with
*your* vendors; keep a living subprocessor register (E66).

| Category | Examples often used here | Usually need |
|---|---|---|
| Hosting / app | Vercel, Cloudflare, AWS, Fly | DPA; region honesty in policy |
| Database | Neon, Supabase, PlanetScale, RDS | DPA; backup location |
| Auth | Clerk, Auth.js+your DB, Supabase Auth, Cognito | DPA; session/data retention |
| Email | Resend, Postmark, SES, Mailgun | DPA; marketing vs transactional split |
| Payments | Stripe | DPA; PCI — prefer Checkout/Elements; no PAN in your DB |
| Analytics | Vercel Analytics, Plausible, GA4, PostHog | Consent if non-essential cookies/IDs; document |
| Errors | Sentry, Highlight | PII scrubbing in beforeSend; DPA |
| AI | OpenAI, Anthropic, Vercel AI Gateway | Policy truth on training; DPA/SCC as applicable |
| Support | Intercom, Plain, email inbox | Retention; access control |
| Storage | Vercel Blob, S3, R2 | Public vs signed URLs; deletion path |

## EU / public web default questions (mvp)

1. Do we process personal data of people in EEA/UK? (If accounts or analytics: usually yes.)  
2. Are Privacy + Terms **URLs live** and matching real processors?  
3. Cookie/tracker stance **matches** deployed tags (no fake “essentials only”)?  
4. Can a user request deletion — and can we actually do it (DB + auth + email lists)?  
5. Stripe/Checkout only — still disclose payments and refunds honestly.

## US-only / other markets

Same honesty bar. Add CCPA/state privacy notices when you have US consumers at
scale; don’t claim “GDPR N/A” just because the company is Delaware if you sell into EU.

## Counsel triggers (don’t DIY)

Payments at scale, children, health/finance special data, marketplace liability,
employment IP, binding corporate rules / complex transfers, AI high-risk use.
