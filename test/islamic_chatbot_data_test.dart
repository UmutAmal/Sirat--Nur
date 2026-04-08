import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/core/constants/islamic_chatbot_data.dart';

void main() {
  test('IslamicChatbotData stays disabled until the dataset is verified', () {
    expect(IslamicChatbotData.hasVerifiedDataset, isFalse);
    expect(IslamicChatbotData.getResponse('namaz nasil kilinir', true), isNull);
    expect(IslamicChatbotData.getResponse('how to pray', false), isNull);
  });
}
