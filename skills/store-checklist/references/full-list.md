# Store submission — full index

Upgrades viral “20 things before App Store” lists. Apply Android equivalents
where noted. Labels are check prompts, not legal conclusions.

## L — Legal & privacy surfaces

| ID | Check | Done-when |
|---|---|---|
| L1 | **Privacy Policy URL** in store metadata | Live HTTPS page; matches SDKs actually used |
| L2 | **Terms** linked (esp. on paywall) | Reachable from subscription UI |
| L3 | **Privacy nutrition labels** (iOS) / Data safety (Play) | Match real collection/sharing |
| L4 | **Privacy Manifest** (`PrivacyInfo.xcprivacy`) | Present for app + required third-party SDKs |
| L5 | **SDK manifests** | Vendors that need manifests ship them; no silent trackers |
| L6 | **ATT** (App Tracking Transparency) | Prompt only if you track across apps/sites; timing lawful |
| L7 | **AI disclosure / consent** | If generative AI: user-facing disclosure; no silent training claims |
| L8 | **Only required data** | Signup asks minimum; justify every permission |

## A — Account & access

| ID | Check | Done-when |
|---|---|---|
| A10 | **Account deletion in-app** | Settings path works end-to-end (Apple guideline) |
| A11 | **Demo / reviewer login** | Working credentials in Review Notes; not expired |
| A12 | **Support URL** | Opens; human can contact you |
| A13 | **Export / delete** aligns with Privacy claims | Same product path as compliance 7 |

## Q — Quality & honesty

| ID | Check | Done-when |
|---|---|---|
| Q20 | **Test on real device** | Critical flows on physical hardware |
| Q21 | **No placeholders** | No lorem, fake avatars as “users”, “Coming soon” as shipped feature |
| Q22 | **Every in-app link** | Support, legal, social, IAP restore — no 404 |
| Q23 | **Permission purpose strings** | Camera/mic/location/photos: real English (and locales) reasons |
| Q24 | **Screenshots match build** | Same UI version as binary uploaded |
| Q25 | **Describe only what exists** | Store copy = shipped features only |

## $ — Money (if IAP / subscriptions)

| ID | Check | Done-when |
|---|---|---|
| $30 | **Sandbox purchase test** | Buy, restore, cancel path verified |
| $31 | **Price + period clear** | Before subscribe; localized |
| $32 | **Terms + Privacy on paywall** | Links visible without digging |
| $33 | **No dark patterns** | Easy cancel path disclosed (store + in-app) |

## P — Platform policy

| ID | Check | Done-when |
|---|---|---|
| P40 | **Not a thin web wrapper** | Meaningful native value beyond WKWebView shell (unless approved category) |
| P41 | **Background modes / entitlements** | Only what you use |
| P42 | **Export compliance / encryption** | Honest answers in Connect / Play console |

## Kit extras

| ID | Check | Why |
|---|---|---|
| X1 | **Crash-free on review path** | Fresh install → login → core value in <3 min |
| X2 | **Age rating questionnaire honest** | Mismatch → removal risk |
| X3 | **Play: Data safety + ads declaration** | Android twin of L3 |
| X4 | **Play: Foreground service / exact alarm** | Declare if used (policy churn) |
