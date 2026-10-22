# Compliance checklist by product shape

Use with stage defaults. Items reference [full-list.md](full-list.md).

## marketing-site (portfolio, landing, blog)

**Usually need:** 1 (if analytics/newsletter), 4/C25–C26 if cookies, M49 company identity, I39 assets, 14 if you redistribute code samples.

**Often lighter:** full SaaS ToS, payments, DSA, App Store.

**Watch:** newsletter = marketing consent (6); Beehiiv/Mailchimp = processor (9–10).

**Chrome (meta, OG, 404, forms, sitemap):** use `site-checklist` — this skill only owns legal/consent/contact truth.

## saas (accounts, dashboard, API)

**Need early:** 1–2, 5, 7–10, 11–12, 14–15 if paid, P16–P19 as you grow, R55.

**Auth products:** deletion of account data; session/JWT — also `security-checklist` + `auth-abuse-guard`.

**AI features inside SaaS:** G57–G61.

## mobile (iOS / Android)

**All saas that apply**, plus **R53–R54** (account deletion in-app, privacy nutrition labels, IAP rules).

Privacy Policy URL required by stores; must match actual SDK list (ATT, analytics).

**Submission gate (screenshots, demo login, manifests, paywall UI):** use `store-checklist` — this skill owns policy *substance*; store-checklist owns Connect/Play rejection hygiene.

## marketplace / UGC

**All saas**, plus **U62–U64**, I41, stronger moderation ToS, often DSA-class analysis → **counsel**.

Payments split / KYC may trigger extra regulated regimes → **counsel**.

## content / media / community

Similar to UGC; copyright complains (I41); youth safety (P20); push marketing (6).

## chrome extension / desktop app

Disclose data leaving device; auto-update channels; code signing claims accurate; licence of bundled OSS (14).

## “We only use anonymous analytics”

Still document it (1, 5). IP addresses and cookie IDs are often personal data under GDPR — don’t self-exempt casually.

## Priority matrix (MVP public SaaS, EU-ish)

| Priority | Items |
|---|---|
| P0 ship-block | 1, 2, 7, 10 (honest), 14, 15 if paid, cookie truth (4), no kids trap (P20) |
| P1 week-1 | 5, 8, 9, 11–12, M49, subprocessors |
| P2 month-1 | P18 transfers, A46 a11y, trademark I38, store forms |
| Counsel | marketplace, health, under-16, ads+profiling, AI Act high-risk |
