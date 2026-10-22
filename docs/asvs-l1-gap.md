# OWASP ASVS → security-checklist (coverage snapshot)

**Benchmark:** OWASP Application Security Verification Standard (use current stable
from https://asvs.owasp.org/ — v5.x as of 2025).  

ASVS uses leveled requirements. This file treats **“L1-minded”** as: controls every
internet-facing app should take seriously before real users. It is a **mapping aid**,
not an official ASVS level attestation.

Legend: **Y** = kit covers with verify guidance · **P** = partial · **N** = out of scope / defer to SSDF or specialist.

| Theme (ASVS-oriented) | Kit home | Status | Notes / gap |
|---|---|---|---|
| Secrets not in client/repo | S 1–3, 13–14, X10 | Y | History purge called out |
| Authn strength / session | A 4, 25–26, 47 | Y | Deep stuffing → `auth-abuse-guard` |
| Authz / IDOR / tenancy | Z 5–7, 33, 49, 51, X6 | Y | Highest ROI called out |
| Input validation / injection | I 16–19, 52–53 | Y | Includes model output as input |
| File upload / path / SSRF | I 21–23, X4 | Y | |
| CSRF / CORS / cookies | W 20, 27, 47 | Y | |
| Security headers / TLS | W 46, X1, X7 | Y | |
| Crypto at rest (field) | 48 | P | When/how lightly specified |
| Logging & monitoring | M 42–43 | P | Not a full SIEM program |
| Backup / recovery | 44 + `prod-checklist` | P | Care sites → `deploy-care` |
| Dependency / supply chain | C 37–38, 60–62, X5 | Y | Pin + audit triage |
| CI/CD integrity | 60–61 | P | OIDC/least privilege at scale stage |
| GraphQL abuse | X2 | P | Only if GraphQL used |
| MFA / Passkeys | 55, X3 | P | Risk-based, not universal mandate |
| Privacy of logs / PII in events | overlaps compliance | P | Point to compliance M20 / security 11 |
| Formal threat model doc | — | N | Add if product enters regulated scale |
| Full ASVS L2/L3 (crypto design, advanced) | — | N | Out of kit by design |
| Org SSDF (PO: training, roles) | NIST SSDF | N | People/process beyond agent skills |

## How to use this file

1. Before claiming a product is “hardened”, walk **Y** rows for the stage (`by-stage.md`).  
2. Turn **P** into tickets or deferrals with triggers.  
3. Do not mark **N** as failures for a thin local vitrine — wrong bar.  
4. Re-check against ASVS release notes when OWASP ships a new major.

## Related

- `skills/security-checklist/`  
- `docs/AUTHORITY.md`  
