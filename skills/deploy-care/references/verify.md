# Verify deploy & care readiness

| Check | How |
|---|---|
| Canonical HTTPS | Open prod URL; padlock; no mixed content on home |
| www/apex | One redirects to the other consistently |
| Deploy source | Vercel shows expected git SHA / message |
| Env | Required vars present in **Production**; no secret in client bundle |
| Forms | One real submit on staging or prod test address |
| Legal links | Privacy/Terms 200 |
| Care quote | Written inclusions match care-plan for this client |
| Handoff sent | Date noted |
| GBP URL | Matches canonical (if they have GBP) |

Soft-launch chrome depth → `site-checklist` verify.md.
