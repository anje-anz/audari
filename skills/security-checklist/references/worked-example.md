# Worked slice: what a real pass looks like (example SaaS)

Full narrative: `examples/saas-next-smoke.md`.

## Pattern to learn

**Pass:** Stripe webhook uses `constructEvent(raw, signature, secret)` and
rejects missing/invalid signatures — that is item **31**, not “we use Stripe”.

**Pass:** post-login redirect runs through `safeInternalPath` — item **69**.

**Still open elsewhere:** login abuse → hand off to `auth-abuse-guard` (do not
re-teach the full stuffing pipeline inside this skill).

## How to report

Cite **file + skill id**. Strengths and gaps in the same review — professional
tone, not a fear list.
