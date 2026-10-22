# Compliance checklist by stage

Always pair with [by-product.md](by-product.md). When in doubt, ask counsel —
especially before taking payment or collecting special-category data.

## prototype

| Do | Why |
|---|---|
| Don’t publish false “GDPR certified / HIPAA / bank-grade” claims | Misleading |
| If waitlist email: say what it’s for; store minimally | 1, 5, 6 light |
| Confirm you didn’t paste GPL into a closed product without a plan | 14 |
| Confirm assets (fonts/images) are licensable | I39 |
| No children’s product without intentional design | P20 |

Skip full ToS theatre if the URL is private and collects nothing — but don’t lie in README/marketing.

## mvp (public URL or real users)

| Do | Owner |
|---|---|
| Privacy Policy + Terms live and linked in footer/signup | you → counsel review later |
| Honest list of processors (host, email, auth, analytics) | you |
| Cookie/tracker stance matches reality (or remove trackers) | you |
| Account deletion or email-based erasure path that works | you |
| Payment: price, renew, cancel disclosed before charge | you + Stripe/store |
| OSS licence inventory on release build | you |
| Security baseline (`security-checklist` mvp) | you |

**Ask counsel if:** health/finance data, under-16 audience, marketplace, or US+EU from day one with ads.

## first-users

| Do | Owner |
|---|---|
| Retention schedule + marketing consent hygiene | you |
| DPA executed with major processors | you / vendor paper |
| Breach contacts + who can press “notify” | you + counsel |
| Subprocessors page or appendix | you |
| Accessibility pass on critical flows | you |
| Trademark sense-check on name | you / counsel |
| App Store / Play account deletion & privacy forms accurate | you |
| AI: disclosure + training-use truth in policy | you |

## scale

| Do | Owner |
|---|---|
| Counsel review of Privacy + ToS for target markets | counsel |
| Transfer mechanism documented (SCC etc.) | counsel + you |
| DPIA if profiling / sensitive / large-scale monitoring | counsel |
| Insurance decision | you |
| DSA / AI Act classification if platform or high-risk AI | counsel |
| Tax/VAT setup correct for digital sales | accountant |
| Formal RoPA / audit readiness | you |
| Evidence pack (E65–E71): vendor register, request logs, decision notes | you |

## Explicit “not enough”

| Gesture | Still missing |
|---|---|
| Copied a generator privacy policy | Legal basis, real processors, retention |
| “We use cookies” banner that accepts everything by default | Valid consent where required |
| “Contact us to delete” with no process | Timelines, identity check, backups |
| ToS saying users own nothing forever | Often unenforceable / unfair — counsel |
