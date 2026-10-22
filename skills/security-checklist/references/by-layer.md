# Stack layers → this checklist (not a separate skill)

OSI-style “what breaks each layer” is a **mnemonic**, not a second workflow.
Use it to **find the right cluster**, then stay in risk → fix → verify.

For **typical vibe / Vercel / managed SaaS**: spend almost all time on **L7–L5**
(+ TLS as L6). L4–L1 matter when you own the box, office LAN, colo, or bare metal.

## Map (attack → defend → checklist)

| Layer | Breaks as | Defend (plain) | Where in this skill |
|---|---|---|---|
| **L7 Application** | phishing, SQLi, XSS | WAF where useful; **input validation**; authz on every object | I (16–19…), Z (5–7, 33), G phishing→ humans + `auth-abuse-guard` / Passkeys X3 |
| **L6 Presentation** | SSL strip, weak ciphers | **HSTS**; TLS 1.2+ only; kill old ciphers | W 46, encryption 48, **X7** |
| **L5 Session** | hijack, fixation | Secure/HttpOnly/SameSite cookies; rotate on login; short idle timeout | A 25, 47, 68 |
| **L4 Transport** | SYN flood, port scans | Rate limits / platform DDoS; don’t expose unused ports | R 28, 64; platform edge; **prod-checklist** for expose surface |
| **L3 Network** | IP spoof, ICMP flood, bad routes | Firewall / security groups / WAF rules; no public admin | S 8, 45; **X8** if you manage VPC |
| **L2 Data link** | ARP spoof, MAC flood | Port security / DAI on **your** switches; don’t trust “open Wi‑Fi office” | **X8** — N/A on pure managed PaaS |
| **L1 Physical** | tap cable, rogue jack, cut line | Locked racks/doors; console MFA; disable unused ports | **X8** — office/colo/laptop theft; cloud → console IAM |

## How to use in a review

1. Run the normal **stage** pass (`by-stage.md`).
2. If the product is **self-hosted / office / VPN / colo**, also skim L1–L3 via X8.
3. If someone asks “OSI / which layer?”, answer with this table, then **one checklist item** — never a parallel “prevention list”.

## What this is not

- Not exploit recipes (still: risk · fix · verify only).
- Not compliance (physical locks for SOC2 → also `compliance-checklist` evidence).
- Not a reason to buy enterprise L2 gear for a Next.js side project on Vercel.
