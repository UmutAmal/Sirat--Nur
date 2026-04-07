import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sirat_i_nur/features/premium/premium_provider.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

class PaywallPage extends ConsumerWidget {
  const PaywallPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final premiumState = ref.watch(premiumProvider);
    final l10n = AppLocalizations.of(context)!;

    // If already premium, just show confirmation and pop
    if (premiumState.isPremium) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (context.mounted) context.pop();
      });
    }

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: AppColors.darkGradient),
        child: SafeArea(
          child: Column(
            children: [
              // Close button
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: IconButton(
                    icon: const Icon(Icons.close_rounded, color: Colors.white54, size: 28),
                    onPressed: () => context.pop(),
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Column(
                    children: [
                      // Icon
                      Container(
                        padding: const EdgeInsets.all(24),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.emeraldLight.withValues(alpha: 0.15),
                          boxShadow: [BoxShadow(color: AppColors.emeraldLight.withValues(alpha: 0.2), blurRadius: 40, spreadRadius: 10)],
                        ),
                        child: const Icon(Icons.auto_awesome_rounded, size: 56, color: AppColors.emeraldLight),
                      ),
                      const SizedBox(height: 32),
                      const Text('Sirat-i Nur', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w900, color: Colors.white, letterSpacing: 1)),
                      const SizedBox(height: 4),
                      ShaderMask(
                        shaderCallback: (bounds) => const LinearGradient(colors: [AppColors.gold, AppColors.emeraldLight]).createShader(bounds),
                        child: Text(l10n.premium.toUpperCase(), style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w900, color: Colors.white, letterSpacing: 4)),
                      ),
                      const SizedBox(height: 16),
                      Text(l10n.paywallUnlockAll,
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white.withValues(alpha: 0.6), fontSize: 15, height: 1.6)),
                      const SizedBox(height: 40),
                      // Features
                      _featureRow(Icons.psychology_rounded, l10n.paywallFeature1Title, l10n.paywallFeature1Desc),
                      _featureRow(Icons.cloud_download_rounded, l10n.paywallFeature2Title, l10n.paywallFeature2Desc),
                      _featureRow(Icons.palette_rounded, l10n.paywallFeature3Title, l10n.paywallFeature3Desc),
                      _featureRow(Icons.block_rounded, l10n.paywallFeature4Title, l10n.paywallFeature4Desc),
                      const SizedBox(height: 40),
                      // Error message
                      if (premiumState.error != null)
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: Text(
                            premiumState.error!,
                            textAlign: TextAlign.center,
                            style: const TextStyle(color: Colors.redAccent, fontSize: 13),
                          ),
                        ),
                      // Purchase button
                      Container(
                        width: double.infinity,
                        height: 64,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [AppColors.emeraldDeep, AppColors.emeraldLight]),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [BoxShadow(color: AppColors.emeraldLight.withValues(alpha: 0.4), blurRadius: 20, offset: const Offset(0, 8))],
                        ),
                        child: Material(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(20),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(20),
                            onTap: premiumState.isLoading
                                ? null
                                : () => ref.read(premiumProvider.notifier).purchasePremium(),
                            child: Center(
                              child: premiumState.isLoading
                                  ? const SizedBox(
                                      width: 24,
                                      height: 24,
                                      child: CircularProgressIndicator(
                                        strokeWidth: 2.5,
                                        color: Colors.white,
                                      ),
                                    )
                                  : Text(l10n.paywallGetAccess,
                                      style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 18)),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextButton(
                        onPressed: premiumState.isLoading
                            ? null
                            : () => ref.read(premiumProvider.notifier).restorePurchases(),
                        child: Text(l10n.restorePurchases,
                          style: TextStyle(color: Colors.white.withValues(alpha: 0.5), fontWeight: FontWeight.w700)),
                      ),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _featureRow(IconData icon, String title, String desc) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: AppColors.emeraldLight.withValues(alpha: 0.15),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: AppColors.emeraldLight, size: 22),
          ),
          const SizedBox(width: 16),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 15)),
              Text(desc, style: TextStyle(color: Colors.white.withValues(alpha: 0.4), fontSize: 13)),
            ],
          )),
        ],
      ),
    );
  }
}
