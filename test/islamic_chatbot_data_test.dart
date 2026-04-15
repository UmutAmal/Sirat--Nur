import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/core/constants/islamic_chatbot_data.dart';
import 'dart:io';

void main() {
  test('IslamicChatbotData stays disabled until the dataset is verified', () {
    expect(IslamicChatbotData.hasVerifiedDataset, isFalse);
    expect(IslamicChatbotData.getResponse('namaz nasil kilinir', true), isNull);
    expect(IslamicChatbotData.getResponse('how to pray', false), isNull);
  });

  test(
    'IslamicChatbotData source no longer embeds the retired local corpus',
    () {
      final source = File(
        'lib/core/constants/islamic_chatbot_data.dart',
      ).readAsStringSync();

      expect(source.contains('6666 Ayet'), isFalse);
      expect(source.contains('Namaz, müminin mi\'racıdır.'), isFalse);
      expect(source.contains('Allahümme leysüm bihî'), isFalse);
      expect(source.contains('Sahih Buhari'), isFalse);
    },
  );

  test('ARB key helper does not reintroduce retired local AI copy', () {
    final source = File('tool/add_keys.dart').readAsStringSync();

    expect(source.contains('Download Local AI'), isFalse);
    expect(source.contains('Please switch to Local AI'), isFalse);
    expect(source.contains('[LOCAL AI]'), isFalse);
    expect(source.contains("Yerel AI'yi İndir"), isFalse);
    expect(source.contains('Lütfen Yerel AI moduna geçin'), isFalse);
    expect(source.contains('[YEREL AI]'), isFalse);
  });
}
