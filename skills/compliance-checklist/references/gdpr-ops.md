# GDPR operations (founder checklist)

**Not legal advice / not a certification.** Practical ops so “we have a Privacy page”
isn’t the whole story. Prefer this reference when the user says **GDPR**, DPA, DPIA,
retention, deletion, breach, RoPA.

Still **one skill**: `compliance-checklist`. Do not install random “GDPR skill” packs
that auto-generate certified policies.

## MVP bar (most small SaaS / studio clients)

| # | Control | Done-when |
|---|---|---|
| G1 | Know if you process personal data | Accounts, forms, analytics, email — usually yes |
| G2 | Privacy notice live & true | Matches stack ([stacks-processors.md](stacks-processors.md)) |
| G3 | Legal bases thought through | Per purpose; marketing ≠ account contract by default |
| G4 | Deletion / access path | Works in product or ticketed runbook |
| G5 | Processor honesty | Host, auth, email, payments listed; DPAs when required |
| G6 | Cookie/tracker stance | Non-essential wait for consent where required |
| G7 | Breach mindset | Who decides; who to call (not a full IR playbook yet) |

## First-users+

| # | Control | Done-when |
|---|---|---|
| G8 | Retention schedule | Written; jobs or calendar review |
| G9 | Records of processing (light RoPA) | Spreadsheet OK at start |
| G10 | Transfers story | If US vendors — know the mechanism (provider terms/SCC) |
| G11 | DPIA trigger check | Profiling, sensitive data, large-scale monitoring → counsel |
| G12 | Evidence pack | [evidence.md](evidence.md) |

## What the agent must not do

- Declare the company “exempt from GDPR” without facts  
- Invent SCCs or DPA signatures  
- Equate “we use Vercel” with “transfers solved” without reading current terms  
- Substitute this file for counsel on kids, health, or high-risk AI  

## Related kit

- Security TOMs → `security-checklist`  
- Auth abuse → `auth-abuse-guard`  
- Policy page versioning → `release-versioning`  
