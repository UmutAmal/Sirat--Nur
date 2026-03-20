import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:flutter/foundation.dart';

class AdService {
  static Future<void> init() async {
    // Initialize the main Ads SDK
    await MobileAds.instance.initialize();

    // CRITICAL: Configure the request configuration to strictly enforce Rating G (General Audience) globally
    // This physically prevents AdMob from serving ads containing violence, gambling, mature themes, or dating apps.
    // Also tags the application specifically for child-directed treatment if needed, though G covers clean requirements.
    RequestConfiguration requestConfiguration = RequestConfiguration(
      maxAdContentRating: MaxAdContentRating.g,
      tagForChildDirectedTreatment: TagForChildDirectedTreatment.yes,
    );
    await MobileAds.instance.updateRequestConfiguration(requestConfiguration);
  }

  // Uses standard Google Test Banner ID for development to prevent account bans
  // Replace with real Banner Unit ID in production dashboard
  static String get bannerAdUnitId {
    if (defaultTargetPlatform == TargetPlatform.android) {
      return 'ca-app-pub-3940256099942544/6300978111';
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      return 'ca-app-pub-3940256099942544/2934735716';
    }
    throw UnsupportedError('Unsupported platform');
  }

  // Uses standard Google Test Interstitial ID
  static String get interstitialAdUnitId {
    if (defaultTargetPlatform == TargetPlatform.android) {
      return 'ca-app-pub-3940256099942544/1033173712';
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      return 'ca-app-pub-3940256099942544/4411468910';
    }
    throw UnsupportedError('Unsupported platform');
  }
}
