# CHANGELOG & git tags

## CHANGELOG.md (Keep a Changelog style)

```markdown
## [Unreleased]

## [1.2.0] - 2026-10-22
### Added
- …
### Fixed
- …
### Changed
- …
```

- Newest first under releases  
- Link compare URLs optional  
- User-facing language; ticket IDs optional at end of line  

## Tags

| Practice | Do |
|---|---|
| Annotated tag | `git tag -a v1.2.0 -m "…"` |
| Match package version | `v` prefix consistent |
| Tag only from main/release branch | After CI green if CI exists |
| Move tags | Avoid; cut a patch instead |

## Release notes (GitHub/store)

Short subset of CHANGELOG for humans; App Store honesty → `store-checklist` Q25.

## Agent git safety

- No `push --force` to main  
- No commit unless user asked (studio rule)  
- Suggest commands; user confirms push  
