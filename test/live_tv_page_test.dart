import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/features/tv/live_tv_page.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

void main() {
  group('Live TV localized copy helpers', () {
    test('webview load logs do not expose raw error metadata', () {
      final source = File(
        'lib/features/tv/live_tv_page.dart',
      ).readAsStringSync();

      expect(source, contains("debugPrint('Live TV main frame load failed')"));
      expect(source, isNot(contains('error.errorCode')));
      expect(source, isNot(contains('error.errorType')));
    });

    test('provider error text is localized and hides raw exceptions', () {
      final en = lookupAppLocalizations(const Locale('en'));
      final tr = lookupAppLocalizations(const Locale('tr'));

      expect(
        buildLiveTvProviderErrorText(en),
        'Stream error\nPlease check your connection',
      );
      expect(
        buildLiveTvProviderErrorText(tr),
        'Yayın hatası\nLütfen bağlantınızı kontrol edin',
      );
      expect(buildLiveTvProviderErrorText(en), isNot(contains('timeout')));
      expect(buildLiveTvProviderErrorText(tr), isNot(contains('zaman asimi')));
    });

    test('empty-state text uses localized no-results label', () {
      final en = lookupAppLocalizations(const Locale('en'));
      final tr = lookupAppLocalizations(const Locale('tr'));

      expect(buildLiveTvEmptyStateText(en), 'No results found');
      expect(buildLiveTvEmptyStateText(tr), 'Sonuç bulunamadı');
    });
  });

  group('Live TV cloud row sanitizers', () {
    test('external URL resolver accepts only launch-safe YouTube URLs', () {
      expect(
        resolveLiveTvExternalUri({
          'external_url': ' https://www.youtube.com/watch?v=abc ',
        })?.toString(),
        'https://www.youtube.com/watch?v=abc',
      );
      expect(resolveLiveTvExternalUri({}), isNull);
      expect(resolveLiveTvExternalUri({'external_url': ''}), isNull);
      expect(resolveLiveTvExternalUri({'external_url': 42}), isNull);
      expect(
        resolveLiveTvExternalUri({'external_url': 'http://youtube.com/live'}),
        isNull,
      );
      expect(
        resolveLiveTvExternalUri({'external_url': 'https://example.com/live'}),
        isNull,
      );
      expect(resolveLiveTvExternalUri({'external_url': 'not a url'}), isNull);
      expect(
        resolveLiveTvExternalUri({'external_url': 'https:///missing-host'}),
        isNull,
      );
      expect(
        resolveLiveTvExternalUri({'external_url': 'javascript:alert(1)'}),
        isNull,
      );
      expect(
        resolveLiveTvExternalUri({'external_url': 'youtube://watch?v=abc'}),
        isNull,
      );
      expect(
        resolveLiveTvExternalUri({
          'external_url': 'https://token@www.youtube.com/watch?v=abc',
        }),
        isNull,
      );
      expect(
        resolveLiveTvExternalUri({
          'external_url': 'https://www.youtube.com/watch?v=abc#secret',
        }),
        isNull,
      );
    });

    test(
      'candidate resolver normalizes valid streams and rejects unsafe rows',
      () {
        final candidates = resolveLiveTvCandidateUrls({
          'embed_url': 'https://www.youtube.com/embed/live',
          'fallback_embed_url': 'https://www.youtube.com/embed/live',
          'external_url': 'https://www.youtube.com/results?search_query=adhan',
          'muted_by_default': true,
        });

        expect(candidates, hasLength(1));

        final candidateUri = Uri.parse(candidates.single);
        expect(candidateUri.scheme, 'https');
        expect(candidateUri.host, 'www.youtube.com');
        expect(candidateUri.path, '/embed/live');
        expect(candidateUri.queryParameters['autoplay'], '1');
        expect(candidateUri.queryParameters['playsinline'], '1');
        expect(candidateUri.queryParameters['mute'], '1');
      },
    );

    test(
      'candidate resolver falls back to external web URL when embeds fail',
      () {
        final candidates = resolveLiveTvCandidateUrls({
          'embed_url': 'https:///missing-host',
          'fallback_embed_url': 7,
          'external_url': 'https://www.youtube.com/watch?v=abc',
        });

        expect(candidates, hasLength(1));
        final candidate = Uri.parse(candidates.single);
        expect(candidate.host, 'www.youtube.com');
        expect(candidate.queryParameters['v'], 'abc');
        expect(candidate.queryParameters['autoplay'], '1');
        expect(candidate.queryParameters['playsinline'], '1');
        expect(candidate.queryParameters['mute'], '0');
      },
    );

    test('candidate resolver rejects non-YouTube embed hosts', () {
      final candidates = resolveLiveTvCandidateUrls({
        'embed_url': 'https://example.com/embed/live',
        'fallback_embed_url': 'https://player.example.org/live',
        'external_url': 'https://not-youtube.example/live',
      });

      expect(candidates, isEmpty);
    });

    test('candidate resolver rejects user-info and fragment-bearing URLs', () {
      expect(
        resolveLiveTvCandidateUrls({
          'embed_url': 'https://token@www.youtube.com/embed/live',
          'fallback_embed_url': 'https://www.youtube.com/embed/live#secret',
          'external_url': 'https://www.youtube.com/watch?v=abc#secret',
        }),
        isEmpty,
      );
    });

    test('display text resolver does not trust non-string cloud values', () {
      expect(
        resolveLiveTvDisplayText({'title': '  Makkah Live  '}, 'title'),
        'Makkah Live',
      );
      expect(resolveLiveTvDisplayText({'title': 99}, 'title'), '');
      expect(resolveLiveTvDisplayText({'title': '   '}, 'title'), '');
      expect(resolveLiveTvDisplayText({}, 'title'), '');
    });
  });
}
