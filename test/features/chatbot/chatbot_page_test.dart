import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/features/chatbot/chatbot_page.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

Future<void> pumpChatbotPage(WidgetTester tester, Locale locale) async {
  await tester.pumpWidget(
    ProviderScope(
      child: MaterialApp(
        locale: locale,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: const ChatbotPage(),
      ),
    ),
  );

  await tester.pump();
}

Future<void> disposeChatbotPage(WidgetTester tester) async {
  await tester.pumpWidget(const SizedBox.shrink());
  await tester.pumpAndSettle();
}

void main() {
  testWidgets('ChatbotPage localizes AI mode controls in English', (
    tester,
  ) async {
    try {
      await pumpChatbotPage(tester, const Locale('en'));

      expect(find.text('Assistant'), findsOneWidget);
      expect(find.text('Cloud AI'), findsOneWidget);
      expect(find.text('20 left'), findsOneWidget);

      await tester.tap(find.byIcon(Icons.tune_rounded));
      await tester.pumpAndSettle();

      expect(find.text('Use Cloud AI (Gemini)'), findsOneWidget);
      expect(find.text('Download Local AI (1.5 GB)'), findsOneWidget);
      await tester.tap(find.text('Use Cloud AI (Gemini)'));
      await tester.pumpAndSettle();

      await tester.ensureVisible(find.byType(TextField));
      await tester.enterText(find.byType(TextField), 'help');
      await tester.tap(find.byIcon(Icons.send_rounded));
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 500));
      await tester.pumpAndSettle();

      expect(
        find.text('Cloud API not configured. Please switch to Local AI.'),
        findsOneWidget,
      );
    } finally {
      await disposeChatbotPage(tester);
    }
  });

  testWidgets('ChatbotPage localizes AI mode controls in Turkish', (
    tester,
  ) async {
    try {
      await pumpChatbotPage(tester, const Locale('tr'));

      expect(find.text('Asistan'), findsOneWidget);
      expect(find.text('Bulut AI'), findsOneWidget);
      expect(find.text('20 kaldı'), findsOneWidget);

      await tester.tap(find.byIcon(Icons.tune_rounded));
      await tester.pumpAndSettle();

      expect(find.text('Bulut AI Kullan (Gemini)'), findsOneWidget);
      expect(find.text("Yerel AI'yi İndir (1.5 GB)"), findsOneWidget);
      await tester.tap(find.text('Bulut AI Kullan (Gemini)'));
      await tester.pumpAndSettle();

      await tester.ensureVisible(find.byType(TextField));
      await tester.enterText(find.byType(TextField), 'yardim');
      await tester.tap(find.byIcon(Icons.send_rounded));
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 500));
      await tester.pumpAndSettle();

      expect(
        find.text('Bulut API ayarlanmadı. Lütfen Yerel AI moduna geçin.'),
        findsOneWidget,
      );
    } finally {
      await disposeChatbotPage(tester);
    }
  });
}
