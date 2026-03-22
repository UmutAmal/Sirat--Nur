import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sirat_i_nur/features/premium/premium_provider.dart';

class PaywallPage extends ConsumerWidget {
  const PaywallPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                        child: const Text('PREMIUM', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900, color: Colors.white, letterSpacing: 4)),
                      ),
                      const SizedBox(height: 16),
                      Text('Unlock all features for your spiritual journey',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white.withValues(alpha: 0.6), fontSize: 15, height: 1.6)),
                      const SizedBox(height: 40),
                      // Features
                      _featureRow(Icons.psychology_rounded, 'Neural Assistant Plus', 'Unlimited AI-powered Q&A'),
                      _featureRow(Icons.cloud_download_rounded, 'Unlimited Offline', 'Download all recitations'),
                      _featureRow(Icons.palette_rounded, 'Exclusive Designs', 'Premium themes & fonts'),
                      _featureRow(Icons.block_rounded, 'Ad-Free', 'Zero advertisements'),
                      const SizedBox(height: 40),
                      // Price button
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
                            onTap: () async {
                               await ref.read(premiumProvider.notifier).unlockPremium();
                               if (context.mounted) {
                                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Successfully unlocked Premium!')));
                                  context.pop();
                               }
                            },
                            child: const Center(
                              child: Text('Get Lifetime Access — \$1.00',
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 18)),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextButton(
                        onPressed: () async {
                           await ref.read(premiumProvider.notifier).unlockPremium();
                           if (context.mounted) {
                              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Purchases Restored')));
                              context.pop();
                           }
                        },
                        child: Text('Restore Purchases',
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
