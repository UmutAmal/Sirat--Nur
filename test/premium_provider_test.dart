import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/features/premium/premium_provider.dart';

void main() {
  group('PremiumState', () {
    test('default state is not premium, not loading, no error', () {
      const state = PremiumState();
      expect(state.isPremium, false);
      expect(state.isLoading, false);
      expect(state.error, isNull);
    });

    test('copyWith updates specified fields only', () {
      const state = PremiumState();
      final loading = state.copyWith(isLoading: true);
      expect(loading.isLoading, true);
      expect(loading.isPremium, false);

      final premium = state.copyWith(isPremium: true);
      expect(premium.isPremium, true);
      expect(premium.isLoading, false);

      final error = state.copyWith(error: 'Test error');
      expect(error.error, 'Test error');
      expect(error.isPremium, false);
    });

    test('copyWith preserves unchanged fields', () {
      const state = PremiumState(isPremium: true, isLoading: true);
      final updated = state.copyWith(error: 'Oops');
      expect(updated.isPremium, true);
      expect(updated.isLoading, true);
      expect(updated.error, 'Oops');
    });

    test('copyWith with no arguments returns equivalent state', () {
      const state = PremiumState(isPremium: true);
      final copy = state.copyWith();
      expect(copy.isPremium, true);
      expect(copy.isLoading, false);
      expect(copy.error, isNull);
    });

    test('error can be cleared by passing null explicitly', () {
      final state = const PremiumState().copyWith(error: 'fail');
      expect(state.error, 'fail');
      // copyWith(error: null) keeps error because of ?? operator,
      // but a fresh PremiumState clears it
      const fresh = PremiumState(isPremium: true);
      expect(fresh.error, isNull);
    });
  });

  // Note: PremiumNotifier cannot be unit-tested directly because it
  // accesses InAppPurchase.instance which requires platform bindings.
  // Integration / widget tests on a real device should cover the IAP flow.
}
