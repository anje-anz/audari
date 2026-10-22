# Client sites (Audari / vertical packs)

Client vitrines rarely need public SemVer marketing — they need **traceability**.

## Record per go-live

| Field | Example |
|---|---|
| Client slug | `riverside-plumber-lee` |
| Template kit version | `audari-templates@1.4.2` |
| Vertical slug | `plumber` |
| Production URL | `https://…` |
| Deploy id | Vercel deployment URL / SHA |
| Care start | date |

Keep in handoff (`deploy-care`) or `CARELOG.md`.

## Updates under care

| Change | Versioning |
|---|---|
| Typo / hours | No kit bump; note in care log |
| Pull new template features | Record new kit version before deploy |
| Breaking template change | Don’t force onto client without quote; MINOR/MAJOR on kit first |

## Shared proprietary plugins (later)

If you ship a shared booking/menu service: **SemVer + CHANGELOG** mandatory; clients pin compatible range.
