# Evidence pack (what “done” means at work)

Professionals don’t stop at “we have a Privacy Policy page”. Keep a thin folder
(repo `/compliance` or Notion) that a buyer or counsel can skim.

## Minimum pack (first-users)

| Artifact | Contents |
|---|---|
| Policy URLs | Live Privacy, Terms, (Cookies) — dates + version |
| Subprocessor list | Vendor, purpose, region, DPA status (E66) |
| Retention note | What you keep, how long, why (8) |
| Deletion runbook | Steps + owner + SLA mindset (7) |
| Breach contacts | Who decides, who notifies (12) |
| Request log | Access/erasure tickets (E68) — even a spreadsheet |

## Soft-launch pack add-ons

| Artifact | Contents |
|---|---|
| Cookie inventory | Tag → category → consent required? (C25) |
| Decision log | Consent vs legitimate interest notes (E67) |
| OSS licence scan result | Date + tool (`license-checker`, etc.) |

## Scale / DD pack

| Artifact | Contents |
|---|---|
| RoPA-style inventory | Purposes, categories, recipients (P16) |
| Transfer story | SCC / provider terms if needed |
| Pen-test or security review summary | Pointer to `security-checklist` evidence |
| Insurance / counsel letters | If any |

## Review output should cite evidence

When using this skill, prefer:

> **Gap: deletion path** — no runbook · owner: you · evidence: missing E68  
> **OK: Stripe** — Checkout only · evidence: no PAN columns in schema review
