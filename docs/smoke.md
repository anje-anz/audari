# Smoke-test skills on a real repo

Viral lists die in chat. Skills earn trust when an agent runs them on **your**
code and returns **evidence-backed gaps** — not 40 unchecked boxes.

## When to smoke

- After adding or deepening a checklist skill  
- Before trusting the skill on a client repo  
- When the user says “smoke”, “prova su un progetto”, or “review with checklists”

## Pick a target

| Prefer | Avoid for first smoke |
|---|---|
| Next/Vercel SaaS or marketing site you own | Electron-only / no public web surface |
| Has auth, payments, or public pages | Empty scaffold |
| Stage roughly known (`mvp` / `first-users`) | “Implement all 101 prod items” |

Teaching case (anonymized SaaS): see
[examples/saas-next-smoke.md](../examples/saas-next-smoke.md).

## Procedure (agent)

1. **Name shape + stage** (don’t invent “scale”).  
2. **Open only the skills that match** — site / security / compliance / auth / prod lean.  
3. **Evidence first** — grep, read routes, `curl` headers on owned URLs, file existence.  
4. **Output** must look like skill output formats: blockers / should / defer / handoff.  
5. **Teach** — for each gap, cite the **skill item id** (e.g. site `D3`, auth cheap-before-expensive).  
6. **Do not** exploit, load-test third parties, or dump secrets from `.env`.  
7. **Fix only if asked** — smoke is diagnosis; patching is a second turn.

## What “pass” means for the skill (not the product)

The skill smoke passes when:

- Gaps are specific and verifiable  
- Strengths are acknowledged (avoids fear-mongering)  
- Handoffs go to the right skill (Privacy → compliance, not site)  
- No Instagram dump of unrelated L1–L3 / K8s theatre  

If the skill only restates the viral list with no file paths, **deepen verify.md**,
then re-smoke.

## After smoke

1. Optionally fold findings into `examples/` (sanitized).  
2. Patch skill `not-enough.md` / `verify.md` if a gesture fooled the agent.  
3. Sync: `.\scripts\sync-to-cursor.ps1` · new agent session.
