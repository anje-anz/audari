# Worked example: SaaS Next.js smoke (fictional)

**Target:** anonymized Next.js SaaS (App Router, Vercel, Supabase Auth, Stripe
Checkout/webhooks) — composite teaching case, not a public identify-the-repo puzzle.  
**Stage called:** soft-public / first-users.  
**Mode:** observational only — no exploit steps, no `.env` values.

This example teaches agents **how to apply** the kit, not how to shame a repo.

---

## 1. Choose skills (not all at once)

| Surface seen | Skill |
|---|---|
| Public marketing + legal pages | `site-checklist` + `compliance-checklist` |
| Login/signup server actions | `auth-abuse-guard` (+ security A) |
| Stripe webhook + secrets layout | `security-checklist` P / S |
| Scan rate limits, cron, workers | `prod-checklist` lean (not full 101) |

`craft-budget` skipped — not an award-site pass.

---

## 2. Compliance — what “good” looks like

**Evidence:** `app/privacy/page.tsx`, `app/terms/page.tsx`, copy in
`lib/translations.ts` (processors, Stripe MoR, deletion from Settings,
cookie honesty: session + locale/theme + Vercel Analytics, no fake “accept all”).

**Lesson for the agent:**

> When Privacy/Terms are substantive and match the stack, say **OK with evidence**.
> Do not invent GDPR theatre. Still hand deep counsel topics to humans.

**Residual:** keep evidence pack (DPA status per vendor) as living register —
compliance `E66`, not a site chrome issue.

---

## 3. Security — split pass vs gap

### Pass (cite the control)

| Finding | Evidence | Skill id |
|---|---|---|
| Stripe webhook verifies signature | `app/api/billing/webhook/route.ts` → `constructEvent` | P 31 |
| Missing secret → 503 (fail closed-ish) | same file | 63 mindset |
| Post-login `next` sanitized | `lib/auth/safe-path.ts` | 69 |
| Secrets documented, not committed | `.env.example` lists keys; warns never commit | S |

**Lesson:** praise concrete controls. “You use Stripe” is not a pass; **signature
verify** is.

### Gap

| Finding | Evidence | Skill |
|---|---|---|
| Password login has no gate before IdP | `loginWithPassword` → `signInWithPassword` immediately | `auth-abuse-guard` |

Scan/guest routes **do** rate-limit (`consumeGuestRateLimit` / `consumeUserRateLimit`).
**Lesson:** rate limits on the product API ≠ auth abuse guard on login.

---

## 4. Site checklist — classic “metadata lies”

| ID | Finding | Evidence |
|---|---|---|
| D3 | OG points at `/og.png` | `app/layout.tsx` `openGraph.images` |
| D3 | File missing | `public/` has icons/svg, **no** `og.png` |
| D6–D7 | No app `robots.ts` / `sitemap` | glob empty |
| U10 | Custom not-found only under share route | `app/r/[token]/not-found.tsx` only |
| D5 | SVG icon present | `/app_icon.svg` — partial favicon set |

**Lesson for the agent:**

> Verify assets **exist**, don’t trust metadata strings.  
> Soft-launch gate in `site-checklist/references/verify.md` would have failed D3.

---

## 5. Prod lean — don’t derail

Observed: health/quality scripts, monitoring cron bearer, Redis for deep queue.
**Lesson:** mention continuity if relevant; **do not** propose Kubernetes because
`full-list.md` has item 8.

---

## 6. Model output (what to write to the user)

```markdown
## Smoke — example SaaS / first-users (observational)

### Blockers
- **site D3** — og:image → /og.png missing on disk
- **auth-abuse** — login/signup/reset ungated before Supabase password verify

### Should
- **site D6–D7** — robots + sitemap for public URLs
- **site U10** — root `not-found.tsx`

### N/A
- Full prod 101 / L2 DAI — Vercel PaaS owns that layer

### OK
- **Compliance** — Privacy/Terms + Stripe MoR + export/delete (evidence: …)
- **Payments** — webhook signature verify (security P31)
- **Redirect** — safeInternalPath on login next

### Handoff (fix order)
1. site chrome (og, robots, 404)
2. auth-abuse gate on `(auth)/login/actions.ts`
3. compliance evidence register (optional)
```

---

## 7. What this taught the kit

| Failure mode | Kit response |
|---|---|
| Agent might rubber-stamp “has openGraph” | `site` verify.md: check file/URL 200 |
| Agent might say “has rate limits” after seeing scan limits | `auth` verify: limits must sit on **login** path |
| Agent might dump 70 security items | Smoke procedure: stage + evidence only |
| Electron app as smoke target | `docs/smoke.md`: prefer web SaaS for site skill |

---

## 8. Fix turn (separate)

Only when the user asks. Suggested order: **D3 og asset → robots/sitemap →
not-found → auth gate**. Each fix should re-check the skill id, not “make pretty”.
