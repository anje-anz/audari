# Verify versioning hygiene

| Check | Pass |
|---|---|
| Source of truth | package.json / VERSION / tag policy documented in README |
| Tag exists for last release | `git tag -l` matches changelog |
| CHANGELOG has Unreleased or latest date | Not empty theatre |
| No secrets in notes | Grep release body |
| Policy pages | Effective date visible |
| Client ship | Template version recorded in handoff |
