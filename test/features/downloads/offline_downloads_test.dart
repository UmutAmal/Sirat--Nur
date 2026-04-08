import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
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
    testWidgets('Renders page and loading state', (tester) async {
      await tester.pumpWidget(createWidgetUnderTest());
      await tester.pump();

      // Page should be loading initially because pathProvider future hangs in simple test mock
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });
  });
}
