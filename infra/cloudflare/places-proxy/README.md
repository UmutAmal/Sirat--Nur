# Sirat-i Nur Places Proxy

Cloudflare Worker for production Places runtime configuration.

The mobile app must not point directly at public OpenStreetMap tile hosts or
public Overpass hosts. This Worker gives the app stable project-owned URLs:

- `PLACES_TILE_URL_TEMPLATE=https://<worker>/tiles/{z}/{x}/{y}.png`
- `PLACES_OVERPASS_API_URL=https://<worker>/overpass`

The Worker keeps the proxy narrow on purpose:

- tile requests are limited to valid XYZ PNG coordinates and cached for at
  least seven days;
- Overpass requests must match the exact app-generated mosque, halal food, or
  Islamic education query shapes;
- Overpass query radius is capped at 5000 meters;
- upstream calls use a stable Sirat-i Nur user agent;
- all responses expose CORS and nosniff headers.

Deployment:

```powershell
npx --yes wrangler@latest deploy .\infra\cloudflare\places-proxy\src\index.js --config .\infra\cloudflare\places-proxy\wrangler.jsonc
```

OpenStreetMap attribution must remain visible in the app map surface. Public
community services can change policy or availability without notice; if traffic
grows, replace the upstream vars with a paid or self-hosted tile/Overpass
provider while keeping the app-facing Worker URLs stable.
