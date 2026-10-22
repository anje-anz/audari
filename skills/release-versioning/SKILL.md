---
name: release-versioning
description: >-
  Serious versioning and release discipline: SemVer, CHANGELOG, git tags,
  release notes, versioning Privacy/Terms pages, and client-site vs product
  version lines. Use when cutting a release, tagging template kits or apps,
  shared plugins, “what’s the version?”, or keeping policy page dates honest.
  Not a full git branching religion; pairs with deploy-care for production cut.
disable-model-invocation: true
---

# Release & versioning

Make versions **meaningful and recoverable**: what shipped, when, and how to
roll back. Works for products (example SaaS), template monorepos (audari-templates),
and **policy documents** (Privacy/Terms revisions).

**Source:** Audari (this repo). SemVer:
[references/semver.md](references/semver.md). Changelog/tags:
[references/changelog-tags.md](references/changelog-tags.md). Policy versions:
[references/policy-versions.md](references/policy-versions.md). Client sites:
[references/client-sites.md](references/client-sites.md). Verify:
[references/verify.md](references/verify.md).

## Handoffs

| Topic | Skill |
|---|---|
| Prod deploy / care cut | `deploy-care` |
| App Store “What’s New” honesty | `store-checklist` |
| Privacy/Terms substance | `compliance-checklist` |
| Security of release artifacts | `security-checklist` (no secrets in tags/notes) |

## How to use

1. **Line:** `product` | `templates` | `client-site` | `policy-doc`  
2. Read the matching reference; propose version bump + changelog entry  
3. Do **not** rewrite git history or force-push unless the user explicitly asks  
4. Output the release block below  

## Modes

| Mode | Do |
|---|---|
| `cut-release` | SemVer bump + CHANGELOG + tag message + verify |
| `audit` | Check repo has version source of truth, tags match package, CHANGELOG current |
| `policy-bump` | New Privacy/Terms effective date + summary of changes (compliance owns substance) |
| `client-ship` | Record template version used + deploy identity (see client-sites.md) |

## Output format

```markdown
## Release — <name> / <line>
### Version
- Current: …
- Proposed: … (major|minor|patch) — why
### CHANGELOG entry
- …
### Git
- Tag: `vX.Y.Z`
- Notes: …
### Verify
- [ ] …
```

## Hard rules

1. **One source of truth** for version (package.json / VERSION / git tag policy) — document which.  
2. CHANGELOG is for humans; don’t only bump the number.  
3. Never put secrets in tags, release notes, or changelog.  
4. Policy pages: version/date visible on the page — see policy-versions.md.  
5. No “version theatre” (bumping major for marketing with no break).  

## Related

- `deploy-care`, `compliance-checklist`, `prod-checklist`, `vertical-templates`
