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

  test(
    'ZakatCalculator does not report business zakat below aggregate nisab',
    () {
      final result = ZakatCalculator.calculateTotal(
        goldGrams: 0,
        goldPricePerGram: 100,
        silverGrams: 0,
        silverPricePerGram: 1,
        cashAmount: 0,
        businessInventory: 1000,
        businessDebts: 0,
        investments: 0,
      );

      expect(result.nisabValue, 8500);
      expect(result.totalAssets, 1000);
      expect(result.isNisabMet, isFalse);
      expect(result.businessZakat, 0);
      expect(result.totalZakat, 0);
    },
  );

  test(
    'ZakatCalculator applies rate when combined zakatable assets meet nisab',
    () {
      final result = ZakatCalculator.calculateTotal(
        goldGrams: 40,
        goldPricePerGram: 100,
        silverGrams: 0,
        silverPricePerGram: 1,
        cashAmount: 3000,
        businessInventory: 2000,
        businessDebts: 500,
        investments: 1000,
      );

      expect(result.nisabValue, 8500);
      expect(result.totalAssets, 9500);
      expect(result.isNisabMet, isTrue);
      expect(result.goldZakat, 100);
      expect(result.cashZakat, 75);
      expect(result.businessZakat, 37.5);
      expect(result.investmentZakat, 25);
      expect(result.totalZakat, 237.5);
    },
  );

  test(
    'ZakatCalculator does not let excess business debt create negative assets',
    () {
      final result = ZakatCalculator.calculateTotal(
        goldGrams: 0,
        goldPricePerGram: 100,
        silverGrams: 0,
        silverPricePerGram: 1,
        cashAmount: 0,
        businessInventory: 100,
        businessDebts: 250,
        investments: 0,
      );

      expect(result.totalAssets, 0);
      expect(result.businessZakat, 0);
      expect(result.totalZakat, 0);
    },
  );

  test('ZakatCalculatorPage renders results from a local snapshot', () {
    final source = File(
      'lib/features/library/zakat_calculator_page.dart',
    ).readAsStringSync();

    expect(source, contains('final result = _result;'));
    expect(source, isNot(contains('_result!')));
  });

  test('zakat amount parser accepts common decimal separators', () {
    expect(parseZakatAmount('70.50'), 70.5);
    expect(parseZakatAmount('70,50'), 70.5);
    expect(parseZakatAmount('1,234.50'), 1234.5);
    expect(parseZakatAmount('1.234,50'), 1234.5);
    expect(parseZakatAmount(''), 0);
    expect(parseZakatAmount('not a number'), 0);
  });

  test('zakat money formatter never applies stale exchange rates', () {
    final source = File(
      'lib/features/library/zakat_calculator_page.dart',
    ).readAsStringSync();

    expect(formatZakatMoney(100, 'USD', localeName: 'en'), r'$100.00');
    expect(formatZakatMoney(100, 'TRY', localeName: 'tr'), '₺100,00');
    expect(formatZakatMoney(100, 'EUR', localeName: 'en'), '€100.00');
    expect(source, isNot(contains('34.0')));
    expect(source, isNot(contains('0.92')));
    expect(source, isNot(contains('v * rate')));
  });

  test('zakat price fields do not ship stale market defaults', () {
    final source = File(
      'lib/features/library/zakat_calculator_page.dart',
    ).readAsStringSync();

    expect(source, isNot(contains("TextEditingController(text: '70')")));
    expect(source, isNot(contains("TextEditingController(text: '0.90')")));
  });
}
