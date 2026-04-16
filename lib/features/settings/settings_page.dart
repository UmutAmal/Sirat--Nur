import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:share_plus/share_plus.dart';
import 'package:sirat_i_nur/core/constants/app_constants.dart';
import 'package:sirat_i_nur/core/services/app_metadata_service.dart';
import 'package:sirat_i_nur/core/services/prayer_profile_service.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:sirat_i_nur/core/utils/external_url.dart';
import 'package:sirat_i_nur/core/utils/locale_utils.dart';
import 'package:sirat_i_nur/core/widgets/premium_card.dart';
import 'package:sirat_i_nur/features/settings/settings_provider.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

String displayAudioVoiceLabel(AppLocalizations l10n, String voice) {
  switch (normalizeAudioVoice(voice)) {
    case abdulBasetVoice:
      return l10n.audioVoiceAbdulBaset;
    case sudaisVoice:
      return l10n.audioVoiceSudais;
    case misharyAlafasyVoice:
    default:
      return l10n.audioVoiceMisharyAlafasy;
  }
}

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(settingsProvider);
    final l10n = AppLocalizations.of(context)!;
    final locationName = settings.locationName;
    final appVersion = resolveAppVersion();
    final prayerProfile = profileForMethod(
      settings.calculationMethod,
      madhab: settings.madhab,
    );
    final prayerAuthorityIsOfficial = hasOfficialPrayerAuthority(prayerProfile);
    final prayerAuthorityDetails = prayerAuthorityIsOfficial
        ? '${prayerProfile.sourceName}\n${prayerProfile.sourceUrl}'
        : l10n.diagnosticsPrayerCustomSource;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.settings),
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
            _sectionTitle(context, l10n.prayerCalculation),
            const SizedBox(height: 8),
            PremiumCard(
              child: Column(
                children: [
                  _settingsTile(
                    context,
                    icon: Icons.calculate_rounded,
                    title: l10n.method,
                    value: settings.calculationMethod,
                    onTap: () => _showMethodPicker(context, ref),
                  ),
                  const Divider(height: 1),
                  _settingsTile(
                    context,
                    icon: Icons.account_balance_rounded,
                    title: l10n.madhab,
                    value: settings.madhab,
                    onTap: () => _showMadhabPicker(context, ref),
                  ),
                  const Divider(height: 1),
                  ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(
                      Icons.verified_user_rounded,
                      color: AppColors.emerald,
                      size: 22,
                    ),
                    title: Text(
                      l10n.diagnosticsPrayerSource,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: Text(
                        prayerAuthorityDetails,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(
                            context,
                          ).colorScheme.onSurface.withValues(alpha: 0.65),
                        ),
                      ),
                    ),
                    trailing: Icon(
                      prayerAuthorityIsOfficial
                          ? Icons.open_in_new_rounded
                          : Icons.block_rounded,
                      size: 20,
                    ),
                    onTap: prayerAuthorityIsOfficial
                        ? () => launchExternalHttpUrl(
                            context,
                            prayerProfile.sourceUrl,
                          )
                        : null,
                  ),
                  const Divider(height: 1),
                  _settingsTile(
                    context,
                    icon: Icons.music_note_rounded,
                    title: l10n.audioVoice,
                    value: displayAudioVoiceLabel(l10n, settings.audioVoice),
                    onTap: () => _showAudioVoicePicker(context, ref),
                  ),
                ],
              ),
            ),
            _sectionTitle(context, l10n.location),
            const SizedBox(height: 8),
            PremiumCard(
              child: _settingsTile(
                context,
                icon: Icons.location_on_rounded,
                title: l10n.location,
                value: locationName == null
                    ? '-'
                    : (settings.timezone == null
                          ? locationName
                          : '$locationName (${settings.timezone})'),
                onTap: () => context.push('/settings/location'),
              ),
            ),
            _sectionTitle(context, l10n.qiblaCalibration),
            const SizedBox(height: 8),
            PremiumCard(
              child: Column(
                children: [
                  _settingsTile(
                    context,
                    icon: Icons.tune_rounded,
                    title: l10n.calibrationOffset,
                    value: l10n.currentOffset(
                      settings.qiblaOffset.toStringAsFixed(1),
                    ),
                    onTap: () => _showQiblaOffsetDialog(context, ref, l10n),
                  ),
                  const Divider(height: 1),
                  _switchTile(
                    context,
                    icon: Icons.blur_on_rounded,
                    title: l10n.compassSmoothing,
                    value: settings.qiblaSmoothingEnabled,
                    onChanged: (value) => ref
                        .read(settingsProvider.notifier)
                        .toggleQiblaSmoothing(value),
                  ),
                ],
              ),
            ),
            _sectionTitle(context, l10n.theme),
            const SizedBox(height: 8),
            PremiumCard(
              child: Column(
                children: [
                  _switchTile(
                    context,
                    icon: Icons.dark_mode_rounded,
                    title: l10n.darkMode,
                    value: settings.isDarkMode,
                    onChanged: (value) => ref
                        .read(settingsProvider.notifier)
                        .toggleDarkMode(value),
                  ),
                  const Divider(height: 1),
                  _settingsTile(
                    context,
                    icon: Icons.language_rounded,
                    title: l10n.language,
                    value: _languageLabel(settings.languageCode, l10n),
                    onTap: () => _showLanguagePicker(
                      context,
                      ref,
                      l10n,
                      settings.languageCode,
                    ),
                  ),
                ],
              ),
            ),
            _sectionTitle(context, l10n.dataStorage),
            const SizedBox(height: 8),
            PremiumCard(
              child: Column(
                children: [
                  _settingsTile(
                    context,
                    icon: Icons.delete_sweep_rounded,
                    title: l10n.clearCache,
                    value: '',
                    onTap: () {
                      PaintingBinding.instance.imageCache.clear();
                      PaintingBinding.instance.imageCache.clearLiveImages();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(l10n.cacheClearedSuccess)),
                      );
                    },
                  ),
                  const Divider(height: 1),
                  _settingsTile(
                    context,
                    icon: Icons.bug_report_rounded,
                    title: l10n.diagnostics,
                    value: '',
                    onTap: () => context.push('/settings/diagnostics'),
                  ),
                ],
              ),
            ),
            _sectionTitle(context, l10n.about),
            const SizedBox(height: 8),
            PremiumCard(
              child: Column(
                children: [
                  _settingsTile(
                    context,
                    icon: Icons.info_outline_rounded,
                    title: l10n.version,
                    value: appVersion,
                    onTap: () => showAboutDialog(
                      context: context,
                      applicationName: l10n.appTitle,
                      applicationVersion: appVersion,
                      applicationLegalese: resolveAppLegalese(l10n.appTitle),
                    ),
                  ),
                  const Divider(height: 1),
                  _settingsTile(
                    context,
                    icon: Icons.star_rate_rounded,
                    title: l10n.rateApp,
                    value: '',
                    onTap: () => launchExternalHttpUrl(context, playStoreUrl),
                  ),
                  const Divider(height: 1),
                  _settingsTile(
                    context,
                    icon: Icons.share_rounded,
                    title: l10n.shareApp,
                    value: '',
                    onTap: () {
                      SharePlus.instance.share(
                        ShareParams(text: buildSettingsShareText(l10n)),
                      );
                    },
                  ),
                  const Divider(height: 1),
                  _settingsTile(
                    context,
                    icon: Icons.privacy_tip_outlined,
                    title: l10n.privacyPolicy,
                    value: '',
                    onTap: () =>
                        launchExternalHttpUrl(context, privacyPolicyUrl),
                  ),
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
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleSmall?.copyWith(
          fontWeight: FontWeight.w900,
          color: AppColors.emerald,
        ),
      ),
    );
  }

  Widget _settingsTile(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String value,
    required VoidCallback onTap,
  }) {
    return ListTile(
      dense: true,
      contentPadding: EdgeInsets.zero,
      leading: Icon(icon, color: AppColors.emerald, size: 22),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (value.isNotEmpty)
            Text(
              value,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Theme.of(
                  context,
                ).colorScheme.onSurface.withValues(alpha: 0.4),
              ),
            ),
          if (value.isNotEmpty) const SizedBox(width: 4),
          const Icon(Icons.chevron_right_rounded, size: 20),
        ],
      ),
      onTap: onTap,
    );
  }

  Widget _switchTile(
    BuildContext context, {
    required IconData icon,
    required String title,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return ListTile(
      dense: true,
      contentPadding: EdgeInsets.zero,
      leading: Icon(icon, color: AppColors.emerald, size: 22),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
      ),
      trailing: Switch.adaptive(
        value: value,
        onChanged: onChanged,
        activeTrackColor: AppColors.emerald,
      ),
    );
  }

  void _showMethodPicker(BuildContext context, WidgetRef ref) {
    showModalBottomSheet(
      context: context,
      builder: (sheetContext) => ListView(
        shrinkWrap: true,
        children: selectablePrayerMethods
            .map(
              (method) => ListTile(
                title: Text(
                  method,
                  style: const TextStyle(fontWeight: FontWeight.w700),
                ),
                onTap: () {
                  ref
                      .read(settingsProvider.notifier)
                      .updateCalculationMethod(method);
                  Navigator.pop(sheetContext);
                },
              ),
            )
            .toList(),
      ),
    );
  }

  void _showMadhabPicker(BuildContext context, WidgetRef ref) {
    showModalBottomSheet(
      context: context,
      builder: (sheetContext) => ListView(
        shrinkWrap: true,
        children: selectableMadhabs
            .map(
              (madhab) => ListTile(
                title: Text(
                  _displayMadhab(madhab),
                  style: const TextStyle(fontWeight: FontWeight.w700),
                ),
                onTap: () {
                  ref.read(settingsProvider.notifier).updateMadhab(madhab);
                  Navigator.pop(sheetContext);
                },
              ),
            )
            .toList(),
      ),
    );
  }

  void _showAudioVoicePicker(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    showModalBottomSheet(
      context: context,
      builder: (sheetContext) => ListView(
        shrinkWrap: true,
        children: selectableAudioVoices
            .map(
              (voice) => ListTile(
                title: Text(
                  displayAudioVoiceLabel(l10n, voice),
                  style: const TextStyle(fontWeight: FontWeight.w700),
                ),
                onTap: () {
                  ref.read(settingsProvider.notifier).updateAudioVoice(voice);
                  Navigator.pop(sheetContext);
                },
              ),
            )
            .toList(),
      ),
    );
  }

  void _showQiblaOffsetDialog(
    BuildContext context,
    WidgetRef ref,
    AppLocalizations l10n,
  ) {
    double tempOffset = ref.read(settingsProvider).qiblaOffset;
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text(
          l10n.calibrationOffset,
          style: const TextStyle(fontWeight: FontWeight.w900),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(l10n.manualCorrectionDesc),
            const SizedBox(height: 20),
            StatefulBuilder(
              builder: (builderContext, setState) => Column(
                children: [
                  Text(
                    '${tempOffset.toStringAsFixed(1)}\u00B0',
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Slider(
                    value: tempOffset,
                    min: -180,
                    max: 180,
                    divisions: 360,
                    activeColor: AppColors.emerald,
                    onChanged: (value) => setState(() => tempOffset = value),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: Text(l10n.cancel),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: AppColors.emerald),
            onPressed: () {
              ref.read(settingsProvider.notifier).updateQiblaOffset(tempOffset);
              Navigator.pop(dialogContext);
            },
            child: Text(l10n.save, style: const TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  void _showLanguagePicker(
    BuildContext context,
    WidgetRef ref,
    AppLocalizations l10n,
    String? selectedCode,
  ) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (sheetContext) => DraggableScrollableSheet(
        initialChildSize: 0.7,
        minChildSize: 0.4,
        maxChildSize: 0.9,
        expand: false,
        builder: (context, scrollController) => Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                l10n.selectLanguage,
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w900),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.settings_suggest_rounded,
                color: AppColors.emerald,
              ),
              title: Text(
                l10n.systemDefault,
                style: const TextStyle(fontWeight: FontWeight.w700),
              ),
              trailing: selectedCode == null
                  ? const Icon(
                      Icons.check_circle_rounded,
                      color: AppColors.emerald,
                    )
                  : null,
              onTap: () {
                ref.read(settingsProvider.notifier).updateLanguage(null);
                Navigator.pop(sheetContext);
              },
            ),
            const Divider(),
            Expanded(
              child: ListView.builder(
                controller: scrollController,
                itemCount: supportedLanguages.length,
                itemBuilder: (context, index) {
                  final language = supportedLanguages[index];
                  final isSelected = selectedCode == language.code;
                  return ListTile(
                    title: Text(
                      language.nativeName,
                      style: const TextStyle(fontWeight: FontWeight.w700),
                    ),
                    subtitle: Text(
                      language.englishName,
                      style: TextStyle(
                        fontSize: 12,
                        color: Theme.of(
                          context,
                        ).colorScheme.onSurface.withValues(alpha: 0.5),
                      ),
                    ),
                    trailing: isSelected
                        ? const Icon(
                            Icons.check_circle_rounded,
                            color: AppColors.emerald,
                          )
                        : null,
                    onTap: () {
                      ref
                          .read(settingsProvider.notifier)
                          .updateLanguage(language.code);
                      Navigator.pop(sheetContext);
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _languageLabel(String? code, AppLocalizations l10n) {
    if (code == null || code.isEmpty) return l10n.systemDefault;

    final parsedCode = parseLocaleCode(code);
    if (parsedCode == null) return code.toUpperCase();

    final normalizedCode = localeKey(parsedCode);
    for (final candidate in supportedLanguages) {
      final parsed = parseLocaleCode(candidate.code);
      if (parsed != null && localeKey(parsed) == normalizedCode) {
        return '${candidate.nativeName} (${candidate.englishName})';
      }
    }

    return code.toUpperCase();
  }

  String _displayMadhab(String madhab) {
    return displayMadhabLabel(madhab);
  }
}

@visibleForTesting
String buildSettingsShareText(
  AppLocalizations l10n, {
  String appUrl = appWebsiteUrl,
}) {
  return l10n.shareAppMessage(l10n.appTitle, appUrl);
}
