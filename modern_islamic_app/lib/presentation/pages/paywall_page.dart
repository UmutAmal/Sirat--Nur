import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sirat_i_nur/core/services/iap_service.dart';
import 'package:sirat_i_nur/core/utils/tr_en.dart';

class PaywallPage extends ConsumerStatefulWidget {
  const PaywallPage({super.key});

  @override
  ConsumerState<PaywallPage> createState() => _PaywallPageState();
}

class _PaywallPageState extends ConsumerState<PaywallPage> {
  bool _isLoading = false;

  Future<void> _handlePurchase() async {
    setState(() => _isLoading = true);
    try {
      await ref.read(proStatusProvider.notifier).purchasePremium();
      // Status listener handles actual unlocking
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              trEn(context, tr: 'Hata: $e', en: 'Error: $e'),
            ),
          ),
        );
      }
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  Future<void> _handleRestore() async {
    setState(() => _isLoading = true);
    try {
      await ref.read(proStatusProvider.notifier).restorePurchases();
      // Status listener handles UI pop/toast if successful
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              trEn(context, tr: 'Geri yüklenemedi: $e', en: 'Could not restore: $e'),
            ),
          ),
        );
      }
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Icon(
                      Icons.workspace_premium,
                      size: 80,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    const SizedBox(height: 24),
                    Text(
                      trEn(context, tr: 'Premium Ýçeriðin Kilidini Aç', en: 'Unlock Premium Content'),
                      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      trEn(
                        context,
                        tr: 'Reklamsýz bu Ýslami uygulamanýn geliþtirilmesini destekleyin ve Kur\'an ile baðýnýzý derinleþtirecek geliþmiþ özelliklerin kilidini açýn.',
                        en: 'Support the development of this ad-free Islamic app and unlock advanced features to deepen your connection with the Quran.',
                      ),
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 48),
                    _buildFeatureRow(
                      context,
                      Icons.color_lens,
                      trEn(context, tr: 'Tecvid Renk Kodlarý', en: 'Tajweed Color Codes'),
                      trEn(context, tr: 'Görsel yönlendirmeli telaffuz kurallarý.', en: 'Visually guided pronunciation rules.'),
                    ),
                    const SizedBox(height: 24),
                    _buildFeatureRow(
                      context,
                      Icons.translate,
                      trEn(context, tr: 'Kelime Kelime Çeviri', en: 'Word-by-Word Translation'),
                      trEn(context, tr: 'Her bir Arapça kökü anlayýn.', en: 'Understand every single Arabic root.'),
                    ),
                    const SizedBox(height: 24),
                    _buildFeatureRow(
                      context,
                      Icons.format_paint,
                      trEn(context, tr: 'Özel Tema Tasarýmlarý', en: 'Beautiful Custom Themes'),
                      trEn(context, tr: 'Özel uygulama renk paletlerinin kilidini açýn.', en: 'Unlock exclusive app color palettes.'),
                    ),
                    const SizedBox(height: 48),
                    
                    SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: _isLoading ? null : _handlePurchase,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).colorScheme.primary,
                          foregroundColor: Theme.of(context).colorScheme.onPrimary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          elevation: 0,
                        ),
                        child: _isLoading
                            ? const CircularProgressIndicator(color: Colors.white)
                            : Text(
                                trEn(context, tr: 'Ömür Boyu Eriþim - €1.00', en: 'Get Lifetime Access - €1.00'),
                                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextButton(
                      onPressed: _isLoading ? null : _handleRestore,
                      child: Text(
                        trEn(context, tr: 'Satýn Alýmlarý Geri Yükle', en: 'Restore Purchases'),
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureRow(BuildContext context, IconData icon, String title, String subtitle) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: Theme.of(context).colorScheme.onPrimaryContainer),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
                  fontSize: 14,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}


