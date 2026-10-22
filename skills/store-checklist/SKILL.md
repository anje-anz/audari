---
name: store-checklist
description: >-
  App Store and Google Play submission checklist: privacy policy URL, in-app
  account deletion, demo login for review, paywall/IAP sandbox, ATT, privacy
  nutrition labels, privacy manifests, permission strings, screenshots, no
  web-wrapper theatre. Use before App Store / Play publish, “20 things before
  publishing your app”, or store rejection prep. Hands off deep privacy/ToS to
  compliance-checklist; authz/secrets to security-checklist.
disable-model-invocation: true
---

# Store checklist (App Store / Play)

**Not legal advice.** Submission **gate** for iOS/Android. Completes viral
“20 things before publishing” lists into staged, verifiable checks.

**Source:** Audari (this repo). Index:
[references/full-list.md](references/full-list.md). Stages:
[references/by-stage.md](references/by-stage.md). Viral map:
[references/viral-app-store-20.md](references/viral-app-store-20.md).

## Handoffs

| Topic | Skill |
|---|---|
| Privacy Policy / Terms substance, GDPR, cookies | `compliance-checklist` |
| Authz, secrets, upload security | `security-checklist` |
| Login stuffing on shared demo accounts | `auth-abuse-guard` (still protect prod) |
| Web marketing site chrome | `site-checklist` |

## How to use

1. **Store:** `ios` | `android` | `both`
2. **Stage:** `preflight` | `metadata` | `submit`
3. Walk clusters; every gap needs **done-when** evidence (URL, screenshot, build number)
4. Never invent features in store copy

## Clusters

| # | Cluster | Covers |
|---|---|---|
| L | Legal & privacy surfaces | Policy URL, terms on paywall, nutrition labels, manifests, ATT, AI disclosure |
| A | Account & access | In-app deletion, demo reviewer login, minimize data asked |
| Q | Quality & honesty | Real device, no placeholders, links work, screenshots match, describe only what ships |
| $ | Money | Sandbox IAP, clear price/period, no dark-pattern paywall |
| P | Platform policy | No thin web wrapper, permission purpose strings, SDK privacy manifests |

## Output format

```markdown
## Store checklist — <ios|android|both> / <stage>
### Blockers (rejection-likely)
- **<id>** — done-when · evidence
### Should before submit
- …
### Handoff
- /compliance-checklist — …
```

## Related

- `compliance-checklist` — R53–R54 depth + Privacy/Terms content
- `security-checklist` — app-sec under the binary
- `site-checklist` — if you also ship a marketing site
