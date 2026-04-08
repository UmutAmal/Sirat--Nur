import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sirat_i_nur/core/providers/supabase_providers.dart';
import 'package:sirat_i_nur/features/home/home_page.dart';
import 'package:sirat_i_nur/features/settings/settings_provider.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

Future<void> pumpHomePage(
  WidgetTester tester, {
  required Future<Map<String, dynamic>> Function(Ref ref) dailyAyatOverride,
}) async {
  SharedPreferences.setMockInitialValues({});
  final prefs = await SharedPreferences.getInstance();

  await tester.pumpWidget(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(prefs),
        dailyAyatProvider.overrideWith(dailyAyatOverride),
      ],
      child: MaterialApp(
        locale: const Locale('en'),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: const HomePage(),
      ),
    ),
  );

  await tester.pump();
}

void main() {
  testWidgets('HomePage shows an honest connectivity message when daily ayat fails', (
    tester,
  ) async {
    await pumpHomePage(
      tester,
      dailyAyatOverride: (ref) async => throw StateError('daily_ayat_unavailable'),
    );
    await tester.pumpAndSettle();

    expect(find.text('Daily Verse'), findsOneWidget);
    expect(find.text('No Internet Connection'), findsOneWidget);
    expect(find.text('Please check your connection'), findsOneWidget);
    expect(find.textContaining('ٱللَّهِ'), findsNothing);
  });
}
