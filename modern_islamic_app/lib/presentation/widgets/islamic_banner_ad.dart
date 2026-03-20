import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:sirat_i_nur/core/services/ad_service.dart';
import 'package:sirat_i_nur/core/services/iap_service.dart';

class IslamicBannerAd extends ConsumerStatefulWidget {
  const IslamicBannerAd({super.key});

  @override
  ConsumerState<IslamicBannerAd> createState() => _IslamicBannerAdState();
}

class _IslamicBannerAdState extends ConsumerState<IslamicBannerAd> {
  BannerAd? _bannerAd;
  bool _isLoaded = false;

  @override
  void initState() {
    super.initState();
    _loadAd();
  }

  void _loadAd() {
    _bannerAd = BannerAd(
      adUnitId: AdService.bannerAdUnitId,
      request: const AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          if (mounted) {
            setState(() {
              _isLoaded = true;
            });
          }
        },
        onAdFailedToLoad: (ad, err) {
          debugPrint('BannerAd failed to load: $err');
          ad.dispose();
        },
      ),
    )..load();
  }

  @override
  void dispose() {
    _bannerAd?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // If user is a Pro member, do not allocate any space or attempt to render ad
    final isPro = ref.watch(proStatusProvider);
    if (isPro) return const SizedBox.shrink();

    // If ad hasn't loaded yet, occupy 0 space instead of an ugly white box
    if (!_isLoaded || _bannerAd == null) return const SizedBox.shrink();

    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: SafeArea(
        child: SizedBox(
          width: _bannerAd!.size.width.toDouble(),
          height: _bannerAd!.size.height.toDouble(),
          child: AdWidget(ad: _bannerAd!),
        ),
      ),
    );
  }
}
