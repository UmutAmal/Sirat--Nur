import 'dart:io';

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
      expect(find.text('Offline Fallback'), findsOneWidget);
      expect(find.text('Cloud AI'), findsNothing);
      expect(find.text('20 left'), findsOneWidget);

      await tester.tap(find.byIcon(Icons.tune_rounded));
      await tester.pumpAndSettle();

      expect(find.text('Use Cloud AI (Gemini)'), findsOneWidget);
      expect(find.text('Enable Offline Fallback'), findsOneWidget);
      final cloudItem = tester.widget<PopupMenuItem<String>>(
        find.widgetWithText(PopupMenuItem<String>, 'Use Cloud AI (Gemini)'),
      );
      expect(cloudItem.enabled, isFalse);
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
      expect(find.text('Çevrimdışı Fallback'), findsOneWidget);
      expect(find.text('Bulut AI'), findsNothing);
      expect(find.text('20 kaldı'), findsOneWidget);

      await tester.tap(find.byIcon(Icons.tune_rounded));
      await tester.pumpAndSettle();

      expect(find.text('Bulut AI Kullan (Gemini)'), findsOneWidget);
      expect(find.text("Çevrimdışı Fallback'i Etkinleştir"), findsOneWidget);
      final cloudItem = tester.widget<PopupMenuItem<String>>(
        find.widgetWithText(PopupMenuItem<String>, 'Bulut AI Kullan (Gemini)'),
      );
      expect(cloudItem.enabled, isFalse);
    } finally {
      await disposeChatbotPage(tester);
    }
  });

  testWidgets('ChatbotPage shows an honest offline fallback message', (
    tester,
  ) async {
    try {
      await pumpChatbotPage(tester, const Locale('en'));

      await tester.tap(find.byIcon(Icons.tune_rounded));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Enable Offline Fallback'));
      await tester.pumpAndSettle();

      expect(find.text('Offline Mode'), findsOneWidget);
      expect(
        find.textContaining(
          'verified offline Islamic knowledge base is still being curated',
        ),
        findsOneWidget,
      );

      await tester.tap(find.text('Enable Offline Fallback'));
      await tester.pumpAndSettle();

      expect(find.text('Offline Fallback'), findsOneWidget);

      await tester.ensureVisible(find.byType(TextField));
      await tester.enterText(find.byType(TextField), 'prayer');
      await tester.testTextInput.receiveAction(TextInputAction.done);
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 500));
      await tester.pumpAndSettle();

      expect(
        find.textContaining(
          'Verified local Islamic guidance is not available yet.',
        ),
        findsOneWidget,
      );
    } finally {
      await disposeChatbotPage(tester);
    }
  });

  test('ChatbotPage uses local Gemini session snapshots', () {
    final source = File(
      'lib/features/chatbot/chatbot_page.dart',
    ).readAsStringSync();

    expect(source, contains('final model = GenerativeModel('));
    expect(source, contains('final chat = _chat;'));
    expect(source, isNot(contains('GenerativeModel? _model')));
    expect(source, isNot(contains('_model!.startChat()')));
    expect(source, isNot(contains('_chat!.sendMessage')));
  });
}
