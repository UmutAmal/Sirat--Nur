import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/core/services/offline_audio_service.dart';
import 'package:sirat_i_nur/features/downloads/offline_downloads_page.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

void main() {
  setUp(() {
    // Mock path_provider to avoid MissingPluginException in tests
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(
          const MethodChannel('plugins.flutter.io/path_provider'),
          (MethodCall methodCall) async {
            return '.';
          },
        );
  });

  Widget createWidgetUnderTest() {
    return const MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: OfflineDownloadsPage(),
    );
  }

  group('OfflineDownloadsPage Tests', () {
    test('builds an honest partial completion message', () async {
      final l10n = await AppLocalizations.delegate.load(const Locale('en'));

      final message = resolveOfflineDownloadResultMessage(
        l10n,
        'Test Reciter',
        const OfflineDownloadBatchResult(
          totalSurahs: 10,
          succeededSurahs: 7,
          failedSurahs: [2, 5, 9],
          wasCanceled: false,
        ),
      );

      expect(
        message,
        'Download finished for Test Reciter with 3 failed surahs (7/10 downloaded).',
      );
    });

    test('builds a canceled message when the batch is canceled', () async {
      final l10n = await AppLocalizations.delegate.load(const Locale('en'));

      final message = resolveOfflineDownloadResultMessage(
        l10n,
        'Test Reciter',
        const OfflineDownloadBatchResult(
          totalSurahs: 10,
          succeededSurahs: 4,
          failedSurahs: [7],
          wasCanceled: true,
        ),
      );

      expect(message, 'Download canceled for Test Reciter.');
    });

    testWidgets('Renders page and loading state', (tester) async {
      await tester.pumpWidget(createWidgetUnderTest());
      await tester.pump();

      // Page should be loading initially because pathProvider future hangs in simple test mock
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });
  });
}
