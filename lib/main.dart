import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sirat_i_nur/core/network/app_router.dart';
import 'package:sirat_i_nur/core/network/supabase_config.dart';
import 'package:sirat_i_nur/core/services/prayer_notification_coordinator.dart';
import 'package:sirat_i_nur/core/services/widget_service.dart';
import 'package:sirat_i_nur/core/services/prayer_calendar_service.dart';

import 'package:sirat_i_nur/core/theme/app_theme.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:sirat_i_nur/features/settings/settings_provider.dart';
import 'package:sirat_i_nur/core/utils/locale_utils.dart';
import 'package:timezone/data/latest.dart' as tz;

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
            const Text(
              'Sirat-i Nur',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w900,
                color: Colors.white,
                letterSpacing: 2,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Islamic Way of Light',
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
      } catch (e) {
        debugPrint('Supabase init failed (non-blocking): $e');
      }

      try {
        tz.initializeTimeZones();
      } catch (e) {
        debugPrint('Timezone init failed (non-blocking): $e');
      }

      final prefs = await SharedPreferences.getInstance();

      runApp(
        ProviderScope(
          overrides: [sharedPreferencesProvider.overrideWithValue(prefs)],
          child: SiratINurApp(prefs: prefs),
        ),
      );
    },
    (error, stack) {
      debugPrint('Uncaught error: $error');
      debugPrintStack(stackTrace: stack);
    },
  );
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
  ProviderSubscription<SettingsState>? _settingsSubscription;

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
      } catch (e) {
        debugPrint('WidgetService init failed (non-blocking): $e');
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
        },
        fireImmediately: true,
      );
    } catch (error, stackTrace) {
      debugPrint('Prayer notification bootstrap failed: $error');
      debugPrintStack(stackTrace: stackTrace);
    }
  }

  Future<void> _updateHomeWidgets(SettingsState settings) async {
    try {
      if (settings.latitude == null || settings.longitude == null) return;
      final entity = PrayerCalendarService.calculatePrayerTimes(
        latitude: settings.latitude!,
        longitude: settings.longitude!,
        date: DateTime.now(),
        method: settings.calculationMethod,
        madhab: settings.madhab,
        timezone: settings.timezone,
      );
      await WidgetService().updatePrayerWidget(entity);
      await WidgetService().updateAllPrayersWidget(entity);
    } catch (e) {
      debugPrint('Widget update failed (non-blocking): $e');
    }
  }

  @override
  void dispose() {
    _settingsSubscription?.close();
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
