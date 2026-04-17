import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sirat_i_nur/core/network/app_router.dart';
import 'package:sirat_i_nur/core/network/supabase_config.dart';
import 'package:sirat_i_nur/core/providers/supabase_providers.dart';
import 'package:sirat_i_nur/core/services/prayer_notification_coordinator.dart';
import 'package:sirat_i_nur/core/services/widget_service.dart';
import 'package:sirat_i_nur/core/services/prayer_widget_sync_service.dart';

import 'package:sirat_i_nur/core/theme/app_theme.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:sirat_i_nur/core/utils/prayer_name_localization.dart';
import 'package:sirat_i_nur/core/utils/qibla_utils.dart';
import 'package:sirat_i_nur/features/settings/settings_provider.dart';
import 'package:sirat_i_nur/core/utils/locale_utils.dart';
import 'package:timezone/data/latest.dart' as tz;

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return Scaffold(
      backgroundColor: AppColors.darkBg,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: AppColors.darkSurface,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.emeraldLight.withValues(alpha: 0.4),
                    blurRadius: 40,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: const Icon(
                Icons.mosque,
                size: 60,
                color: AppColors.emeraldLight,
              ),
            ),
            const SizedBox(height: 32),
            Text(
              l10n?.appTitle ?? 'Sirat-i Nur',
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w900,
                color: Colors.white,
                letterSpacing: 2,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              l10n?.splashTagline ?? '',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white54,
                letterSpacing: 1,
              ),
            ),
            const SizedBox(height: 48),
            const SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                strokeWidth: 3,
                valueColor: AlwaysStoppedAnimation<Color>(
                  AppColors.emeraldLight,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  FlutterError.onError = (details) {
    FlutterError.presentError(details);
    Zone.current.handleUncaughtError(
      details.exception,
      details.stack ?? StackTrace.current,
    );
  };

  runZonedGuarded(
    () async {
      // Initialize Supabase
      try {
        await SupabaseConfig.initialize();
      } catch (_) {
        debugPrint('Supabase init failed (non-blocking)');
      }

      try {
        tz.initializeTimeZones();
      } catch (_) {
        debugPrint('Timezone init failed (non-blocking)');
      }

      final prefs = await SharedPreferences.getInstance();

      runApp(
        ProviderScope(
          overrides: [sharedPreferencesProvider.overrideWithValue(prefs)],
          child: SiratINurApp(prefs: prefs),
        ),
      );
    },
    (_, _) {
      debugPrint('Uncaught error');
    },
  );
}

String _readDailyAyatWidgetValue(Map<String, dynamic> dailyAyat, String key) {
  return dailyAyat[key]?.toString().trim() ?? '';
}

String _resolveDailyAyatWidgetTranslation(
  Map<String, dynamic> dailyAyat,
  Locale locale,
) {
  final preferredKeys = locale.languageCode == 'tr'
      ? const ['content_tr', 'content_en']
      : const ['content_en', 'content_tr'];

  for (final key in preferredKeys) {
    final value = _readDailyAyatWidgetValue(dailyAyat, key);
    if (value.isNotEmpty) return value;
  }

  return '';
}

class SiratINurApp extends ConsumerStatefulWidget {
  final SharedPreferences prefs;
  const SiratINurApp({super.key, required this.prefs});

  @override
  ConsumerState<SiratINurApp> createState() => _SiratINurAppState();
}

class _SiratINurAppState extends ConsumerState<SiratINurApp> {
  bool _showSplash = true;
  final PrayerNotificationCoordinator _prayerNotificationCoordinator =
      PrayerNotificationCoordinator();
  final PrayerWidgetSyncService _prayerWidgetSyncService =
      PrayerWidgetSyncService();
  ProviderSubscription<SettingsState>? _settingsSubscription;
  ProviderSubscription<AsyncValue<Map<String, dynamic>>>?
  _dailyAyatSubscription;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 2500), () {
      if (mounted) setState(() => _showSplash = false);
    });
    unawaited(_initializePrayerNotificationSync());
  }

  Future<void> _initializePrayerNotificationSync() async {
    try {
      await _prayerNotificationCoordinator.init();
      try {
        await WidgetService().init();
      } catch (_) {
        debugPrint('WidgetService init failed (non-blocking)');
      }
      if (!mounted) return;

      _settingsSubscription = ref.listenManual<SettingsState>(
        settingsProvider,
        (previous, next) {
          if (!PrayerNotificationCoordinator.shouldResync(previous, next)) {
            return;
          }
          unawaited(_prayerNotificationCoordinator.sync(next));
          unawaited(_updateHomeWidgets(next));
          _syncCurrentAyahWidget();
        },
        fireImmediately: true,
      );
      _dailyAyatSubscription = ref
          .listenManual<AsyncValue<Map<String, dynamic>>>(dailyAyatProvider, (
            _,
            next,
          ) {
            next.whenData((dailyAyat) {
              unawaited(_updateAyahWidget(dailyAyat));
            });
          }, fireImmediately: true);
    } catch (_) {
      debugPrint('Prayer notification bootstrap failed');
    }
  }

  Future<void> _updateHomeWidgets(SettingsState settings) async {
    final locale = _resolveWidgetLocale(settings);
    await _updatePrayerWidgets(settings, locale);
    await _updateQiblaWidget(settings, locale);
  }

  Future<void> _updatePrayerWidgets(
    SettingsState settings,
    Locale locale,
  ) async {
    try {
      final entity = _prayerWidgetSyncService.buildPrayerTimesEntity(settings);
      if (entity == null) return;
      await WidgetService().updatePrayerWidget(entity, locale: locale);
      await WidgetService().updateAllPrayersWidget(entity, locale: locale);
    } catch (_) {
      debugPrint('Prayer widget update failed (non-blocking)');
    }
  }

  Future<void> _updateQiblaWidget(SettingsState settings, Locale locale) async {
    try {
      final latitude = settings.latitude;
      final longitude = settings.longitude;
      if (latitude == null || longitude == null) return;

      final direction = QiblaUtils.calculateQiblaDirection(latitude, longitude);
      final languageCode = localeKey(locale);
      await WidgetService().updateQiblaWidget(
        direction: direction,
        directionText: PrayerLocalizer.qiblaDirectionLabel(languageCode),
        locale: locale,
      );
    } catch (_) {
      debugPrint('Qibla widget update failed (non-blocking)');
    }
  }

  void _syncCurrentAyahWidget() {
    ref.read(dailyAyatProvider).whenData((dailyAyat) {
      unawaited(_updateAyahWidget(dailyAyat));
    });
  }

  Future<void> _updateAyahWidget(Map<String, dynamic> dailyAyat) async {
    try {
      final settings = ref.read(settingsProvider);
      final locale = _resolveWidgetLocale(settings);
      final arabic = _readDailyAyatWidgetValue(dailyAyat, 'content_ar');
      final translation = _resolveDailyAyatWidgetTranslation(dailyAyat, locale);
      final reference = _readDailyAyatWidgetValue(dailyAyat, 'reference');

      if (arabic.isEmpty || translation.isEmpty || reference.isEmpty) {
        return;
      }

      await WidgetService().updateAyahWidget(
        arabic: arabic,
        translation: translation,
        reference: reference,
        locale: locale,
      );
    } catch (_) {
      debugPrint('Ayah widget update failed (non-blocking)');
    }
  }

  Locale _resolveWidgetLocale(SettingsState settings) {
    final configuredLocale = parseLocaleCode(settings.languageCode);
    final requested =
        configuredLocale ?? WidgetsBinding.instance.platformDispatcher.locale;
    return resolveSupportedLocale(requested, AppLocalizations.supportedLocales);
  }

  @override
  void dispose() {
    _settingsSubscription?.close();
    _dailyAyatSubscription?.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final settings = ref.watch(settingsProvider);
    final router = ref.watch(appRouterProvider);
    final configuredLocale = parseLocaleCode(settings.languageCode);
    final supportedLocales = AppLocalizations.supportedLocales;

    if (_showSplash) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.dark,
        locale: configuredLocale,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: supportedLocales,
        localeResolutionCallback: (locale, _) {
          final requested = configuredLocale ?? locale;
          return resolveSupportedLocale(requested, supportedLocales);
        },
        home: const SplashScreen(),
      );
    }

    return MaterialApp.router(
      onGenerateTitle: (context) =>
          AppLocalizations.of(context)?.appTitle ?? 'Sirat-i Nur',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: settings.isDarkMode ? ThemeMode.dark : ThemeMode.light,
      locale: configuredLocale,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: supportedLocales,
      localeResolutionCallback: (locale, _) {
        final requested = configuredLocale ?? locale;
        return resolveSupportedLocale(requested, supportedLocales);
      },
      routerConfig: router,
    );
  }
}
