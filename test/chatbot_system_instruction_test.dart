import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/features/chatbot/chatbot_page.dart';

void main() {
  group('Islamic chatbot system instruction', () {
    test('does not claim scholar authority or invent sources', () {
      expect(islamicChatbotSystemInstruction, contains('not a mufti'));
      expect(
        islamicChatbotSystemInstruction,
        contains('not a replacement for a qualified local scholar'),
      );
      expect(
        islamicChatbotSystemInstruction,
        contains('Do not invent Quran verses, hadiths'),
      );
      expect(
        islamicChatbotSystemInstruction,
        isNot(contains('strictly orthodox Islamic scholar')),
      );
    });

    test('requires scholarly caution and same-language answers', () {
      expect(
        islamicChatbotSystemInstruction,
        contains('recognized scholarly differences'),
      );
      expect(
        islamicChatbotSystemInstruction,
        contains('qualified local scholar or official religious authority'),
      );
      expect(
        islamicChatbotSystemInstruction,
        contains('Respond in the same language'),
      );
    });
  });
}
