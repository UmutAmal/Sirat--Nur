import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:sirat_i_nur/core/widgets/premium_card.dart';
import 'package:sirat_i_nur/features/settings/settings_provider.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(settingsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () => context.pop(),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Prayer
            _sectionTitle(context, 'Prayer Calculation'),
            const SizedBox(height: 8),
            PremiumCard(
              child: Column(
                children: [
                  _settingsTile(
                    context,
                    icon: Icons.calculate_rounded,
                    title: 'Calculation Method',
                    value: settings.calculationMethod,
                    onTap: () => _showMethodPicker(context, ref),
                  ),
                  const Divider(height: 1),
                  _settingsTile(
                    context,
                    icon: Icons.account_balance_rounded,
                    title: 'Madhab',
                    value: settings.madhab,
                    onTap: () => _showMadhabPicker(context, ref),
                  ),
                  const Divider(height: 1),
                  _settingsTile(
                    context,
                    icon: Icons.music_note_rounded,
                    title: 'Audio Voice',
                    value: settings.audioVoice,
                    onTap: () {},
                  ),
                ],
              ),
            ),
            // Location
            _sectionTitle(context, 'Location'),
            const SizedBox(height: 8),
            PremiumCard(
              child: _settingsTile(
                context,
                icon: Icons.location_on_rounded,
                title: 'Location',
                value: settings.locationName ?? 'Not set',
                onTap: () => context.push('/settings/location'),
              ),
            ),
            // Qibla
            _sectionTitle(context, 'Qibla Settings'),
            const SizedBox(height: 8),
            PremiumCard(
              child: Column(
                children: [
                  _settingsTile(
                    context,
                    icon: Icons.tune_rounded,
                    title: 'Qibla Offset',
                    value: '${settings.qiblaOffset.toStringAsFixed(1)}°',
                    onTap: () {},
                  ),
                  const Divider(height: 1),
                  _switchTile(
                    context,
                    icon: Icons.blur_on_rounded,
                    title: 'Smoothing',
                    value: settings.qiblaSmoothingEnabled,
                    onChanged: (v) => ref.read(settingsProvider.notifier).toggleQiblaSmoothing(v),
                  ),
                ],
              ),
            ),
            // Appearance
            _sectionTitle(context, 'Appearance'),
            const SizedBox(height: 8),
            PremiumCard(
              child: Column(
                children: [
                  _switchTile(
                    context,
                    icon: Icons.dark_mode_rounded,
                    title: 'Dark Mode',
                    value: settings.isDarkMode,
                    onChanged: (v) => ref.read(settingsProvider.notifier).toggleDarkMode(v),
                  ),
                  const Divider(height: 1),
                  _settingsTile(
                    context,
                    icon: Icons.language_rounded,
                    title: 'Language',
                    value: settings.languageCode?.toUpperCase() ?? 'System',
                    onTap: () {},
                  ),
                ],
              ),
            ),
            // Data
            _sectionTitle(context, 'Data & Storage'),
            const SizedBox(height: 8),
            PremiumCard(
              child: Column(
                children: [
                  _settingsTile(
                    context,
                    icon: Icons.delete_sweep_rounded,
                    title: 'Clear Cache',
                    value: '',
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Cache cleared')),
                      );
                    },
                  ),
                  const Divider(height: 1),
                  _settingsTile(
                    context,
                    icon: Icons.bug_report_rounded,
                    title: 'Diagnostics',
                    value: '',
                    onTap: () => context.push('/settings/diagnostics'),
                  ),
                ],
              ),
            ),
            // About
            _sectionTitle(context, 'About'),
            const SizedBox(height: 8),
            PremiumCard(
              child: Column(
                children: [
                  _settingsTile(context, icon: Icons.info_outline_rounded, title: 'App Version', value: '2.0.0', onTap: () {}),
                  const Divider(height: 1),
                  _settingsTile(context, icon: Icons.star_rate_rounded, title: 'Rate App', value: '', onTap: () {}),
                  const Divider(height: 1),
                  _settingsTile(context, icon: Icons.share_rounded, title: 'Share App', value: '', onTap: () {}),
                  const Divider(height: 1),
                  _settingsTile(context, icon: Icons.privacy_tip_outlined, title: 'Privacy Policy', value: '', onTap: () {}),
                ],
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _sectionTitle(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 4),
      child: Text(title, style: Theme.of(context).textTheme.titleSmall?.copyWith(
        fontWeight: FontWeight.w900, color: AppColors.emerald)),
    );
  }

  Widget _settingsTile(BuildContext context, {
    required IconData icon, required String title, required String value, required VoidCallback onTap,
  }) {
    return ListTile(
      dense: true,
      contentPadding: EdgeInsets.zero,
      leading: Icon(icon, color: AppColors.emerald, size: 22),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 14)),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (value.isNotEmpty) Text(value, style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600,
            color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.4))),
          if (value.isNotEmpty) const SizedBox(width: 4),
          const Icon(Icons.chevron_right_rounded, size: 20),
        ],
      ),
      onTap: onTap,
    );
  }

  Widget _switchTile(BuildContext context, {
    required IconData icon, required String title, required bool value, required ValueChanged<bool> onChanged,
  }) {
    return ListTile(
      dense: true,
      contentPadding: EdgeInsets.zero,
      leading: Icon(icon, color: AppColors.emerald, size: 22),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 14)),
      trailing: Switch.adaptive(value: value, onChanged: onChanged, activeTrackColor: AppColors.emerald),
    );
  }

  void _showMethodPicker(BuildContext context, WidgetRef ref) {
    const methods = ['Turkey', 'Egyptian', 'ISNA', 'MWL', 'Karachi', 'Umm al-Qura', 'Dubai', 'Kuwait', 'Singapore'];
    showModalBottomSheet(
      context: context,
      builder: (ctx) => ListView(
        shrinkWrap: true,
        children: methods.map((m) => ListTile(
          title: Text(m, style: const TextStyle(fontWeight: FontWeight.w700)),
          onTap: () {
            ref.read(settingsProvider.notifier).updateCalculationMethod(m);
            Navigator.pop(ctx);
          },
        )).toList(),
      ),
    );
  }

  void _showMadhabPicker(BuildContext context, WidgetRef ref) {
    const madhabs = ['Hanafi', "Shafi'i", 'Maliki', 'Hanbali'];
    showModalBottomSheet(
      context: context,
      builder: (ctx) => ListView(
        shrinkWrap: true,
        children: madhabs.map((m) => ListTile(
          title: Text(m, style: const TextStyle(fontWeight: FontWeight.w700)),
          onTap: () {
            ref.read(settingsProvider.notifier).updateMadhab(m);
            Navigator.pop(ctx);
          },
        )).toList(),
      ),
    );
  }
}
