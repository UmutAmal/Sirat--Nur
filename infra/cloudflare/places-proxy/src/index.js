const DEFAULT_TILE_UPSTREAM_TEMPLATE =
  'https://tile.openstreetmap.org/{z}/{x}/{y}.png';
const DEFAULT_OVERPASS_UPSTREAM_URL =
  'https://overpass.kumi.systems/api/interpreter';
const APP_USER_AGENT =
  'Sirat-i-Nur-Places-Proxy/1.0 (+https://github.com/UmutAmal/Sirat--Nur)';
const MAX_QUERY_BYTES = 8192;
const ALLOWED_OVERPASS_TAGS = [
  '["amenity"="place_of_worship"]["religion"="muslim"]',
  '["diet:halal"="yes"]',
  '["amenity"="school"]["religion"="muslim"]',
];

const jsonHeaders = {
  'Access-Control-Allow-Origin': '*',
  'Access-Control-Allow-Methods': 'GET, HEAD, POST, OPTIONS',
  'Access-Control-Allow-Headers': 'Content-Type',
  'Access-Control-Max-Age': '86400',
  'Content-Type': 'application/json; charset=utf-8',
  'X-Content-Type-Options': 'nosniff',
  'X-Sirat-Places-Proxy': '1',
};

export default {
  async fetch(request, env, ctx) {
    const url = new URL(request.url);

    if (request.method === 'OPTIONS') {
      return new Response(null, { status: 204, headers: jsonHeaders });
    }

    if (url.pathname === '/health' && request.method === 'GET') {
      return json({ ok: true, service: 'sirat-nur-places-proxy' });
    }

    const tileMatch = url.pathname.match(/^\/tiles\/(\d+)\/(\d+)\/(\d+)\.png$/);
    if (tileMatch) {
      return handleTile(request, env, ctx, tileMatch);
    }

    if (url.pathname === '/overpass') {
      return handleOverpass(request, env, ctx, url);
    }

    return json({ error: 'Not found' }, 404);
  },
};

async function handleTile(request, env, ctx, tileMatch) {
  if (request.method !== 'GET' && request.method !== 'HEAD') {
    return json({ error: 'Tiles support GET and HEAD only' }, 405);
  }

  const z = Number(tileMatch[1]);
  const x = Number(tileMatch[2]);
  const y = Number(tileMatch[3]);
  const maxZoom = readInteger(env.MAX_TILE_ZOOM, 19);
  if (!isValidTileCoordinate(z, x, y, maxZoom)) {
    return json({ error: 'Invalid tile coordinate' }, 400);
  }

  const upstreamTemplate =
    env.TILE_UPSTREAM_TEMPLATE || DEFAULT_TILE_UPSTREAM_TEMPLATE;
  const upstreamUrl = buildTileUrl(upstreamTemplate, { z, x, y });
  if (upstreamUrl === null) {
    return json({ error: 'Tile upstream is not configured safely' }, 503);
  }

  const ttl = readInteger(env.TILE_CACHE_TTL_SECONDS, 604800);
  const cache = caches.default;
  const cacheKey = new Request(new URL(request.url).toString(), {
    method: 'GET',
  });
  const cached = await cache.match(cacheKey);
  if (cached) {
    return withCommonHeaders(cached, 'HIT');
  }

  const upstreamResponse = await fetch(upstreamUrl, {
    headers: {
      Accept: 'image/png,image/*;q=0.8,*/*;q=0.1',
      'User-Agent': APP_USER_AGENT,
    },
    cf: { cacheTtl: ttl, cacheEverything: true },
  });

  if (!upstreamResponse.ok) {
    return json(
      { error: 'Tile upstream unavailable', status: upstreamResponse.status },
      502,
      { 'Cache-Control': 'no-store' },
    );
  }

  const headers = new Headers(upstreamResponse.headers);
  headers.set('Access-Control-Allow-Origin', '*');
  headers.set('Cache-Control', `public, max-age=${ttl}`);
  headers.set('Content-Type', headers.get('Content-Type') || 'image/png');
  headers.set('X-Content-Type-Options', 'nosniff');
  headers.set('X-Sirat-Places-Proxy', '1');
  headers.set('X-Sirat-Cache', 'MISS');

  const response = new Response(
    request.method === 'HEAD' ? null : upstreamResponse.body,
    {
      status: upstreamResponse.status,
      headers,
    },
  );
  if (request.method === 'GET') {
    ctx.waitUntil(cache.put(cacheKey, response.clone()));
  }
  return response;
}

async function handleOverpass(request, env, ctx, requestUrl) {
  if (request.method !== 'POST') {
    return json({ error: 'Overpass proxy supports POST only' }, 405);
  }

  const body = await request.text();
  if (new TextEncoder().encode(body).byteLength > MAX_QUERY_BYTES) {
    return json({ error: 'Overpass query is too large' }, 413);
  }

  const validation = validateOverpassQuery(
    body,
    readInteger(env.MAX_OVERPASS_RADIUS_METERS, 5000),
  );
  if (!validation.ok) {
    return json({ error: validation.error }, 400);
  }

  const upstreamUrl = parseCleanHttpsUrl(
    env.OVERPASS_UPSTREAM_URL || DEFAULT_OVERPASS_UPSTREAM_URL,
  );
  if (upstreamUrl === null) {
    return json({ error: 'Overpass upstream is not configured safely' }, 503);
  }

  const ttl = readInteger(env.OVERPASS_CACHE_TTL_SECONDS, 3600);
  const bodyHash = await sha256Hex(body);
  const cacheKey = new Request(
    `${requestUrl.origin}/overpass-cache/${bodyHash}`,
    { method: 'GET' },
  );
  const cache = caches.default;
  const cached = await cache.match(cacheKey);
  if (cached) {
    return withCommonHeaders(cached, 'HIT');
  }

  const upstreamResponse = await fetch(upstreamUrl, {
    method: 'POST',
    body,
    headers: {
      Accept: 'application/json',
      'Content-Type': 'text/plain; charset=utf-8',
      'User-Agent': APP_USER_AGENT,
    },
  });

  if (!upstreamResponse.ok) {
    return json(
      {
        error: 'Overpass upstream unavailable',
        status: upstreamResponse.status,
      },
      upstreamResponse.status === 429 ? 429 : 502,
      { 'Cache-Control': 'no-store' },
    );
  }

  const headers = new Headers(upstreamResponse.headers);
  headers.set('Access-Control-Allow-Origin', '*');
  headers.set('Cache-Control', `public, max-age=${ttl}`);
  headers.set('Content-Type', 'application/json; charset=utf-8');
  headers.set('X-Content-Type-Options', 'nosniff');
  headers.set('X-Sirat-Places-Proxy', '1');
  headers.set('X-Sirat-Cache', 'MISS');

  const response = new Response(upstreamResponse.body, {
    status: 200,
    headers,
  });
  ctx.waitUntil(cache.put(cacheKey, response.clone()));
  return response;
}

function isValidTileCoordinate(z, x, y, maxZoom) {
  if (
    !Number.isInteger(z) ||
    !Number.isInteger(x) ||
    !Number.isInteger(y) ||
    z < 0 ||
    z > maxZoom
  ) {
    return false;
  }

  const maxExclusive = 2 ** z;
  return x >= 0 && x < maxExclusive && y >= 0 && y < maxExclusive;
}

function buildTileUrl(template, coordinates) {
  if (
    !template.includes('{z}') ||
    !template.includes('{x}') ||
    !template.includes('{y}')
  ) {
    return null;
  }

  const rawUrl = template
    .replaceAll('{z}', String(coordinates.z))
    .replaceAll('{x}', String(coordinates.x))
    .replaceAll('{y}', String(coordinates.y));
  return parseCleanHttpsUrl(rawUrl);
}

function parseCleanHttpsUrl(rawUrl) {
  try {
    const url = new URL(rawUrl);
    if (
      url.protocol !== 'https:' ||
      url.username ||
      url.password ||
      url.search ||
      url.hash
    ) {
      return null;
    }
    return url.toString();
  } catch (_) {
    return null;
  }
}

function validateOverpassQuery(rawQuery, maxRadiusMeters) {
  const normalized = rawQuery.replace(/\s+/g, ' ').trim();
  for (const tags of ALLOWED_OVERPASS_TAGS) {
    const tagPattern = escapeRegExp(tags);
    const pattern = new RegExp(
      '^\\[out:json\\]\\[timeout:15\\]; \\( node' +
        tagPattern +
        '\\(around:(\\d{1,5}), (-?\\d+(?:\\.\\d+)?), (-?\\d+(?:\\.\\d+)?)\\); way' +
        tagPattern +
        '\\(around:(\\d{1,5}), (-?\\d+(?:\\.\\d+)?), (-?\\d+(?:\\.\\d+)?)\\); \\); out center;$',
    );
    const match = normalized.match(pattern);
    if (!match) {
      continue;
    }

    const firstRadius = Number(match[1]);
    const secondRadius = Number(match[4]);
    const firstLat = Number(match[2]);
    const firstLon = Number(match[3]);
    const secondLat = Number(match[5]);
    const secondLon = Number(match[6]);
    if (
      firstRadius < 1 ||
      firstRadius > maxRadiusMeters ||
      secondRadius !== firstRadius ||
      !isValidLatLon(firstLat, firstLon) ||
      firstLat !== secondLat ||
      firstLon !== secondLon
    ) {
      return { ok: false, error: 'Overpass query radius or coordinates invalid' };
    }

    return { ok: true };
  }

  return { ok: false, error: 'Overpass query shape is not allowed' };
}

function isValidLatLon(lat, lon) {
  return lat >= -90 && lat <= 90 && lon >= -180 && lon <= 180;
}

function escapeRegExp(value) {
  return value.replace(/[.*+?^${}()|[\]\\]/g, '\\$&');
}

async function sha256Hex(value) {
  const digest = await crypto.subtle.digest(
    'SHA-256',
    new TextEncoder().encode(value),
  );
  return [...new Uint8Array(digest)]
    .map((byte) => byte.toString(16).padStart(2, '0'))
    .join('');
}

function readInteger(value, fallback) {
  const parsed = Number(value);
  return Number.isInteger(parsed) && parsed > 0 ? parsed : fallback;
}

function withCommonHeaders(response, cacheStatus) {
  const headers = new Headers(response.headers);
  headers.set('Access-Control-Allow-Origin', '*');
  headers.set('X-Content-Type-Options', 'nosniff');
  headers.set('X-Sirat-Places-Proxy', '1');
  headers.set('X-Sirat-Cache', cacheStatus);
  return new Response(response.body, {
    status: response.status,
    headers,
  });
}

function json(payload, status = 200, extraHeaders = {}) {
  return new Response(JSON.stringify(payload), {
    status,
    headers: { ...jsonHeaders, ...extraHeaders },
  });
}
