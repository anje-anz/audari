# Verify store submission (your own builds only)

Evidence is a build number, console panel, recording, or file in the archive.
Store rules change — re-read the current Apple / Google policy pages before each
major submit (`docs/AUTHORITY.md`).

## Legal & privacy (L)

| ID | Check |
|---|---|
| L1 | `curl -sI <privacy-url>` → 200 over HTTPS; page names the SDKs the build actually ships |
| L3 | Dependency list (`Podfile.lock`, `Package.resolved`, Gradle deps) compared line by line with nutrition labels / Data safety answers |
| L4–L5 | `PrivacyInfo.xcprivacy` present in the **built archive** (not only the repo) for app and SDKs that require one |
| L6 | ATT prompt appears only if the build tracks across apps/sites; otherwise no prompt and labels say no tracking |

## Account & access (A)

| ID | Check |
|---|---|
| A10 | Screen recording: create account → delete in-app → account gone server-side |
| A11 | Reviewer credentials tested on a **fresh install** within 24 h of submit |
| A12 | Support URL opens and reaches a human channel |

## Quality (Q)

| ID | Check |
|---|---|
| Q20 | Critical flows run on a physical device for each store |
| Q22 | Every in-app link (support, legal, restore) opened once; none 404 |
| Q23 | `Info.plist` usage strings / Android permission rationale read as real reasons, localized where the app is |
| Q24 | Screenshots taken from the build number being submitted |

## Money ($) — if IAP / subscriptions

| ID | Check |
|---|---|
| $30 | Sandbox: buy, restore, cancel — each recorded once |
| $31–$32 | Paywall shows price, period, Terms, and Privacy without scrolling or tapping "more" |

## Submit gate

All must be true before pressing submit:

- [ ] L1, L3, L4 (iOS) / X3 (Play)
- [ ] A10, A11, A12
- [ ] Q20, Q22, Q24
- [ ] $30–$32 if the app sells anything
- [ ] X1: fresh install → login → core value in under 3 minutes
