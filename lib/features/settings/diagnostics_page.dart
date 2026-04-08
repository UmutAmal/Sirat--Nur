import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// Removed legacy static stream import
import 'package:sirat_i_nur/core/providers/supabase_providers.dart';
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

  const DiagnosticsRowsDependencies({
    required this.localeTag,
    required this.isDarkMode,
    required this.languageCode,
    required this.locationName,
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
        other.locationName == locationName;
  }

  @override
  int get hashCode => Object.hash(
    localeTag,
    isDarkMode,
    languageCode,
    locationName,
  );
}

class _DiagnosticsPageState extends ConsumerState<DiagnosticsPage> {
  late Future<List<_DiagnosticRow>> _rowsFuture;
  ProviderSubscription<SettingsState>? _settingsSubscription;
  DiagnosticsRowsDependencies? _rowsDependencies;

  @override
  void initState() {
    super.initState();
    _settingsSubscription = ref.listenManual<SettingsState>(
      settingsProvider,
      (_, next) {
        if (!mounted) {
          return;
        }
        _syncRowsFuture(notify: true);
      },
    );
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
    final rows = <_DiagnosticRow>[
      _DiagnosticRow(l10n.version, '2.0.0', true),
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
    ];

    rows.add(
      _DiagnosticRow(
        l10n.liveTv,
        l10n.diagnosticsCloudDriven,
        true,
      ),
    );

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
            cloudCheckFailed: (error) =>
                l10n.diagnosticsQuranCloudCheckFailed(error.toString()),
            cloudStructuralCheckFailed: (error) =>
                l10n.diagnosticsQuranCloudStructuralCheckFailed(
                  error.toString(),
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
            cloudCheckFailed: (err) =>
                l10n.diagnosticsQuranCloudCheckFailed(err.toString()),
            cloudStructuralCheckFailed: (err) =>
                l10n.diagnosticsQuranCloudStructuralCheckFailed(
                  err.toString(),
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

      final adhan = assets
          .where(
            (asset) =>
                asset.startsWith('assets/audio/adhan/') &&
                !asset.endsWith('.gitkeep'),
          )
          .length;
      final ui = assets
          .where(
            (asset) =>
                asset.startsWith('assets/audio/ui/') &&
                !asset.endsWith('.gitkeep'),
          )
          .length;
      final quran = assets
          .where(
            (asset) =>
                asset.startsWith('assets/audio/quran/') &&
                !asset.endsWith('.gitkeep'),
          )
          .length;

      rows.add(
        _DiagnosticRow(
          l10n.diagnosticsAdhanAudioAssets,
          l10n.diagnosticsFilesCount('$adhan'),
          adhan > 0,
        ),
      );
      rows.add(
        _DiagnosticRow(
          l10n.diagnosticsUiAudioAssets,
          l10n.diagnosticsFilesCount('$ui'),
          ui > 0,
        ),
      );
      rows.add(
        _DiagnosticRow(
          l10n.diagnosticsQuranAudioAssets,
          l10n.diagnosticsFilesCount('$quran'),
          quran > 0,
        ),
      );
    } catch (error) {
      rows.add(
        _DiagnosticRow(
          l10n.diagnosticsAudioAssets,
          l10n.diagnosticsManifestReadFailed(error.toString()),
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
                  '${l10n.error}: ${snapshot.error}',
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
