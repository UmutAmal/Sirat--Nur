import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';
import 'package:sirat_i_nur/core/services/iap_service.dart';
import 'package:sirat_i_nur/presentation/blocs/settings_provider.dart';
import 'package:sirat_i_nur/presentation/blocs/quran_provider.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(settingsProvider);
    final settingsNotifier = ref.read(settingsProvider.notifier);
    final isPro = ref.watch(proStatusProvider);
    final l10n = AppLocalizations.of(context)!;

    final List<String> methods = [
      'Turkey',
      'Muslim World League',
      'Egyptian',
      'Karachi',
      'Umm Al-Qura',
      'Dubai',
      'Moonsighting Committee',
      'North America (ISNA)',
      'Kuwait',
      'Qatar',
      'Singapore',
      'Tehran',
      'Morocco',
      'JAKIM (Malaysia)',
      'KEMENAG (Indonesia)',
      'Custom',
    ];

    final List<String> madhabs = ['Hanafi', 'Shafii', 'Maliki', 'Hanbali'];

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.settings),
      ),
      body: ListView(
        children: [
          if (!isPro)
            Container(
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Theme.of(context).colorScheme.primary,
                    Theme.of(context).colorScheme.secondary,
                  ],
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: ListTile(
                leading: const Icon(Icons.workspace_premium, color: Colors.white, size: 32),
                title: Text(l10n.getLifetimePro, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                subtitle: Text(l10n.unlockTajweed, style: const TextStyle(color: Colors.white70)),
                trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16),
                onTap: () => context.push('/paywall'),
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              l10n.premiumIntegrity,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.verified_user, color: Colors.green),
            title: Text(l10n.recheckPremium),
            subtitle: Text(l10n.syncStore),
            onTap: () async {
              final messenger = ScaffoldMessenger.of(context);
              messenger.showSnackBar(
                SnackBar(
                  content: Text(l10n.checkingPremium),
                ),
              );
              try {
                await ref.read(proStatusProvider.notifier).refreshPremiumStatus();
                final currentPro = ref.read(proStatusProvider);
                if (!context.mounted) return;
                messenger.hideCurrentSnackBar();
                messenger.showSnackBar(
                  SnackBar(
                    content: Text(
                      currentPro
                          ? l10n.premiumVerified
                          : l10n.premiumNotFound,
                    ),
                  ),
                );
              } catch (e) {
                if (!context.mounted) return;
                messenger.hideCurrentSnackBar();
                messenger.showSnackBar(
                  SnackBar(
                    content: Text(l10n.premiumRefreshError(e.toString())),
                  ),
                );
              }
            },
          ),
            
           Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              l10n.dataStorage,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 8),
          ListTile(
            leading: const Icon(Icons.cloud_download),
            title: Text(l10n.offlineDownloadManager),
            subtitle: Text(l10n.manageDatasets),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              context.push('/downloads');
            },
          ),
          ListTile(
            leading: const Icon(Icons.delete_outline),
            title: Text(l10n.clearCache),
            subtitle: Text(l10n.freeStorage),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(l10n.cacheClearedSuccess)),
              );
            },
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              l10n.quranIntegrity,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.fact_check, color: Colors.green),
            title: Text(l10n.checkQuranDb),
            subtitle: Text(l10n.verifyQuranContent),
            onTap: () async {
              final messenger = ScaffoldMessenger.of(context);
              messenger.showSnackBar(
                SnackBar(
                  content: Text(l10n.checkingQuranDb),
                ),
              );
              try {
                ref.invalidate(quranStatusProvider);
                final status = await ref.read(quranStatusProvider.future);
                if (!context.mounted) return;
                messenger.hideCurrentSnackBar();
                final statusLabel = status.isComplete
                    ? l10n.okLabel
                    : (status.hasSeedData
                        ? l10n.incomplete
                        : l10n.notSeeded);
                showModalBottomSheet(
                  context: context,
                  builder: (ctx) {
                    return Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            l10n.quranDbStatus,
                            style: Theme.of(ctx).textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(l10n.statusLabel(statusLabel)),
                          Text(l10n.surahsCount(status.surahCount.toString())),
                          Text(l10n.ayahsCount(status.ayahCount.toString())),
                          Text(l10n.missingArabic(status.missingArabicCount.toString())),
                          Text(l10n.missingEnglish(status.missingEnglishCount.toString())),
                          Text(l10n.missingTurkish(status.missingTurkishCount.toString())),
                          if (status.databaseUserVersion != null)
                            Text(l10n.dbVersion(status.databaseUserVersion.toString())),
                          if (status.databasePath != null)
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                l10n.dbPath(status.databasePath!),
                                style: Theme.of(ctx).textTheme.bodySmall?.copyWith(
                                  color: Theme.of(ctx).colorScheme.onSurface.withValues(alpha: 0.6),
                                ),
                              ),
                            ),
                          const SizedBox(height: 16),
                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: () => Navigator.pop(ctx),
                              child: Text(l10n.close),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              } catch (e) {
                if (!context.mounted) return;
                messenger.hideCurrentSnackBar();
                messenger.showSnackBar(
                  SnackBar(
                    content: Text(l10n.quranCheckFailed(e.toString())),
                  ),
                );
              }
            },
          ),
          ListTile(
            title: Text(l10n.location),
            subtitle: Text(
              settings.locationName ?? l10n.currentLocation,
            ),
            leading: const Icon(Icons.location_on_outlined),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () => context.push('/settings/location'),
          ),
          ListTile(
            title: Text(l10n.language),
            subtitle: Text(
              settings.languageCode?.toUpperCase() ?? l10n.systemDefault,
            ),
            leading: const Icon(Icons.language_outlined),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                useSafeArea: true,
                builder: (BuildContext ctx) {
                  final allLanguages = {
                    'aa': 'Afar', 'ab': 'Abkhazian', 'ae': 'Avestan', 'af': 'Afrikaans', 'ak': 'Akan', 'am': 'Amharic', 'an': 'Aragonese', 'ar': 'Arabic (العربية)', 'as': 'Assamese', 'av': 'Avaric', 'ay': 'Aymara', 'az': 'Azerbaijani (Azərbaycanca)', 'ba': 'Bashkir', 'be': 'Belarusian', 'bg': 'Bulgarian', 'bh': 'Bihari', 'bi': 'Bislama', 'bm': 'Bambara', 'bn': 'Bengali (বাংলা)', 'bo': 'Tibetan', 'br': 'Breton', 'bs': 'Bosnian', 'ca': 'Catalan', 'ce': 'Chechen', 'ch': 'Chamorro', 'co': 'Corsican', 'cr': 'Cree', 'cs': 'Czech', 'cu': 'Church Slavic', 'cv': 'Chuvash', 'cy': 'Welsh', 'da': 'Danish', 'de': 'German (Deutsch)', 'dv': 'Divehi', 'dz': 'Dzongkha', 'ee': 'Ewe', 'el': 'Greek', 'en': 'English', 'eo': 'Esperanto', 'es': 'Spanish (Español)', 'et': 'Estonian', 'eu': 'Basque', 'fa': 'Persian (فارسی)', 'ff': 'Fulah', 'fi': 'Finnish', 'fj': 'Fijian', 'fo': 'Faroese', 'fr': 'French (Français)', 'fy': 'Western Frisian', 'ga': 'Irish', 'gd': 'Gaelic', 'gl': 'Galician', 'gn': 'Guarani', 'gu': 'Gujarati', 'gv': 'Manx', 'ha': 'Hausa', 'he': 'Hebrew', 'hi': 'Hindi (हिन्दी)', 'ho': 'Hiri Motu', 'hr': 'Croatian', 'ht': 'Haitian', 'hu': 'Hungarian', 'hy': 'Armenian', 'hz': 'Herero', 'ia': 'Interlingua', 'id': 'Indonesian (Bahasa Indonesia)', 'ie': 'Interlingue', 'ig': 'Igbo', 'ii': 'Sichuan Yi', 'ik': 'Inupiaq', 'io': 'Ido', 'is': 'Icelandic', 'it': 'Italian (Italiano)', 'iu': 'Inuktitut', 'ja': 'Japanese (日本語)', 'jv': 'Javanese', 'ka': 'Georgian', 'kg': 'Kongo', 'ki': 'Kikuyu', 'kj': 'Kuanyama', 'kk': 'Kazakh', 'kl': 'Kalaallisut', 'km': 'Central Khmer', 'kn': 'Kannada', 'ko': 'Korean (한국어)', 'kr': 'Kanuri', 'ks': 'Kashmiri', 'ku': 'Kurdish', 'kv': 'Komi', 'kw': 'Cornish', 'ky': 'Kirghiz', 'la': 'Latin', 'lb': 'Luxembourgish', 'lg': 'Ganda', 'li': 'Limburgan', 'ln': 'Lingala', 'lo': 'Lao', 'lt': 'Lithuanian', 'lu': 'Luba-Katanga', 'lv': 'Latvian', 'mg': 'Malagasy', 'mh': 'Marshallese', 'mi': 'Maori', 'mk': 'Macedonian', 'ml': 'Malayalam', 'mn': 'Mongolian', 'mr': 'Marathi', 'ms': 'Malay (Bahasa Melayu)', 'mt': 'Maltese', 'my': 'Burmese', 'na': 'Nauru', 'nb': 'Norwegian Bokmål', 'nd': 'North Ndebele', 'ne': 'Nepali', 'ng': 'Ndonga', 'nl': 'Dutch (Nederlands)', 'nn': 'Norwegian Nynorsk', 'no': 'Norwegian', 'nr': 'South Ndebele', 'nv': 'Navajo', 'ny': 'Chichewa', 'oc': 'Occitan', 'oj': 'Ojibwa', 'om': 'Oromo', 'or': 'Oriya', 'os': 'Ossetian', 'pa': 'Punjabi', 'pi': 'Pali', 'pl': 'Polish', 'ps': 'Pushto', 'pt': 'Portuguese (Português)', 'qu': 'Quechua', 'rm': 'Romansh', 'rn': 'Rundi', 'ro': 'Romanian', 'ru': 'Russian (Русский)', 'rw': 'Kinyarwanda', 'sa': 'Sanskrit', 'sc': 'Sardinian', 'sd': 'Sindhi', 'se': 'Northern Sami', 'sg': 'Sango', 'si': 'Sinhala', 'sk': 'Slovak', 'sl': 'Slovenian', 'sm': 'Samoan', 'sn': 'Shona', 'so': 'Somali', 'sq': 'Albanian', 'sr': 'Serbian', 'ss': 'Swati', 'st': 'Southern Sotho', 'su': 'Sundanese', 'sv': 'Swedish', 'sw': 'Swahili (Kiswahili)', 'ta': 'Tamil', 'te': 'Telugu', 'tg': 'Tajik', 'th': 'Thai', 'ti': 'Tigrinya', 'tk': 'Turkmen', 'tl': 'Tagalog', 'tn': 'Tswana', 'to': 'Tonga', 'tr': 'Turkish (Türkçe)', 'ts': 'Tsonga', 'tt': 'Tatar', 'tw': 'Twi', 'ty': 'Tahitian', 'ug': 'Uighur', 'uk': 'Ukrainian', 'ur': 'Urdu (اردو)', 'uz': 'Uzbek', 've': 'Venda', 'vi': 'Vietnamese', 'vo': 'Volapük', 'wa': 'Walloon', 'wo': 'Wolof', 'xh': 'Xhosa', 'yi': 'Yiddish', 'yo': 'Yoruba', 'za': 'Zhuang', 'zh': 'Chinese (中文)', 'zu': 'Zulu'
                  };

                  List<MapEntry<String, String>> filtered = allLanguages.entries.toList();

                  return StatefulBuilder(
                    builder: (context, setModalState) {

                      return Column(
                        children: [
                          AppBar(
                            title: Text(l10n.selectLanguage),
                            automaticallyImplyLeading: false,
                            actions: [IconButton(icon: const Icon(Icons.close), onPressed: () => Navigator.pop(ctx))],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: l10n.searchLanguage,
                                prefixIcon: const Icon(Icons.search),
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                              ),
                              onChanged: (value) {
                                setModalState(() {
                                  filtered = allLanguages.entries
                                      .where((e) => e.value.toLowerCase().contains(value.toLowerCase()) || 
                                                    e.key.toLowerCase().contains(value.toLowerCase()))
                                      .toList();
                                });
                              },
                            ),
                          ),
                          Expanded(
                            child: ListView(
                              children: [
                                ListTile(
                                  title: Text(l10n.systemDefault),
                                  trailing: settings.languageCode == null ? const Icon(Icons.check) : null,
                                  onTap: () {
                                    settingsNotifier.updateLanguage(null);
                                    Navigator.pop(ctx);
                                  },
                                ),
                                ...filtered.map((e) => ListTile(
                                  title: Text(e.value),
                                  subtitle: Text(e.key.toUpperCase()),
                                  trailing: settings.languageCode == e.key ? const Icon(Icons.check) : null,
                                  onTap: () {
                                    settingsNotifier.updateLanguage(e.key);
                                    Navigator.pop(ctx);
                                  },
                                )),
                              ],
                            ),
                          ),
                        ],
                      );
                    }
                  );
                },
              );
            },
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              l10n.prayerCalculation,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            title: Text(l10n.audioVoice),
            subtitle: Text(settings.audioVoice),
            leading: const Icon(Icons.record_voice_over_outlined),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext ctx) {
                  final voices = [
                    'Mishary Alafasy',
                    'Mahmoud Khalil Al-Husary',
                    'Abdul Basit (Murattal)',
                    'Abdul Basit (Mujawwad)',
                    'Saud Al-Shuraim',
                    'Abu Bakr al-Shatri',
                    'Saad Al-Ghamdi',
                    'Hani Ar-Rifai',
                    'Maher Al-Muaiqly',
                    ' Khaled Al-Qahtani',
                  ];
                  return ListView.builder(
                    itemCount: voices.length,
                    itemBuilder: (context, index) {
                      final voice = voices[index];
                      return ListTile(
                        title: Text(voice),
                        trailing: settings.audioVoice == voice
                            ? Icon(Icons.check, color: Theme.of(context).colorScheme.primary)
                            : null,
                        onTap: () {
                          settingsNotifier.updateAudioVoice(voice);
                          Navigator.pop(context);
                        },
                      );
                    },
                  );
                },
              );
            },
          ),
          ListTile(
            title: Text(l10n.method),
            subtitle: Text(settings.calculationMethod),
            leading: const Icon(Icons.calculate_outlined),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext ctx) {
                  return ListView.builder(
                    itemCount: methods.length,
                    itemBuilder: (context, index) {
                      final method = methods[index];
                      return ListTile(
                        title: Text(method),
                        trailing: settings.calculationMethod == method
                            ? Icon(Icons.check, color: Theme.of(context).colorScheme.primary)
                            : null,
                        onTap: () {
                          settingsNotifier.updateCalculationMethod(method);
                          Navigator.pop(context);
                        },
                      );
                    },
                  );
                },
              );
            },
          ),
          if (settings.calculationMethod == 'Custom') ...[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                   Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: l10n.fajrAngle,
                        border: const OutlineInputBorder(),
                        suffixText: '°',
                      ),
                      keyboardType: const TextInputType.numberWithOptions(decimal: true),
                      onSubmitted: (val) {
                        final f = double.tryParse(val) ?? settings.fajrAngle;
                        settingsNotifier.updateCustomAngles(f, settings.ishaAngle);
                      },
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: l10n.ishaAngle,
                        border: const OutlineInputBorder(),
                        suffixText: '°',
                      ),
                      keyboardType: const TextInputType.numberWithOptions(decimal: true),
                      onSubmitted: (val) {
                        final i = double.tryParse(val) ?? settings.ishaAngle;
                        settingsNotifier.updateCustomAngles(settings.fajrAngle, i);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
          const Divider(),
          ListTile(
            title: Text(l10n.madhab),
            subtitle: Text(settings.madhab),
            leading: const Icon(Icons.gavel_outlined),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext ctx) {
                  return ListView.builder(
                    itemCount: madhabs.length,
                    itemBuilder: (context, index) {
                      final madhab = madhabs[index];
                      return ListTile(
                        title: Text(madhab),
                        trailing: settings.madhab == madhab
                            ? Icon(Icons.check, color: Theme.of(context).colorScheme.primary)
                            : null,
                        onTap: () {
                          settingsNotifier.updateMadhab(madhab);
                          Navigator.pop(context);
                        },
                      );
                    },
                  );
                },
              );
            },
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              l10n.qiblaCalibration,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SwitchListTile(
            title: Text(l10n.compassSmoothing),
            subtitle: Text(l10n.reduceSensorJitter),
            value: settings.qiblaSmoothingEnabled,
            onChanged: (value) => settingsNotifier.updateQiblaSmoothingEnabled(value),
          ),
          ListTile(
            leading: const Icon(Icons.tune),
            title: Text(l10n.calibrationOffset),
            subtitle: Text(l10n.currentOffset(settings.qiblaOffset.toStringAsFixed(1))),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext ctx) {
                  double tempOffset = settings.qiblaOffset;
                  return StatefulBuilder(
                    builder: (context, setModalState) {
                      return Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              l10n.calibrationOffset,
                              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 12),
                            Text(
                              l10n.manualCorrectionDesc,
                              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.7),
                              ),
                            ),
                            const SizedBox(height: 16),
                            Slider(
                              value: tempOffset,
                              min: -15,
                              max: 15,
                              divisions: 60,
                              label: '${tempOffset.toStringAsFixed(1)}°',
                              onChanged: (value) {
                                setModalState(() => tempOffset = value);
                              },
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    setModalState(() => tempOffset = 0.0);
                                  },
                                  child: Text(l10n.reset),
                                ),
                                const SizedBox(width: 8),
                                ElevatedButton(
                                  onPressed: () {
                                    settingsNotifier.updateQiblaOffset(tempOffset);
                                    Navigator.pop(context);
                                  },
                                  child: Text(l10n.apply),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.refresh, color: Colors.orange),
            title: Text(l10n.resetOnboarding),
            subtitle: Text(l10n.rerunSetup),
            onTap: () async {
              final prefs = ref.read(sharedPreferencesProvider);
              await prefs.setBool('isFirstLaunch', true);
              if (context.mounted) {
                context.go('/onboarding');
              }
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.monitor_heart_outlined),
            title: Text(l10n.diagnostics),
            subtitle: Text(l10n.healthCheckDesc),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () => context.push('/settings/diagnostics'),
          ),
        ],
      ),
    );
  }
}
