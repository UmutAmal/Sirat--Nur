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
    expect(providerSource, isNot(contains(r'IAP stream error: $error')));
    expect(providerSource, isNot(contains(r'IAP bootstrap failed: $e')));
    expect(providerSource, isNot(contains(r'Premium purchase failed: $e')));
    expect(providerSource, isNot(contains(r'Premium restore failed: $e')));
    expect(paywallSource, isNot(contains('return error;')));
    expect(paywallSource, contains('final premiumError = premiumState.error;'));
    expect(paywallSource, isNot(contains('premiumState.error!')));
  });

  test('premium purchase flow does not grant debug fallback entitlement', () {
    final providerSource = File(
      'lib/features/premium/premium_provider.dart',
    ).readAsStringSync();
    final normalizedProviderSource = providerSource.replaceAll('\r\n', '\n');

    expect(providerSource, isNot(contains('fallback for dev/testing')));
    expect(providerSource, isNot(contains('if (kDebugMode)')));
    expect(
      normalizedProviderSource,
      isNot(
        contains(
          "await _prefs.setBool('isPremium', true);\n        state = PremiumState(isPremium: true);\n        return;",
        ),
      ),
    );
    expect(providerSource, contains('kPremiumProductUnavailableErrorCode'));
    expect(providerSource, contains('IAP bootstrap failed'));
  });

  test('premium restore timeout is cancellable and dispose safe', () {
    final providerSource = File(
      'lib/features/premium/premium_provider.dart',
    ).readAsStringSync();

    expect(providerSource, isNot(contains('Future.delayed')));
    expect(providerSource, contains('Timer? _restoreTimeout;'));
    expect(
      providerSource,
      contains('_restoreTimeout = Timer(const Duration(seconds: 5), () {'),
    );
    expect(
      providerSource,
      contains('if (mounted && state.isLoading && !state.isPremium)'),
    );
    expect(providerSource, contains('void _cancelRestoreTimeout()'));
    expect(providerSource, contains('_restoreTimeout?.cancel();'));
    expect(
      '_cancelRestoreTimeout();'.allMatches(providerSource).length,
      greaterThanOrEqualTo(5),
    );
  });

  test(
    'premium purchase acknowledgements are awaited from async stream work',
    () {
      final providerSource = File(
        'lib/features/premium/premium_provider.dart',
      ).readAsStringSync();

      expect(providerSource, contains('unawaited(_onPurchaseUpdate'));
      expect(providerSource, contains('Future<void> _onPurchaseUpdate'));
      expect(
        providerSource,
        contains('await _iap.completePurchase(purchase);'),
      );
      final unawaitedAcknowledgements = providerSource
          .split('\n')
          .where(
            (line) =>
                line.contains('_iap.completePurchase(purchase);') &&
                !line.trimLeft().startsWith('await '),
          );
      expect(unawaitedAcknowledgements, isEmpty);
    },
  );
}
