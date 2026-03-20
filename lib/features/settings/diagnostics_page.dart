import 'package:flutter/material.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:sirat_i_nur/core/widgets/premium_card.dart';

class DiagnosticsPage extends StatelessWidget {
  const DiagnosticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Diagnostics')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PremiumCard(
              child: Column(
                children: [
                  _infoRow(context, 'App Version', '2.0.0'),
                  const Divider(height: 24),
                  _infoRow(context, 'Flutter', 'Stable'),
                  const Divider(height: 24),
                  _infoRow(context, 'Dart', 'Latest'),
                  const Divider(height: 24),
                  _infoRow(context, 'Supabase', 'Connected'),
                  const Divider(height: 24),
                  _infoRow(context, 'Premium', 'Free'),
                  const Divider(height: 24),
                  _infoRow(context, 'L10n Files', '3 (EN, TR, AR)'),
                  const Divider(height: 24),
                  _infoRow(context, 'Local DB', 'Active'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _infoRow(BuildContext context, String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 14)),
        Text(value, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: AppColors.emerald)),
      ],
    );
  }
}
