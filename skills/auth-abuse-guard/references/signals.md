# Risk signals (auth-abuse-guard)

Combine signals into a band. Tune thresholds per product; start conservative on challenges, not on lockouts.

## Cheap signals (prefer these first)

| Signal | Green-ish | Yellow/Red-ish | Notes |
|---|---|---|---|
| Edge bot score | Low bot probability | High / known automation | Cloudflare/Akamai/etc. |
| Rate keys | Under soft caps | Burst on account *or* IP *or* ASN | Multi-key |
| Failure ratio | Mixed success history | Mostly failures from one client | Windowed (e.g. 15–60 min) |
| Device binding | Seen cookie/device after prior login | Brand-new + high velocity | Rotate; bind to user after auth |
| Protocol shape | Normal headers/body | Missing fields, honeypot filled, huge body | Drop early |
| Geo / ASN | Matches user baseline | Impossible travel, hosting ASN flood | Weak alone |
| UA consistency | Platform hints match | “iPhone” + desktop TLS/JA4 mismatch at edge | Spoofable; supporting only |

## Medium-cost signals (after cheap pass)

| Signal | Use |
|---|---|
| Breach password on **set/change** | Reject or force reset; k-anonymity API |
| Email risk on signup | Disposable domains, role accounts |
| Step-up history | Recent challenges passed → temporary trust |

## Do not over-weight

- Raw IP reputation in regions with CGNAT
- Single TLS fingerprint match (legit privacy tools differ)
- “Headless Chrome” alone (many real users and WebViews look odd)

## Scoring sketch

Keep it boring and explainable:

```text
score = 0
+ edge_bot_weight
+ velocity_weight
+ failure_ratio_weight
+ new_device_weight
+ asn_hosting_weight
- returning_device_credit
- recent_challenge_pass_credit

score < T1 → allow
T1..T2     → challenge
> T2       → drop before verify
```

Log **reasons** (not secrets) for fraud review. Never log passwords.
