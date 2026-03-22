import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sirat_i_nur/features/settings/settings_provider.dart';

final premiumProvider = StateNotifierProvider<PremiumNotifier, bool>((ref) {
  final prefs = ref.watch(sharedPreferencesProvider);
  return PremiumNotifier(prefs);
});

class PremiumNotifier extends StateNotifier<bool> {
  final _prefs;
  PremiumNotifier(this._prefs) : super(_prefs.getBool('isPremium') ?? false);

  Future<void> unlockPremium() async {
    await _prefs.setBool('isPremium', true);
    state = true;
  }
  
  Future<void> revokePremium() async {
    await _prefs.setBool('isPremium', false);
    state = false;
  }
}
