# Intake fields

## Must-have

| Key | Prompt to client | Invalid if |
|---|---|---|
| `trading_name` | Business name as customers know it | Empty |
| `legal_name` | Legal entity if different | — optional but note |
| `vertical` | What you do (barber, plumber…) | Vague “services” |
| `services` | 3–8 services | Empty list |
| `area` | City / neighbourhoods served | Empty |
| `phone` | Public phone | Private-only number they refuse to publish — flag |
| `email` | Public email | — |
| `address` | Street or “mobile / on-site only” | Contradicts maps plan |
| `hours` | Opening hours or “by appointment” | Empty |
| `primary_cta` | call / whatsapp / form / book | Unclear |
| `photos` | 3–8 images or “use stock” | Silent missing |
| `locale` | `en` / `it` / … | — |
| `domain` | Existing domain or “need one” | — |

## Nice-to-have

| Key | Why |
|---|---|
| `logo` | Header |
| `gbp_url` | Google Business Profile |
| `differentiators` | About section |
| `prices_public` | Show from-prices? |
| `competitors_liked` | Fit — don’t clone |
| `socials` | Footer links |
| `booking_tool` | Existing Cal.com etc. |
| `care_tier` | Confirm care inclusions vs rate card |

## Photo / claim hygiene

- Stock OK if labeled `(stock)` in build  
- No medical/guarantee claims without client confirmation → compliance mindset  
