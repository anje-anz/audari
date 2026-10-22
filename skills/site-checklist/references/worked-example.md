# Worked slice: metadata vs disk (example SaaS)

Full narrative: `examples/saas-next-smoke.md`.

## Pattern to learn

A Next app set:

```ts
openGraph: { images: [{ url: "/og.png", width: 1200, height: 630 }] }
```

Soft-launch **fails** if `public/og.png` (or the configured path) is missing.
Always pair **D3** with an existence/`curl` check — see [verify.md](verify.md).

Same pattern: robots/sitemap declared in chat but no `app/robots.ts` /
`app/sitemap.ts` → **D6–D7** open.

## How to report

> **D3** — risk: social previews broken · fix: add 1200×630 asset at the URL in
> metadata · verify: opengraph preview or `HEAD` 200 on the image URL
