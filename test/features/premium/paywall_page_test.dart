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
      'Store temporarily unavailable',
    );
  });
}
