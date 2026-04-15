import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// Removed legacy static stream import
import 'package:sirat_i_nur/core/providers/supabase_providers.dart';
import 'package:sirat_i_nur/core/services/app_metadata_service.dart';
import 'package:sirat_i_nur/core/services/offline_audio_service.dart';
import 'package:sirat_i_nur/core/services/audio_player_service.dart';
import 'package:sirat_i_nur/core/services/audio_sovereignty_service.dart';
import 'package:sirat_i_nur/core/services/prayer_profile_service.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:sirat_i_nur/core/widgets/premium_card.dart';
import 'package:sirat_i_nur/features/settings/quran_diagnostics.dart';
import 'package:sirat_i_nur/features/settings/settings_provider.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

class DiagnosticsPage extends ConsumerStatefulWidget {
  const DiagnosticsPage({super.key});

  @override
  ConsumerState<DiagnosticsPage> createState() => _DiagnosticsPageState();
}

@visibleForTesting
class DiagnosticsRowsDependencies {
  final String localeTag;
  final bool isDarkMode;
  final String? languageCode;
  final String? locationName;
  final String calculationMethod;
  final String madhab;

  const DiagnosticsRowsDependencies({
    required this.localeTag,
    required this.isDarkMode,
    required this.languageCode,
    required this.locationName,
    required this.calculationMethod,
    required this.madhab,
  });

  factory DiagnosticsRowsDependencies.fromState(
    SettingsState settings,
    Locale locale,
  ) {
    return DiagnosticsRowsDependencies(
      localeTag: locale.toLanguageTag(),
      isDarkMode: settings.isDarkMode,
      languageCode: settings.languageCode,
      locationName: settings.locationName,
      calculationMethod: settings.calculationMethod,
      madhab: settings.madhab,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is DiagnosticsRowsDependencies &&
        other.localeTag == localeTag &&
        other.isDarkMode == isDarkMode &&
        other.languageCode == languageCode &&
        other.locationName == locationName &&
        other.calculationMethod == calculationMethod &&
        other.madhab == madhab;
  }

  @override
  int get hashCode => Object.hash(
    localeTag,
    isDarkMode,
    languageCode,
    locationName,
    calculationMethod,
    madhab,
  );
}

@visibleForTesting
String resolveDiagnosticsVersion({
  String buildName = const String.fromEnvironment(
    'FLUTTER_BUILD_NAME',
    defaultValue: '2.0.0',
  ),
  String buildNumber = const String.fromEnvironment(
    'FLUTTER_BUILD_NUMBER',
    defaultValue: '1',
  ),
}) {
  return resolveAppVersion(buildName: buildName, buildNumber: buildNumber);
}

@visibleForTesting
bool isOfficialPrayerProfile(PrayerCalculationProfile profile) {
  return hasOfficialPrayerAuthority(profile);
}

@visibleForTesting
String resolvePrayerProfileValue(
  PrayerCalculationProfile profile, {
  String? customProfileValue,
}) {
  if (normalizeCalculationMethod(profile.calculationMethod) ==
          customPrayerMethod &&
      customProfileValue != null) {
    return customProfileValue;
  }

  return '${profile.calculationMethod} / ${displayMadhabLabel(profile.madhab)}';
}

@visibleForTesting
String resolvePrayerSourceValue(
  PrayerCalculationProfile profile, {
  String? customSourceValue,
}) {
  if (!isOfficialPrayerProfile(profile)) {
    return customSourceValue ?? profile.sourceName;
  }

  return '${profile.sourceName} (${profile.sourceUrl})';
}

@visibleForTesting
String buildDiagnosticsErrorText(AppLocalizations l10n) {
  return '${l10n.error}\n${l10n.checkConnection}';
}

@visibleForTesting
class AudioDiagnosticsSnapshot {
  final int adhanAssetsPresent;
  final int uiAssetsPresent;
  final int quranCloudSourcesPresent;
  final int quranCloudRecitersReady;
  final int sukunAssetsReady;

  const AudioDiagnosticsSnapshot({
    required this.adhanAssetsPresent,
    required this.uiAssetsPresent,
    required this.quranCloudSourcesPresent,
    required this.quranCloudRecitersReady,
    required this.sukunAssetsReady,
  });
}

@visibleForTesting
const Set<String> requiredAdhanAudioAssets = {
  LocalAudio.adhanMakkah,
  LocalAudio.adhanMadinah,
  LocalAudio.adhanFajr,
};

@visibleForTesting
const Set<String> requiredUiAudioAssets = {
  LocalAudio.tasbihClick,
  LocalAudio.tasbihComplete,
  LocalAudio.notificationTone,
  LocalAudio.prayerReminder,
  LocalAudio.pageFlip,
  LocalAudio.success,
};

@visibleForTesting
AudioDiagnosticsSnapshot buildAudioDiagnosticsSnapshot({
  required Iterable<String> manifestAssets,
  required AudioSovereigntyService audioService,
  Map<String, String> cloudSukunSources = const {},
  Map<String, Map<int, String>> cloudQuranCatalog = const {},
}) {
  final assetSet = manifestAssets.toSet();
  final adhanAssetsPresent = requiredAdhanAudioAssets
      .where(assetSet.contains)
      .length;
  final uiAssetsPresent = requiredUiAudioAssets.where(assetSet.contains).length;
  final quranCloudSourcesPresent = cloudQuranCatalog.values.fold<int>(
    0,
    (sum, surahs) => sum + surahs.length,
  );
  final quranCloudRecitersReady = OfflineReciters.reciters.keys.where((
    reciterId,
  ) {
    return (cloudQuranCatalog[reciterId] ?? const {}).length == 114;
  }).length;
  final sukunAssetsReady = expectedSukunSoundTypes.where((type) {
    final source = audioService.resolveSukunSource(
      type,
      cloudSources: cloudSukunSources,
    );
    if (source == null) {
      return false;
    }

    return isRemoteAudioSource(source) || assetSet.contains(source);
  }).length;

  return AudioDiagnosticsSnapshot(
    adhanAssetsPresent: adhanAssetsPresent,
    uiAssetsPresent: uiAssetsPresent,
    quranCloudSourcesPresent: quranCloudSourcesPresent,
    quranCloudRecitersReady: quranCloudRecitersReady,
    sukunAssetsReady: sukunAssetsReady,
  );
}

class _DiagnosticsPageState extends ConsumerState<DiagnosticsPage> {
  late Future<List<_DiagnosticRow>> _rowsFuture;
  ProviderSubscription<SettingsState>? _settingsSubscription;
  DiagnosticsRowsDependencies? _rowsDependencies;

  @override
  void initState() {
    super.initState();
    _settingsSubscription = ref.listenManual<SettingsState>(settingsProvider, (
      _,
      next,
    ) {
      if (!mounted) {
        return;
      }
      _syncRowsFuture(notify: true);
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _syncRowsFuture();
  }

  @override
  void dispose() {
    _settingsSubscription?.close();
    super.dispose();
  }

  void _syncRowsFuture({bool notify = false}) {
    final nextDependencies = DiagnosticsRowsDependencies.fromState(
      ref.read(settingsProvider),
      Localizations.localeOf(context),
    );

    if (_rowsDependencies == nextDependencies) {
      return;
    }

    void assign() {
      _rowsDependencies = nextDependencies;
      _rowsFuture = _buildRows();
    }

    if (notify && mounted) {
      setState(assign);
      return;
    }

    assign();
  }

  Future<List<_DiagnosticRow>> _buildRows() async {
    final l10n = AppLocalizations.of(context)!;
    final settings = ref.read(settingsProvider);
    final prayerProfile = profileForMethod(
      settings.calculationMethod,
      madhab: settings.madhab,
    );
    final prayerProfileIsOfficial = isOfficialPrayerProfile(prayerProfile);
    final rows = <_DiagnosticRow>[
      _DiagnosticRow(l10n.version, resolveDiagnosticsVersion(), true),
      _DiagnosticRow(
        l10n.theme,
        settings.isDarkMode ? l10n.darkMode : l10n.lightMode,
        true,
      ),
      _DiagnosticRow(
        l10n.language,
        settings.languageCode ?? l10n.systemDefault,
        true,
      ),
      _DiagnosticRow(
        l10n.location,
        settings.locationName ?? l10n.diagnosticsNotSet,
        settings.locationName != null,
      ),
      _DiagnosticRow(
        l10n.diagnosticsPrayerProfile,
        resolvePrayerProfileValue(
          prayerProfile,
          customProfileValue: l10n.diagnosticsPrayerCustomProfile(
            displayMadhabLabel(prayerProfile.madhab),
          ),
        ),
        prayerProfileIsOfficial,
      ),
      _DiagnosticRow(
        l10n.diagnosticsPrayerSource,
        resolvePrayerSourceValue(
          prayerProfile,
          customSourceValue: l10n.diagnosticsPrayerCustomSource,
        ),
        prayerProfileIsOfficial,
      ),
    ];

    rows.add(_DiagnosticRow(l10n.liveTv, l10n.diagnosticsCloudDriven, true));

    try {
      final supabase = ref.read(supabaseClientProvider);
      final surahCount = await supabase.from('quran_surahs').count();
      final ayahCount = await supabase.from('quran_ayahs').count();
      int? ayahsWithJuzCount;
      Object? structuralError;

      try {
        ayahsWithJuzCount = await supabase
            .from('quran_ayahs')
            .count()
            .not('juz_number', 'is', null);
      } catch (error) {
        structuralError = error;
      }

      rows.addAll(
        buildQuranDiagnosticRows(
          strings: QuranDiagnosticStrings(
            datasetLabel: l10n.diagnosticsQuranDataset,
            surahsLabel: l10n.diagnosticsQuranSurahs,
            ayahsLabel: l10n.diagnosticsQuranAyahs,
            juzMetadataLabel: l10n.diagnosticsQuranJuzMetadata,
            cloudTablesMissing: l10n.diagnosticsQuranCloudTablesMissing,
            cloudJuzMissing: l10n.diagnosticsQuranCloudJuzMissing,
            cloudCheckFailed: () =>
                l10n.diagnosticsQuranCloudCheckFailed(l10n.appUnknownError),
            cloudStructuralCheckFailed: () =>
                l10n.diagnosticsQuranCloudStructuralCheckFailed(
                  l10n.appUnknownError,
                ),
          ),
          surahCount: surahCount,
          ayahCount: ayahCount,
          ayahsWithJuzCount: ayahsWithJuzCount,
          structuralError: structuralError,
        ).map((row) => _DiagnosticRow(row.label, row.value, row.isHealthy)),
      );
    } catch (error) {
      rows.addAll(
        buildQuranDiagnosticRows(
          strings: QuranDiagnosticStrings(
            datasetLabel: l10n.diagnosticsQuranDataset,
            surahsLabel: l10n.diagnosticsQuranSurahs,
            ayahsLabel: l10n.diagnosticsQuranAyahs,
            juzMetadataLabel: l10n.diagnosticsQuranJuzMetadata,
            cloudTablesMissing: l10n.diagnosticsQuranCloudTablesMissing,
            cloudJuzMissing: l10n.diagnosticsQuranCloudJuzMissing,
            cloudCheckFailed: () =>
                l10n.diagnosticsQuranCloudCheckFailed(l10n.appUnknownError),
            cloudStructuralCheckFailed: () =>
                l10n.diagnosticsQuranCloudStructuralCheckFailed(
                  l10n.appUnknownError,
                ),
          ),
          error: error,
        ).map((row) => _DiagnosticRow(row.label, row.value, row.isHealthy)),
      );
    }

    try {
      final manifestJson = await rootBundle.loadString('AssetManifest.json');
      final Map<String, dynamic> manifest =
          jsonDecode(manifestJson) as Map<String, dynamic>;
      final assets = manifest.keys.toList();
      final audioService = ref.read(audioSovereigntyServiceProvider);
      final cloudSukunSources = await ref.read(
        sukunAudioSourcesProvider.future,
      );
      final cloudQuranCatalog = await OfflineReciters.getQuranAudioCatalog();
      final snapshot = buildAudioDiagnosticsSnapshot(
        manifestAssets: assets,
        audioService: audioService,
        cloudSukunSources: cloudSukunSources,
        cloudQuranCatalog: cloudQuranCatalog,
      );
      final expectedQuranAudioSources = OfflineReciters.reciters.length * 114;
      final quranAudioIsComplete =
          snapshot.quranCloudSourcesPresent == expectedQuranAudioSources &&
          snapshot.quranCloudRecitersReady == OfflineReciters.reciters.length;
      final quranAudioValue = switch (snapshot.quranCloudSourcesPresent) {
        0 => l10n.quranAudioSourcesUnavailable,
        final count when count == expectedQuranAudioSources =>
          l10n.diagnosticsFilesCount('$count/$expectedQuranAudioSources'),
        final count => l10n.quranAudioSourcesIncomplete(
          count.toString(),
          expectedQuranAudioSources.toString(),
        ),
      };

      rows.add(
        _DiagnosticRow(
          l10n.diagnosticsAdhanAudioAssets,
          l10n.diagnosticsFilesCount(
            '${snapshot.adhanAssetsPresent}/${requiredAdhanAudioAssets.length}',
          ),
          snapshot.adhanAssetsPresent == requiredAdhanAudioAssets.length,
        ),
      );
      rows.add(
        _DiagnosticRow(
          l10n.diagnosticsUiAudioAssets,
          l10n.diagnosticsFilesCount(
            '${snapshot.uiAssetsPresent}/${requiredUiAudioAssets.length}',
          ),
          snapshot.uiAssetsPresent == requiredUiAudioAssets.length,
        ),
      );
      rows.add(
        _DiagnosticRow(
          l10n.diagnosticsQuranAudioAssets,
          quranAudioValue,
          quranAudioIsComplete,
        ),
      );
      rows.add(
        _DiagnosticRow(
          l10n.sukunNatureLabel,
          l10n.diagnosticsSupportedCount(
            '${snapshot.sukunAssetsReady}/${expectedSukunSoundTypes.length}',
          ),
          snapshot.sukunAssetsReady == expectedSukunSoundTypes.length,
        ),
      );
    } catch (_) {
      debugPrint('Diagnostics asset manifest read failed');
      rows.add(
        _DiagnosticRow(
          l10n.diagnosticsAudioAssets,
          l10n.diagnosticsManifestReadFailed(l10n.appUnknownError),
          false,
        ),
      );
    }

    rows.add(
      _DiagnosticRow(
        l10n.diagnosticsLocalizationLocales,
        l10n.diagnosticsSupportedCount(
          '${AppLocalizations.supportedLocales.length}',
        ),
        AppLocalizations.supportedLocales.length > 3,
      ),
    );

    return rows;
  }

  Future<void> _refresh() async {
    setState(() {
      _rowsFuture = _buildRows();
    });
    await _rowsFuture;
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.diagnostics),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: _refresh,
          ),
        ],
      ),
      body: FutureBuilder<List<_DiagnosticRow>>(
        future: _rowsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(color: AppColors.emerald),
            );
          }

          if (snapshot.hasError) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Text(
                  buildDiagnosticsErrorText(l10n),
                  textAlign: TextAlign.center,
                ),
              ),
            );
          }

          final rows = snapshot.data ?? const <_DiagnosticRow>[];
          return SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: PremiumCard(
              child: Column(
                children: [
                  for (int i = 0; i < rows.length; i++) ...[
                    _infoRow(context, rows[i]),
                    if (i != rows.length - 1) const Divider(height: 24),
                  ],
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _infoRow(BuildContext context, _DiagnosticRow row) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            row.label,
            style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
          ),
        ),
        const SizedBox(width: 12),
        Flexible(
          child: Text(
            row.value,
            textAlign: TextAlign.right,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 13,
              color: row.isHealthy ? AppColors.emerald : Colors.orangeAccent,
            ),
          ),
        ),
      ],
    );
  }
}

class _DiagnosticRow {
  final String label;
  final String value;
  final bool isHealthy;

  const _DiagnosticRow(this.label, this.value, this.isHealthy);
}
