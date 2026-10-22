# Shared infra vs existing services (studio policy)

Default commercial frame: economical local-business packs (base sites +
monthly care). **Integrate first; build proprietary only where support is paid.**

## Principle

At low one-time + low monthly fees, multi-tenant **booking / ordering / payments**
you own is usually a trap: incidents, GDPR, uptime, “SMS didn’t send”, and a
feature race against Cal.com / Square / delivery platforms.

Clients buy **site + care**, not invisible infrastructure — unless you explicitly
sell and staff that product.

> If a failure wakes you at night (payments, double-booked slots, notifications),
> it must **not** be your code on day one.

## What to own (shared shell — yes)

| Piece | Why |
|---|---|
| Templates + vertical spines | Your product |
| Deploy / DNS / hosting under the care plan | Fits default care if scoped |
| Optional thin **client hub** (links to form/booking, site status) | Light shared UX |
| **Menu / hours / services CMS** (content only) | Often worth owning later — it’s the site’s content, not a marketplace |

## What to integrate (default)

| Need | Prefer | Notes |
|---|---|---|
| Bookings | Cal.com, Calendly, SimplyBook | Embed or deep link; priced add-on |
| Food ordering | Local platforms / Deliverect-class / Stripe Payment Link + form | Don’t rebuild Deliveroo |
| Maps / discovery | **Google Business Profile** + Maps link | Use for findability; don’t replace GBP with a fake directory |
| Payments / deposits | Stripe Payment Links or Checkout | PCI stays with Stripe |
| Forms → email | Resend / Formspree / Basin / server action | Spam + thank-you; `security-checklist` |
| Chat | WhatsApp / tel: sticky | Not full Intercom in base pack |

Detail catalog: [integrations.md](integrations.md).

## Proprietary “later” — go / no-go

Build or deepen shared engines only when **most** of these are true:

1. Dozens of clients on the **same** workflow  
2. Add-on revenue covers maintenance and support time  
3. Off-the-shelf tools block branding or margins in a way clients feel  
4. You can staff break-glass (or accept defined SLAs in the care contract)

**Typical order if you go proprietary:**

1. Shared **menu / hours / services** content CMS  
2. White-label **booking** only if embeds fail the offer  
3. **Ordering** last (highest operational risk)

## Anti-patterns

- Rebuilding Calendly inside a base job “because Cursor can”  
- Promising Google-rank or order logistics as part of base care  
- Fake review stars or a home-grown “directory” instead of GBP  
- One shared DB of all clients’ PII without tenancy + deletion story → `compliance-checklist` + `security-checklist`

## Agent behaviour

When designing packs or add-ons: **recommend embed/SaaS first**, name the vendor,
quote as add-on. Propose proprietary shared infra only if the user asks for a
platform strategy or the go-criteria above clearly apply — and list support risk
in one line.
