# Compliance / launch obligations — full index

Starts from the viral “How To NOT Get Sued When Launching An App” (1–15), then
**completes** with regulatory, platform, and **evidence** items founders miss.
Labels are check prompts, not legal conclusions. Skill name: `compliance-checklist`.


## Original 15 (expanded notes)

| # | Topic | “Done” looks like |
|---|---|---|
| 1 | Privacy Policy | Public page: what you collect, why, legal basis, retention, rights, contact, subprocessors overview |
| 2 | Terms & Conditions | Public ToS: licence to use, acceptable use, liability limits (fair), governing law, dispute path |
| 3 | GDPR applicability | Document whether you process personal data of people in the EEA/UK; if yes, controllers/processors named |
| 4 | Cookie / tracker consent | Banner/CMP only if non-essential cookies/trackers; essentials documented; preference centre |
| 5 | Legal basis | Per purpose: consent, contract, legitimate interest (with LIA if used), legal obligation, etc. |
| 6 | Marketing consent | Email/SMS/push promo separate from account creation where required; easy unsubscribe |
| 7 | Data deletion / rights | Working path for access/erasure/portability requests within legal timelines |
| 8 | Data retention | Written schedule: what, how long, why; auto-delete or review jobs |
| 9 | DPAs with processors | Signed DPA (Art. 28-style) with hosting, email, analytics, auth, payments vendors as needed |
| 10 | Third-party disclosure | Policy lists categories of recipients / purposes (Stripe, Vercel, Resend, …) |
| 11 | Data security (org) | Appropriate technical + organisational measures; maps to `security-checklist` |
| 12 | Breach procedure | Who decides, 72h mindset for supervisory authority when GDPR applies, user notice when required |
| 13 | Intellectual property | Confirm you own or licence code/design/content; contributor/contractor assignments |
| 14 | Open-source licences | Inventory deps; honour copyleft/notice; no GPL surprise in proprietary SaaS without plan |
| 15 | Payments & subscriptions | Clear price, renewal, cancel; store/Stripe requirements; no dark patterns |

## P — Privacy & data (extra)

| ID | Check |
|---|---|
| P16 | **Records of processing** (Art. 30-style) for anything beyond a toy |
| P17 | **DPIA / risk assessment** when high-risk processing (profiling, large sensitive data, systematic monitoring) |
| P18 | **International transfers**: SCCs / adequacy / other mechanism for US (and other) vendors |
| P19 | **Subprocessors list** published or available; notify on material changes if promised |
| P20 | **Children**: age gate; COPPA / national minor rules; no tracking kids |
| P21 | **Sensitive data**: health, biometrics, special categories — avoid or counsel |
| P22 | **CCPA/CPRA** (or other US state laws) if you have California/US users at scale |
| P23 | **Data Protection Officer / representative** if thresholds met |
| P24 | **Privacy by design** in new features (default least data) |

## C — Cookies & marketing (extra)

| ID | Check |
|---|---|
| C25 | Classify each tag: essential / analytics / ads / social |
| C26 | No load of non-essential scripts before consent (where ePrivacy requires) |
| C27 | Server-side analytics alternatives documented if used to reduce cookies |
| C28 | Affiliate / pixel disclosures |

## T — Terms & consumer (extra)

| ID | Check |
|---|---|
| T29 | **Consumer rights** (EU): withdrawal for digital content where applicable; clear contract info |
| T30 | No unfair / surprising terms buried (auto-renew traps, unilateral rights) |
| T31 | Acceptable use + enforcement path |
| T32 | Limitation of liability that isn’t void as unfair (counsel) |
| T33 | Export of user content on cancel (portability UX) |

## $ — Payments (extra)

| ID | Check |
|---|---|
| $34 | Tax / VAT / OSS for digital services when selling in EU |
| $35 | Invoices / receipts with required fields |
| $36 | Refund policy aligned with law + store rules |
| $37 | No charging for something you can’t deliver; trial → paid clarity |

## I — IP & content (extra)

| ID | Check |
|---|---|
| I38 | Trademark search on product name before hard branding |
| I39 | Fonts, images, music, icons — licences allow commercial use |
| I40 | Training / scraped data claims — don’t falsely claim “rights cleared” |
| I41 | DMCA / notice-and-takedown contact if you host third-party content |
| I42 | Employee/contractor **IP assignment** + confidentiality |

## S — Security & incidents (compliance lens)

| ID | Check |
|---|---|
| S43 | Breach playbook contacts (counsel, host, insurer) |
| S44 | Customer notification templates (fact-check with counsel) |
| S45 | Logging access to personal data (who/when) for accountability |

Tech controls detail → `security-checklist`.

## A — Access & inclusion

| ID | Check |
|---|---|
| A46 | **Accessibility**: WCAG-oriented UI; EU **EAA** applicability for your product class |
| A47 | Language of mandatory legal pages matches markets you target |
| A48 | Discrimination / unfair denial of service policies if relevant |

## M — Markets & company ops

| ID | Check |
|---|---|
| M49 | **Company identity** on site (legal name, address, contacts) — Impressum-style where required |
| M50 | Business registration / VAT ID when selling |
| M51 | Professional indemnity / cyber insurance decision documented |
| M52 | Governing law & venue chosen deliberately (not copy-paste nonsense) |

## R — Platform & store rules

| ID | Check |
|---|---|
| R53 | Apple App Store Review Guidelines (IAP, account deletion, privacy nutrition) |
| R54 | Google Play policies (same themes) |
| R55 | Stripe / payment Restricted Businesses |
| R56 | Hosting / email Acceptable Use (spam, phishing) |

## G — Generative AI

| ID | Check |
|---|---|
| G57 | Disclose AI-generated content / chatbots when required or expected |
| G58 | EU **AI Act** transparency (e.g. Art. 50-class duties) if you ship in-scope systems |
| G59 | User content used for training — **opt-in/out** and policy truthfulness |
| G60 | Output ownership / licence to user stated in ToS |
| G61 | Prohibited uses (fraud, malware, CSAM) enforced in product + ToS |

## U — UGC / intermediary

| ID | Check |
|---|---|
| U62 | Are you a mere host or an active curator? Classification drives DSA-like duties |
| U63 | Notice-and-action / illegal content reporting channel |
| U64 | Repeat infringer policy |

## E — Evidence & governance (what “compliance” means day-to-day)

| ID | Check |
|---|---|
| E65 | **Single source of truth** — live Privacy / Terms URLs match the product (no stale Notion-only policies) |
| E66 | **Vendor / subprocessor register** — who processes what, where, DPA status |
| E67 | **Decision log** — why you chose consent vs LI, cookie stance, AI training claims (short notes OK) |
| E68 | **Access / deletion request log** — tickets + completion dates (even a spreadsheet) |
| E69 | **Breach / incident log** — even near-misses; maps to S cluster + `prod-checklist` |
| E70 | **Training / awareness** — founders + anyone with prod access know “don’t paste customer data into public AI” |
| E71 | **Buyer / investor DD pack** (scale) — policies + vendor list + last pen-test or review summary |

## Quick map: viral → kit

1→P · 2→T · 3→P · 4→C · 5→P · 6→C · 7→P · 8→P · 9→P · 10→P · 11→S · 12→S · 13→I · 14→I · 15→$
