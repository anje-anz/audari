# Security checklist — full index

Derived from “security checks for your AI-built app” parts 1–4, reorganized.
Numbers 1–70 keep original labels; **X\*** are kit additions.

## S — Secrets & exposure

1. Exposed DB credentials  
2. Public `.env` files  
3. Hardcoded secrets  
11. Logs leak secrets  
12. Verbose prod errors  
13. Secrets in git  
14. Secrets in JS / client bundles  
29. Exposed environments / config  
30. Default credentials  
35. Exposed logs  
36. Exposed source maps  
65. Sensitive info leak  
68. Sensitive browser storage (tokens in `localStorage`, etc.)  

## A — Authn / sessions

4. Weak auth  
24. Broken password reset  
25. Weak session management  
26. Weak / leaked JWT secrets  
47. Insecure cookie settings (`Secure`, `HttpOnly`, `SameSite`)  
54. Misconfigured OAuth  
55. No MFA (where risk warrants)  
56. Account enumeration  
69. Open redirects (post-login / OAuth `redirect_uri`)  

→ Deep dive login abuse: skill `auth-abuse-guard`

## Z — Authz / tenancy

5. Missing authz check  
6. Cross-user access  
7. Open / excessive DB permissions (also 41)  
9. Unprotected admin route  
33. IDOR / BOLA  
41. Excessive DB permissions  
49. Poor tenant isolation  
51. Mass assignment  

## I — Injection & unsafe parsing

16. Input validation  
17. SQL injection  
18. NoSQL injection  
19. XSS  
21. Insecure file uploads  
22. Path traversal  
23. SSRF  
34. APIs + unsanitized user input  
52. Command injection  
53. Insecure deserialisation  

Treat **model/tool output** as untrusted input when it reaches SQL, shell, URLs, or HTML.

## W — Web / browser

20. CSRF  
27. Permissive CORS  
46. Missing security headers (CSP, HSTS, `X-Frame-Options` / `frame-ancestors`, …)  
68. Sensitive browser storage  
69. Open redirects  

## P — Payments & webhooks

31. Unsigned webhooks  
32. Front-end-only payment checks  
59. Webhook replay (nonce/timestamp/idempotency)  

## R — Abuse & logic

28. Rate limits (auth, reset, OTP, expensive APIs)  
57. Business logic abuse  
58. Race conditions (double-spend, double-redeem)  
63. Security checks fail open  
64. Missing timeouts  
70. Unsecured endpoints  

## C — Supply chain & CI

37. Vulnerable dependencies  
38. Malicious packages  
50. Unreviewed code (esp. AI-generated)  
60. Insecure CI/CD  
61. Untrusted build actions  
62. Unpinned build dependencies  

## M — Monitor & recovery

42. Missing audit logs  
43. No security monitoring  
44. No backups / restore  
45. Exposed internal dashboards  

## G — Generative AI

39. Prompt injection  
40. Unpermissioned AI access (who can invoke tools?)  
66. Invalid / unsafe AI output trusted as truth  
67. Excessive AI permissions (tools that can write DB, pay, email, shell)  

## X — Kit extras (recommended)

| ID | Check | Why |
|---|---|---|
| X1 | Content-Security-Policy suited to the app | XSS blast radius |
| X2 | GraphQL query depth/complexity limits | Nested “query depth” DoS |
| X3 | Passkeys / WebAuthn offered for high-value accounts | Phishing-resistant authn |
| X4 | SSRF allowlist (scheme/host) for any fetch-by-URL | 23 hardened |
| X5 | Dependency pin + lockfile in CI; block `latest` | 62 concrete |
| X6 | Server-side authorization tests for IDOR | 33 becomes enforceable |
| X7 | TLS floor: HSTS + TLS 1.2+ only; no weak ciphers / SSL strip path | L6 — pairs with 46, 48 |
| X8 | Physical / LAN / cloud-console access (locks, unused ports, MFA on console, SG/ACL) | L1–L3 — N/A on pure PaaS unless you own network |
| X9 | Trim API / RPC responses — no password hashes, service keys, or excess PII | Viral “trim API responses” |
| X10 | Client uses only publishable keys; service role / secret DB URL never in browser | Viral “public DB key” + RLS |

## Numeric order (1–70)

1 Exposed DB credentials · 2 Public .env · 3 Hardcoded secrets · 4 Weak auth · 5 Missing authz · 6 Cross-user access · 7 Open DB permissions · 8 Cloud misconfig · 9 Unprotected admin · 10 Exposed prod debug · 11 Logs leak secrets · 12 Verbose prod errors · 13 Secrets in git · 14 Secrets in JS · 15 Client-only security · 16 Input validation · 17 SQLi · 18 NoSQLi · 19 XSS · 20 CSRF · 21 Insecure uploads · 22 Path traversal · 23 SSRF · 24 Broken password reset · 25 Weak session mgmt · 26 JWT secrets · 27 Permissive CORS · 28 Rate limits · 29 Exposed environments · 30 Default credentials · 31 Unsigned webhooks · 32 FE payment checks · 33 IDOR/BOLA · 34 APIs + user input · 35 Exposed logs · 36 Exposed source maps · 37 Vulnerable deps · 38 Malicious packages · 39 Prompt injection · 40 Unpermissioned AI access · 41 Excessive DB permissions · 42 Missing audit logs · 43 No security monitoring · 44 No backups/restore · 45 Exposed internal dashboards · 46 Missing security headers · 47 Insecure cookies · 48 Unencrypted data · 49 Poor tenant isolation · 50 Unreviewed code · 51 Mass assignment · 52 Command injection · 53 Insecure deserialisation · 54 Misconfigured OAuth · 55 No MFA · 56 Account enumeration · 57 Business logic abuse · 58 Race conditions · 59 Webhook replay · 60 Insecure CI/CD · 61 Untrusted build actions · 62 Unpinned build deps · 63 Checks fail open · 64 Missing timeouts · 65 Sensitive info leak · 66 Invalid AI output · 67 Excessive AI permissions · 68 Sensitive browser storage · 69 Open redirects · 70 Unsecured endpoints
