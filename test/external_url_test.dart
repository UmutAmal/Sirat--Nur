import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/core/utils/external_url.dart';

void main() {
  group('external URL helpers', () {
    test('resolveExternalHttpUri accepts only HTTPS web URLs with a host', () {
      expect(
        resolveExternalHttpUri(' https://siratinur.com/privacy ')?.toString(),
        'https://siratinur.com/privacy',
      );

      expect(resolveExternalHttpUri(''), isNull);
      expect(resolveExternalHttpUri('/privacy'), isNull);
      expect(resolveExternalHttpUri('not a url'), isNull);
      expect(resolveExternalHttpUri('http://siratinur.com/path'), isNull);
      expect(resolveExternalHttpUri('mailto:support@siratinur.com'), isNull);
      expect(resolveExternalHttpUri('javascript:alert(1)'), isNull);
      expect(resolveExternalHttpUri('https:///missing-host'), isNull);
    });

    test('buildGoogleMapsSearchUri encodes map directions safely', () {
      final uri = buildGoogleMapsSearchUri(
        latitude: 41.0082,
        longitude: 28.9784,
      );

      expect(uri.scheme, 'https');
      expect(uri.host, 'www.google.com');
      expect(uri.path, '/maps/search/');
      expect(uri.queryParameters['api'], '1');
      expect(uri.queryParameters['query'], '41.0082,28.9784');
      expect(isExternalHttpUri(uri), isTrue);
    });
  });
}
