import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sirat_i_nur/features/settings/settings_provider.dart';

/// Product ID for the lifetime premium unlock (must match Play Console / App Store Connect).
const String kPremiumProductId = 'sirat_nur_premium_lifetime';
const String kPremiumPurchaseFailedErrorCode = 'premium_purchase_failed';
const String kPremiumProductUnavailableErrorCode =
    'premium_product_unavailable';
const Object _premiumUnset = Object();

/// Premium state: tracks whether the user has premium access.
class PremiumState {
  final bool isPremium;
  final bool isLoading;
  final String? error;

  const PremiumState({
    this.isPremium = false,
    this.isLoading = false,
    this.error,
  });

  PremiumState copyWith({
    bool? isPremium,
    bool? isLoading,
    Object? error = _premiumUnset,
  }) {
    return PremiumState(
      isPremium: isPremium ?? this.isPremium,
      isLoading: isLoading ?? this.isLoading,
      error: identical(error, _premiumUnset) ? this.error : error as String?,
    );
  }
}

class PremiumNotifier extends StateNotifier<PremiumState> {
  final SharedPreferences _prefs;
  final InAppPurchase _iap;
  StreamSubscription<List<PurchaseDetails>>? _subscription;
  List<ProductDetails> _products = [];

  PremiumNotifier(this._prefs)
    : _iap = InAppPurchase.instance,
      super(PremiumState(isPremium: _prefs.getBool('isPremium') ?? false)) {
    _init();
  }

  Future<void> _init() async {
    try {
      final available = await _iap.isAvailable();
      if (!available) {
        debugPrint('IAP not available on this device');
        state = state.copyWith(error: kPremiumProductUnavailableErrorCode);
        return;
      }

      // Listen to purchase updates
      _subscription = _iap.purchaseStream.listen(
        _onPurchaseUpdate,
        onError: (_) {
          debugPrint('IAP stream error');
          state = state.copyWith(
            isLoading: false,
            error: kPremiumPurchaseFailedErrorCode,
          );
        },
      );

      // Query available products
      final response = await _iap.queryProductDetails({kPremiumProductId});
      if (response.productDetails.isNotEmpty) {
        _products = response.productDetails;
      } else {
        state = state.copyWith(error: kPremiumProductUnavailableErrorCode);
      }
    } catch (_) {
      debugPrint('IAP bootstrap failed');
      state = state.copyWith(
        isLoading: false,
        error: kPremiumProductUnavailableErrorCode,
      );
    }
  }

  void _onPurchaseUpdate(List<PurchaseDetails> purchaseDetailsList) {
    for (final purchase in purchaseDetailsList) {
      if (purchase.productID != kPremiumProductId) continue;

      switch (purchase.status) {
        case PurchaseStatus.pending:
          state = state.copyWith(isLoading: true);
          break;

        case PurchaseStatus.purchased:
        case PurchaseStatus.restored:
          _verifyAndDeliver(purchase);
          break;

        case PurchaseStatus.error:
          state = state.copyWith(
            isLoading: false,
            error: kPremiumPurchaseFailedErrorCode,
          );
          if (purchase.pendingCompletePurchase) {
            _iap.completePurchase(purchase);
          }
          break;

        case PurchaseStatus.canceled:
          state = state.copyWith(isLoading: false);
          if (purchase.pendingCompletePurchase) {
            _iap.completePurchase(purchase);
          }
          break;
      }
    }
  }

  Future<void> _verifyAndDeliver(PurchaseDetails purchase) async {
    // Entitlement is granted only after the platform store emits a purchased
    // or restored update for the configured product.
    await _prefs.setBool('isPremium', true);
    state = PremiumState(isPremium: true);

    if (purchase.pendingCompletePurchase) {
      await _iap.completePurchase(purchase);
    }
  }

  /// Initiate a real purchase through the platform store.
  Future<void> purchasePremium() async {
    if (_products.isEmpty) {
      state = state.copyWith(error: kPremiumProductUnavailableErrorCode);
      return;
    }

    state = state.copyWith(isLoading: true, error: null);

    final product = _products.first;
    final purchaseParam = PurchaseParam(productDetails: product);

    try {
      await _iap.buyNonConsumable(purchaseParam: purchaseParam);
    } catch (_) {
      debugPrint('Premium purchase failed');
      state = state.copyWith(
        isLoading: false,
        error: kPremiumPurchaseFailedErrorCode,
      );
    }
  }

  /// Restore previous purchases from the store.
  Future<void> restorePurchases() async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      await _iap.restorePurchases();
      // The stream listener will handle the restored purchases.
      // If nothing is restored after a timeout, clear loading.
      Future.delayed(const Duration(seconds: 5), () {
        if (state.isLoading) {
          state = state.copyWith(isLoading: false);
        }
      });
    } catch (_) {
      debugPrint('Premium restore failed');
      state = state.copyWith(
        isLoading: false,
        error: kPremiumPurchaseFailedErrorCode,
      );
    }
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }
}

final premiumProvider = StateNotifierProvider<PremiumNotifier, PremiumState>((
  ref,
) {
  final prefs = ref.watch(sharedPreferencesProvider);
  return PremiumNotifier(prefs);
});
