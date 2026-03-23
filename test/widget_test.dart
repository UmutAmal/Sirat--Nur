import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/features/premium/premium_provider.dart';

/// Smoke test: verify the app's core data structures can be instantiated.
void main() {
  testWidgets('App smoke test — core models instantiate correctly', (WidgetTester tester) async {
    // PremiumState
    const premiumState = PremiumState();
    expect(premiumState.isPremium, false);
    expect(premiumState.isLoading, false);
    expect(premiumState.error, isNull);

    // copyWith works
    final updated = premiumState.copyWith(isPremium: true);
    expect(updated.isPremium, true);
    expect(updated.isLoading, false);
  });
}
