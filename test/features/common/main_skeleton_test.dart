import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:sirat_i_nur/features/common/main_skeleton.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

Widget _buildTestApp(Locale locale) {
  final router = GoRouter(
    initialLocation: '/home',
    routes: [
      GoRoute(
        path: '/home',
        builder: (context, state) => const MainSkeleton(child: SizedBox()),
      ),
    ],
  );

  return MaterialApp.router(
    locale: locale,
    localizationsDelegates: AppLocalizations.localizationsDelegates,
    supportedLocales: AppLocalizations.supportedLocales,
    routerConfig: router,
  );
}

void main() {
  testWidgets('MainSkeleton shows localized Turkish navigation labels', (
    tester,
  ) async {
    await tester.pumpWidget(_buildTestApp(const Locale('tr')));
    await tester.pumpAndSettle();

    expect(find.text('Ana Sayfa'), findsOneWidget);
    expect(find.text('Kur\'an-ı Kerim'), findsOneWidget);
    expect(find.text('Kıble'), findsOneWidget);
    expect(find.text('Zikir'), findsOneWidget);
    expect(find.text('Takvim'), findsOneWidget);
  });

  testWidgets('MainSkeleton shows localized English navigation labels', (
    tester,
  ) async {
    await tester.pumpWidget(_buildTestApp(const Locale('en')));
    await tester.pumpAndSettle();

    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Quran'), findsOneWidget);
    expect(find.text('Qibla'), findsOneWidget);
    expect(find.text('Zikr'), findsOneWidget);
    expect(find.text('Calendar'), findsOneWidget);
  });
}
