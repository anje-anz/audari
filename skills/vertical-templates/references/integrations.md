# Integrations (add-ons, prefer existing products)

Default: **configure a solid SaaS**, don’t build a booking engine in the base pack.
Policy and go/no-go for proprietary multi-tenant infra: [shared-infra.md](shared-infra.md).

| Need | Prefer | Notes |
|---|---|---|
| Booking | Cal.com, Calendly, SimplyBook | Embed or deep link; add-on |
| Forms → email | Resend, Formspree, Basin, native server action | Spam + thank-you; `security-checklist` |
| Chat | WhatsApp Business link, not full Intercom | Sticky CTA |
| Payments deposit | Stripe Payment Link | Rare in base; quote separately |
| Maps | Google Maps embed | API key restrictions if used |
| CMS light | MD/files or headless later | Blog = add-on |
| Analytics | Plausible / Vercel Analytics / GA4 | Consent → `compliance-checklist` |

## Proprietary later

If you build Cursor-made “plugins”, treat them as **versioned add-ons** with a
fixed quote and a one-page setup doc — still behind the same intake and security bar.

## Anti-pattern

Rebuilding Calendly inside the template “because we can” for a thin base job.
