# Incident & break-glass runbook

Keep calm; facts only to the client.

## Severity

| Level | Example | Action |
|---|---|---|
| P1 | Site down / HTTPS fail / whole DNS broken | Drop other work; restore |
| P2 | One form broken / wrong env on prod | Fix same day business hours |
| P3 | Typo / stale hours | Care tweak or next batch |

## Triage order

1. **Confirm** — open production URL in private window; note status code / cert error  
2. **Vercel** — latest deployment state, rollback to last Ready if bad deploy  
3. **DNS** — if domain fails but `*.vercel.app` works → DNS/registrar path  
4. **Env** — missing secret after rotate?  
5. **Upstream** — form provider / Cal.com embed down (not always “our hosting”)  

## Rollback

- Prefer Vercel **instant rollback** to previous production deployment  
- Do not “hotfix blind” on P1 without knowing last good commit  

## Communication (template)

> We saw [symptom] at [time]. Cause: [deploy|DNS|provider|unknown].  
> Status: [investigating|restored].  
> Next: [what you need from client, if any].

No blame theatre; no fake ETAs.

## Aftercare

- Note cause in a one-line log (Notion/repo `CARELOG.md` per client optional)  
- If studio caused DNS email breakage → prioritize MX restore  
