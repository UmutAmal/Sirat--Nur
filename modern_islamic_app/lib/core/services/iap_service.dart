import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:in_app_purchase_android/in_app_purchase_android.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sirat_i_nur/presentation/blocs/settings_provider.dart';

// Provides the boolean state for whether the user has Premium/Pro unlocked.
final proStatusProvider = StateNotifierProvider<ProStatusNotifier, bool>((ref) {
  final prefs = ref.watch(sharedPreferencesProvider);
  return ProStatusNotifier(prefs);
});

class ProStatusNotifier extends StateNotifier<bool> {
  final SharedPreferences _prefs;
  static const String _proKey = 'is_premium_user';
  
  final InAppPurchase _iap = InAppPurchase.instance;
  StreamSubscription<List<PurchaseDetails>>? _subscription;

  static const String _premiumProductId = 'way_of_allah_premium_lifetime';
  bool _storeAvailable = false;
  bool _entitlementSyncInProgress = false;

  bool get _isAndroidStore =>
      !kIsWeb && defaultTargetPlatform == TargetPlatform.android;

  ProStatusNotifier(this._prefs) : super(true);

  // IAP initialization is disabled for testing/unlocked pro status.

  void _listenToPurchaseUpdated(List<PurchaseDetails> purchaseDetailsList) async {
    for (final purchaseDetails in purchaseDetailsList) {
      if (purchaseDetails.status == PurchaseStatus.purchased || 
          purchaseDetails.status == PurchaseStatus.restored) {
        if (_isValidPremiumPurchase(purchaseDetails)) {
          await _setProStatus(true);
        }
        if (purchaseDetails.pendingCompletePurchase) {
          await _iap.completePurchase(purchaseDetails);
        }
      } else if (purchaseDetails.status == PurchaseStatus.error) {
        // Log or handle purchase error appropriately
      }
    }
  }

  bool _isValidPremiumPurchase(PurchaseDetails purchaseDetails) {
    if (purchaseDetails.productID != _premiumProductId) return false;

    // Basic local validation; real verification should be server-side.
    final verification = purchaseDetails.verificationData;
    final hasVerificationData =
        verification.serverVerificationData.isNotEmpty ||
        verification.localVerificationData.isNotEmpty;

    return hasVerificationData;
  }

  Future<void> _syncEntitlementFromStore({bool force = false}) async {
    if (!_isAndroidStore) return;
    if (!force && !state) return;
    if (_entitlementSyncInProgress) return;
    if (!_storeAvailable) return;

    _entitlementSyncInProgress = true;
    try {
      final addition = _iap.getPlatformAddition<InAppPurchaseAndroidPlatformAddition>();
      final response = await addition.queryPastPurchases();
      if (response.error != null) {
        return;
      }
      final hasPremium = response.pastPurchases.any(_isValidPremiumPurchase);
      await _setProStatus(hasPremium);
    } catch (_) {
      // Keep existing state on any platform error.
    } finally {
      _entitlementSyncInProgress = false;
    }
  }

  Future<void> _setProStatus(bool value) async {
    if (state == value) return;
    await _prefs.setBool(_proKey, value);
    state = value;
  }

  Future<void> purchasePremium() async {
    final isAvailable = _storeAvailable || await _iap.isAvailable();
    _storeAvailable = isAvailable;
    if (!isAvailable) {
      throw Exception('Store is currently not available.');
    }
    
    final ProductDetailsResponse response = await _iap.queryProductDetails({_premiumProductId});
    if (response.notFoundIDs.isNotEmpty || response.productDetails.isEmpty) {
      throw Exception('Premium product not found. Ensure it is configured in the App Store/Play Console.');
    }
    
    final ProductDetails productDetails = response.productDetails.first;
    final PurchaseParam purchaseParam = PurchaseParam(productDetails: productDetails);
    
    await _iap.buyNonConsumable(purchaseParam: purchaseParam);
  }
  
  Future<void> refreshPremiumStatus() async {
    final isAvailable = _storeAvailable || await _iap.isAvailable();
    _storeAvailable = isAvailable;
    if (!isAvailable) {
      throw Exception('Store is currently not available.');
    }

    if (_isAndroidStore) {
      await _syncEntitlementFromStore(force: true);
    } else {
      // On iOS/macOS, restoring purchases is the supported way to refresh entitlement.
      await _iap.restorePurchases();
    }
  }

  Future<void> restorePurchases() async {
    final isAvailable = _storeAvailable || await _iap.isAvailable();
    _storeAvailable = isAvailable;
    if (!isAvailable) {
      throw Exception('Store is currently not available.');
    }
    await _iap.restorePurchases();
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }
}
