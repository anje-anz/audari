# Stack defaults (Vercel + DNS)

Assume **Next.js on Vercel** unless the project says otherwise.

## First deploy checklist

| Step | Done-when |
|---|---|
| Project created | Correct git repo / monorepo root or `templates/<slug>` |
| Production branch | `main` (or agreed) auto-deploy |
| Env vars | Listed in handoff; no secrets in git; preview envs separated if needed |
| Domain added in Vercel | Shows valid until DNS propagates |
| DNS | Client or studio sets records below |
| HTTPS | Cert issued (usually automatic) |
| Redirect | `www` ↔ apex: **one** canonical (match `site-checklist` D8) |

## DNS records (typical Vercel)

Exact values come from the Vercel domain UI — never invent IPs from memory.

| Goal | Usual shape |
|---|---|
| Apex | A/ALIAS/ANAME as Vercel shows **or** DNS provider “Vercel” template |
| `www` | CNAME → Vercel target |
| Preview | Leave `*.vercel.app` for staging; don’t index (`site-checklist` X2) |

## Email DNS (danger zone)

| Record | Care default |
|---|---|
| MX / SPF / DKIM / DMARC | **Do not change** unless the care quote includes email or the client asks in writing |
| Accidental MX wipe | Common outage — runbook treats as P1 if studio touched DNS |

## Google Business Profile

Site URL on GBP must match canonical production URL after go-live (`local-seo` / `vertical-templates`).

## Multi-client hygiene

| Practice | Why |
|---|---|
| One Vercel project per client (or clear monorepo + project) | Blast radius |
| Naming `client-slug` | Support speed |
| Access: studio team + optional client viewer | Handoff |
| Don’t reuse one `.env` across clients | Secret leak / wrong Stripe keys |
