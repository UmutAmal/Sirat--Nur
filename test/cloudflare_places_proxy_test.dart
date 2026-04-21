import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Cloudflare Places proxy', () {
    test('worker is versioned with stable production endpoints', () {
      final config = File(
        'infra/cloudflare/places-proxy/wrangler.jsonc',
      ).readAsStringSync();
      final worker = File(
        'infra/cloudflare/places-proxy/src/index.js',
      ).readAsStringSync();
      final readme = File(
        'infra/cloudflare/places-proxy/README.md',
      ).readAsStringSync();

      expect(config, contains('"name": "sirat-nur-places-proxy"'));
      expect(config, contains('"workers_dev": true'));
      expect(worker, contains("url.pathname === '/health'"));
      expect(worker, contains("url.pathname === '/overpass'"));
      expect(worker, contains(r"^\/tiles\/(\d+)\/(\d+)\/(\d+)\.png$"));
      expect(readme, contains('PLACES_TILE_URL_TEMPLATE'));
      expect(readme, contains('PLACES_OVERPASS_API_URL'));
    });

    test(
      'worker constrains community upstream load instead of open proxying',
      () {
        final worker = File(
          'infra/cloudflare/places-proxy/src/index.js',
        ).readAsStringSync();

        expect(worker, contains('isValidTileCoordinate'));
        expect(worker, contains('MAX_QUERY_BYTES'));
        expect(worker, contains('MAX_OVERPASS_RADIUS_METERS'));
        expect(worker, contains('validateOverpassQuery'));
        expect(worker, contains('ALLOWED_OVERPASS_TAGS'));
        expect(worker, contains('["diet:halal"="yes"]'));
        expect(worker, contains('crypto.subtle.digest'));
        expect(worker, contains('caches.default'));
        expect(worker, contains('TILE_CACHE_TTL_SECONDS'));
        expect(worker, contains('604800'));
        expect(worker, contains('OVERPASS_CACHE_TTL_SECONDS'));
        expect(worker, contains('User-Agent'));
        expect(worker, contains('Sirat-i-Nur-Places-Proxy/1.0'));
        expect(worker, contains('Access-Control-Allow-Origin'));
        expect(worker, contains('X-Content-Type-Options'));
        expect(worker, isNot(contains('tile.openstreetmap.de')));
      },
    );
  });
}
