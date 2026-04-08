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

class _DiagnosticsPageState extends ConsumerState<DiagnosticsPage> {
  late Future<List<_DiagnosticRow>> _rowsFuture;

  @override
  void initState() {
    super.initState();
    _rowsFuture = _buildRows();
  }

  Future<List<_DiagnosticRow>> _buildRows() async {
    final settings = ref.read(settingsProvider);
    final rows = <_DiagnosticRow>[
      _DiagnosticRow('App Version', '2.0.0', true),
      _DiagnosticRow('Theme', settings.isDarkMode ? 'Dark' : 'Light', true),
      _DiagnosticRow(
        'Language',
        settings.languageCode ?? 'System default',
        true,
      ),
      _DiagnosticRow(
        'Location',
        settings.locationName ?? 'Not set',
        settings.locationName != null,
      ),
    ];

    rows.add(
      _DiagnosticRow(
        'Live TV Streams',
        'Cloud Driven',
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
          surahCount: surahCount,
          ayahCount: ayahCount,
          ayahsWithJuzCount: ayahsWithJuzCount,
          structuralError: structuralError,
        ).map((row) => _DiagnosticRow(row.label, row.value, row.isHealthy)),
      );
    } catch (error) {
      rows.addAll(
        buildQuranDiagnosticRows(
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

      rows.add(_DiagnosticRow('Adhan Audio Assets', '$adhan files', adhan > 0));
      rows.add(_DiagnosticRow('UI Audio Assets', '$ui files', ui > 0));
      rows.add(_DiagnosticRow('Quran Audio Assets', '$quran files', quran > 0));
    } catch (error) {
      rows.add(
        _DiagnosticRow('Audio Assets', 'Manifest read failed: $error', false),
      );
    }

    rows.add(
      _DiagnosticRow(
        'Localization Locales',
        '${AppLocalizations.supportedLocales.length} supported',
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
