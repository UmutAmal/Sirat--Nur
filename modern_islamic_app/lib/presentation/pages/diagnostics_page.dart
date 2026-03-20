import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sirat_i_nur/core/constants/live_streams.dart';
import 'package:sirat_i_nur/presentation/blocs/diagnostics_provider.dart';
import 'package:sirat_i_nur/domain/entities/diagnostics_report.dart';
import 'package:sirat_i_nur/core/utils/tr_en.dart';

class DiagnosticsPage extends ConsumerWidget {
  const DiagnosticsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final diagnosticsAsync = ref.watch(diagnosticsProvider);
    final isTr = isTrLocale(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(trEn(context, tr: 'Tanılama', en: 'Diagnostics')),
        actions: [
          diagnosticsAsync.maybeWhen(
            data: (report) => IconButton(
              tooltip: trEn(context, tr: 'Raporu kopyala', en: 'Copy report'),
              icon: const Icon(Icons.copy),
              onPressed: () => _copyReport(context, report, isTr: isTr),
            ),
            orElse: () => const SizedBox.shrink(),
          ),
          IconButton(
            tooltip: trEn(context, tr: 'Yenile', en: 'Refresh'),
            icon: const Icon(Icons.refresh),
            onPressed: () => ref.invalidate(diagnosticsProvider),
          ),
        ],
      ),
      body: diagnosticsAsync.when(
        data: (report) {
          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              _SectionCard(
                title: trEn(context, tr: 'Dil ve Bölge', en: 'Locale & Region'),
                children: [
                  _InfoRow(label: trEn(context, tr: 'Uygulama dili', en: 'App locale'), value: report.appLocale),
                  _InfoRow(label: trEn(context, tr: 'Cihaz dili', en: 'Platform locale'), value: report.platformLocale),
                  _InfoRow(
                    label: trEn(context, tr: 'Dil ayarı', en: 'Language setting'),
                    value: report.settingsLanguageCode?.toUpperCase() ??
                        trEn(context, tr: 'Sistem varsayılanı', en: 'System default'),
                  ),
                  _InfoRow(
                    label: trEn(context, tr: 'Konum adı', en: 'Location name'),
                    value: report.locationName ?? trEn(context, tr: 'GPS / Ayarlanmadı', en: 'GPS / Not set'),
                  ),
                  _InfoRow(
                    label: trEn(context, tr: 'Konum servisleri', en: 'Location services'),
                    value: _boolLabel(report.locationServicesEnabled, isTr: isTr),
                  ),
                  _InfoRow(
                    label: trEn(context, tr: 'Konum izni', en: 'Location permission'),
                    value: report.locationPermission?.name ?? trEn(context, tr: 'Bilinmiyor', en: 'Unknown'),
                  ),
                ],
              ),
              _SectionCard(
                title: trEn(context, tr: 'Vakit ve Bildirimler', en: 'Prayer & Notifications'),
                children: [
                  _InfoRow(label: trEn(context, tr: 'Hesap yöntemi', en: 'Calculation method'), value: report.calculationMethod),
                  _InfoRow(label: trEn(context, tr: 'Mezhep', en: 'Madhab'), value: report.madhab),
                  _InfoRow(
                    label: trEn(context, tr: 'Bildirimler', en: 'Notifications'),
                    value: _boolLabel(report.notificationsEnabled, isTr: isTr),
                  ),
                ],
              ),
              _SectionCard(
                title: trEn(context, tr: 'Kur\'an Veritabanı', en: 'Quran Database'),
                children: report.quranStatus == null
                    ? [
                        _InfoRow(
                          label: trEn(context, tr: 'Durum', en: 'Status'),
                          value: report.quranError ?? trEn(context, tr: 'Kullanılamıyor', en: 'Unavailable'),
                          valueColor: Theme.of(context).colorScheme.error,
                        ),
                      ]
                    : [
                        _InfoRow(
                          label: trEn(context, tr: 'Durum', en: 'Status'),
                          value: report.quranStatus!.isComplete
                              ? trEn(context, tr: 'Tam', en: 'OK')
                              : trEn(context, tr: 'Eksik', en: 'Incomplete'),
                          valueColor: report.quranStatus!.isComplete
                              ? Colors.green
                              : Theme.of(context).colorScheme.error,
                        ),
                        _InfoRow(
                          label: trEn(context, tr: 'Sureler', en: 'Surahs'),
                          value: '${report.quranStatus!.surahCount} / 114',
                        ),
                        _InfoRow(
                          label: trEn(context, tr: 'Ayetler', en: 'Ayahs'),
                          value: '${report.quranStatus!.ayahCount} / 6236',
                        ),
                        _InfoRow(
                          label: trEn(context, tr: 'Eksik Arapça', en: 'Missing Arabic'),
                          value: report.quranStatus!.missingArabicCount.toString(),
                        ),
                        _InfoRow(
                          label: trEn(context, tr: 'Eksik İngilizce', en: 'Missing English'),
                          value: report.quranStatus!.missingEnglishCount.toString(),
                        ),
                        _InfoRow(
                          label: trEn(context, tr: 'Eksik Türkçe', en: 'Missing Turkish'),
                          value: report.quranStatus!.missingTurkishCount.toString(),
                        ),
                        if (report.quranStatus!.databasePath != null)
                          _InfoRow(
                            label: trEn(context, tr: 'Veritabanı yolu', en: 'DB path'),
                            value: report.quranStatus!.databasePath!,
                          ),
                      ],
              ),
              _SectionCard(
                title: trEn(context, tr: 'Kütüphane Veritabanı', en: 'Library Database'),
                children: report.libraryStatus == null
                    ? [
                        _InfoRow(
                          label: trEn(context, tr: 'Durum', en: 'Status'),
                          value: report.libraryError ?? trEn(context, tr: 'Kullanılamıyor', en: 'Unavailable'),
                          valueColor: Theme.of(context).colorScheme.error,
                        ),
                      ]
                    : [
                        _InfoRow(
                          label: trEn(context, tr: 'Veri paketi kurulu', en: 'Data pack installed'),
                          value: report.libraryStatus!.dataPackInstalled
                              ? trEn(context, tr: 'Evet', en: 'Yes')
                              : trEn(context, tr: 'Hayır', en: 'No'),
                          valueColor: report.libraryStatus!.dataPackInstalled
                              ? Colors.green
                              : Theme.of(context).colorScheme.error,
                        ),
                        _InfoRow(
                          label: trEn(context, tr: 'Koleksiyonlar', en: 'Collections'),
                          value: report.libraryStatus!.collectionCount.toString(),
                        ),
                        _InfoRow(
                          label: trEn(context, tr: 'Hadis sayısı', en: 'Hadith count'),
                          value: report.libraryStatus!.hadithCount.toString(),
                        ),
                        if (report.libraryStatus!.databaseUserVersion != null)
                          _InfoRow(
                            label: trEn(context, tr: 'Veritabanı sürümü', en: 'DB version'),
                            value: report.libraryStatus!.databaseUserVersion.toString(),
                          ),
                        if (report.libraryStatus!.dataPackSource != null)
                          _InfoRow(
                            label: trEn(context, tr: 'Veri paketi kaynağı', en: 'Data pack source'),
                            value: report.libraryStatus!.dataPackSource!,
                          ),
                      ],
              ),
              _SectionCard(
                title: trEn(context, tr: 'Canlı TV Yayınları', en: 'Live TV Streams'),
                children: liveStreams
                    .map(
                      (stream) => _InfoRow(
                        label: stream.shortLabel,
                        value: stream.videoId,
                      ),
                    )
                    .toList(),
              ),
              _SectionCard(
                title: trEn(context, tr: 'Ses', en: 'Audio'),
                children: [
                  _InfoRow(label: trEn(context, tr: 'Seçilen ses', en: 'Selected voice'), value: report.audioVoice),
                  const _InfoRow(
                    label: 'Male base',
                    value: 'https://server8.mp3quran.net/afs/',
                  ),
                  const _InfoRow(
                    label: 'Male fallback',
                    value: 'https://download.quranicaudio.com/quran/mishari_rashid_al-afasy/',
                  ),
                  const _InfoRow(
                    label: 'Female base',
                    value: 'https://download.quranicaudio.com/quran/english_walk/',
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Text(
                  trEn(context, tr: 'Oluşturuldu: ${report.generatedAt}', en: 'Generated: ${report.generatedAt}'),
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ],
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              trEn(context, tr: 'Tanılama başarısız: $err', en: 'Diagnostics failed: $err'),
            ),
          ),
        ),
      ),
    );
  }

  String _boolLabel(bool? value, {required bool isTr}) {
    if (value == null) return isTr ? 'Bilinmiyor' : 'Unknown';
    return value ? (isTr ? 'Etkin' : 'Enabled') : (isTr ? 'Devre dışı' : 'Disabled');
  }

  String _buildReportText(DiagnosticsReport report, {required bool isTr}) {
    final buffer = StringBuffer();
    buffer.writeln(isTr ? 'Way of Allah Tanılama' : 'Way of Allah Diagnostics');
    buffer.writeln(isTr ? 'Oluşturuldu: ${report.generatedAt}' : 'Generated: ${report.generatedAt}');
    buffer.writeln('');
    buffer.writeln(isTr ? 'Dil ve Bölge' : 'Locale & Region');
    buffer.writeln(isTr ? 'Uygulama dili: ${report.appLocale}' : 'App locale: ${report.appLocale}');
    buffer.writeln(isTr ? 'Cihaz dili: ${report.platformLocale}' : 'Platform locale: ${report.platformLocale}');
    buffer.writeln(
      isTr
          ? 'Dil ayarı: ${report.settingsLanguageCode ?? 'Sistem varsayılanı'}'
          : 'Language setting: ${report.settingsLanguageCode ?? 'System default'}',
    );
    buffer.writeln(
      isTr
          ? 'Konum adı: ${report.locationName ?? 'GPS / Ayarlanmadı'}'
          : 'Location name: ${report.locationName ?? 'GPS / Not set'}',
    );
    buffer.writeln(
      isTr
          ? 'Konum servisleri: ${_boolLabel(report.locationServicesEnabled, isTr: true)}'
          : 'Location services: ${_boolLabel(report.locationServicesEnabled, isTr: false)}',
    );
    buffer.writeln(
      isTr
          ? 'Konum izni: ${report.locationPermission?.name ?? 'Bilinmiyor'}'
          : 'Location permission: ${report.locationPermission?.name ?? 'Unknown'}',
    );
    buffer.writeln('');
    buffer.writeln(isTr ? 'Vakit ve Bildirimler' : 'Prayer & Notifications');
    buffer.writeln(
      isTr ? 'Hesap yöntemi: ${report.calculationMethod}' : 'Calculation method: ${report.calculationMethod}',
    );
    buffer.writeln(isTr ? 'Mezhep: ${report.madhab}' : 'Madhab: ${report.madhab}');
    buffer.writeln(
      isTr
          ? 'Bildirimler: ${_boolLabel(report.notificationsEnabled, isTr: true)}'
          : 'Notifications: ${_boolLabel(report.notificationsEnabled, isTr: false)}',
    );
    buffer.writeln('');
    buffer.writeln(isTr ? 'Kur\'an Veritabanı' : 'Quran Database');
    if (report.quranStatus == null) {
      buffer.writeln(
        isTr
            ? 'Durum: ${report.quranError ?? 'Kullanılamıyor'}'
            : 'Status: ${report.quranError ?? 'Unavailable'}',
      );
    } else {
      buffer.writeln(
        isTr
            ? 'Durum: ${report.quranStatus!.isComplete ? 'Tam' : 'Eksik'}'
            : 'Status: ${report.quranStatus!.isComplete ? 'OK' : 'Incomplete'}',
      );
      buffer.writeln(
        isTr
            ? 'Sureler: ${report.quranStatus!.surahCount} / 114'
            : 'Surahs: ${report.quranStatus!.surahCount} / 114',
      );
      buffer.writeln(
        isTr
            ? 'Ayetler: ${report.quranStatus!.ayahCount} / 6236'
            : 'Ayahs: ${report.quranStatus!.ayahCount} / 6236',
      );
      buffer.writeln(
        isTr
            ? 'Eksik Arapça: ${report.quranStatus!.missingArabicCount}'
            : 'Missing Arabic: ${report.quranStatus!.missingArabicCount}',
      );
      buffer.writeln(
        isTr
            ? 'Eksik İngilizce: ${report.quranStatus!.missingEnglishCount}'
            : 'Missing English: ${report.quranStatus!.missingEnglishCount}',
      );
      buffer.writeln(
        isTr
            ? 'Eksik Türkçe: ${report.quranStatus!.missingTurkishCount}'
            : 'Missing Turkish: ${report.quranStatus!.missingTurkishCount}',
      );
      if (report.quranStatus!.databasePath != null) {
        buffer.writeln(
          isTr
              ? 'Veritabanı yolu: ${report.quranStatus!.databasePath}'
              : 'DB path: ${report.quranStatus!.databasePath}',
        );
      }
    }
    buffer.writeln('');
    buffer.writeln(isTr ? 'Kütüphane Veritabanı' : 'Library Database');
    if (report.libraryStatus == null) {
      buffer.writeln(
        isTr
            ? 'Durum: ${report.libraryError ?? 'Kullanılamıyor'}'
            : 'Status: ${report.libraryError ?? 'Unavailable'}',
      );
    } else {
      buffer.writeln(
        isTr
            ? 'Veri paketi kurulu: ${report.libraryStatus!.dataPackInstalled ? 'Evet' : 'Hayır'}'
            : 'Data pack installed: ${report.libraryStatus!.dataPackInstalled ? 'Yes' : 'No'}',
      );
      buffer.writeln(
        isTr
            ? 'Koleksiyonlar: ${report.libraryStatus!.collectionCount}'
            : 'Collections: ${report.libraryStatus!.collectionCount}',
      );
      buffer.writeln(
        isTr
            ? 'Hadis sayısı: ${report.libraryStatus!.hadithCount}'
            : 'Hadith count: ${report.libraryStatus!.hadithCount}',
      );
      if (report.libraryStatus!.databaseUserVersion != null) {
        buffer.writeln(
          isTr
              ? 'Veritabanı sürümü: ${report.libraryStatus!.databaseUserVersion}'
              : 'DB version: ${report.libraryStatus!.databaseUserVersion}',
        );
      }
      if (report.libraryStatus!.dataPackSource != null) {
        buffer.writeln(
          isTr
              ? 'Veri paketi kaynağı: ${report.libraryStatus!.dataPackSource}'
              : 'Data pack source: ${report.libraryStatus!.dataPackSource}',
        );
      }
    }
    buffer.writeln('');
    buffer.writeln(isTr ? 'Canlı TV Yayınları' : 'Live TV Streams');
    for (final stream in liveStreams) {
      buffer.writeln('${stream.shortLabel}: ${stream.videoId}');
    }
    buffer.writeln('');
    buffer.writeln(isTr ? 'Ses' : 'Audio');
    buffer.writeln(
      isTr ? 'Seçilen ses: ${report.audioVoice}' : 'Selected voice: ${report.audioVoice}',
    );
    buffer.writeln('Male base: https://server8.mp3quran.net/afs/');
    buffer.writeln('Male fallback: https://download.quranicaudio.com/quran/mishari_rashid_al-afasy/');
    buffer.writeln('Female base: https://download.quranicaudio.com/quran/english_walk/');
    return buffer.toString();
  }

  Future<void> _copyReport(BuildContext context, DiagnosticsReport report, {required bool isTr}) async {
    await Clipboard.setData(ClipboardData(text: _buildReportText(report, isTr: isTr)));
    if (!context.mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          isTr ? 'Tanılama panoya kopyalandı.' : 'Diagnostics copied to clipboard.',
        ),
      ),
    );
  }
}

class _SectionCard extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const _SectionCard({
    required this.title,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 12),
            ...children,
          ],
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final String label;
  final String value;
  final Color? valueColor;

  const _InfoRow({
    required this.label,
    required this.value,
    this.valueColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 140,
            child: Text(
              label,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              value,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: valueColor ?? Theme.of(context).colorScheme.onSurface,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
