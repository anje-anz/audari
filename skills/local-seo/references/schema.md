# JSON-LD (keep honest)

Use `LocalBusiness` or a subtype (`Plumber`, `HairSalon`, `Restaurant`, …) when accurate.

Required alignment:

- `name`, `telephone`, `address` (or clear mobile-service description)  
- `url` = canonical site  
- `openingHoursSpecification` only from confirmed hours  

Optional: `geo`, `image`, `priceRange` if true.

**Do not** output `aggregateRating` / `review` unless the client supplies a verifiable source you are willing to defend.

Validate with a rich-results / schema tester on staging when possible.
