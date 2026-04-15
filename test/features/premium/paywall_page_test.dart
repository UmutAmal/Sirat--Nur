import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/features/premium/paywall_page.dart';
import 'package:sirat_i_nur/features/premium/premium_provider.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

void main() {
  test('localizePremiumError resolves known premium error codes', () async {
    final en = await AppLocalizations.delegate.load(const Locale('en'));

    expect(
      localizePremiumError(en, kPremiumProductUnavailableErrorCode),
      'Premium product is not available right now. Please try again later.',
    );
    expect(
      localizePremiumError(en, kPremiumPurchaseFailedErrorCode),
      'Purchase could not be completed. Please try again.',
    );
    expect(
      localizePremiumError(en, 'Store temporarily unavailable'),
      'Purchase could not be completed. Please try again.',
    );
  });

  test('premium errors never surface raw store exception text', () async {
    final tr = await AppLocalizations.delegate.load(const Locale('tr'));

    expect(
      localizePremiumError(tr, 'BillingClient: SERVICE_TIMEOUT'),
      'Satın alma tamamlanamadı. Lütfen tekrar deneyin.',
    );

    final providerSource = File(
      'lib/features/premium/premium_provider.dart',
    ).readAsStringSync();
    final paywallSource = File(
      'lib/features/premium/paywall_page.dart',
    ).readAsStringSync();

    expect(providerSource, isNot(contains('error: error.toString()')));
    expect(providerSource, isNot(contains('error: e.toString()')));
    expect(providerSource, isNot(contains('purchase.error?.message')));
    expect(paywallSource, isNot(contains('return error;')));
  });
}
