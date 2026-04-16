import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/features/library/zakat_calculator_page.dart';

void main() {
  test('ZakatCalculator keeps the existing gold nisab calculation', () {
    final result = ZakatCalculator.calculateTotal(
      goldGrams: 100,
      goldPricePerGram: 70,
      silverGrams: 0,
      silverPricePerGram: 0.90,
      cashAmount: 0,
      businessInventory: 0,
      businessDebts: 0,
      investments: 0,
    );

    expect(result.isNisabMet, isTrue);
    expect(result.nisabValue, 5950);
    expect(result.totalAssets, 7000);
    expect(result.goldZakat, 175);
    expect(result.totalZakat, 175);
  });

  test('ZakatCalculatorPage renders results from a local snapshot', () {
    final source = File(
      'lib/features/library/zakat_calculator_page.dart',
    ).readAsStringSync();

    expect(source, contains('final result = _result;'));
    expect(source, isNot(contains('_result!')));
  });
}
