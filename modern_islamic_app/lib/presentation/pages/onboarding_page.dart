import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sirat_i_nur/presentation/blocs/settings_provider.dart';
import 'package:sirat_i_nur/core/services/location_service.dart';
import 'package:sirat_i_nur/core/services/notification_service.dart';

class OnboardingPage extends ConsumerStatefulWidget {
  const OnboardingPage({super.key});

  @override
  ConsumerState<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends ConsumerState<OnboardingPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  bool _isLocating = false;

  bool _isTurkish(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(settingsProvider);
    if (settings.languageCode != null) {
      return settings.languageCode == 'tr';
    }
    return Localizations.localeOf(context).languageCode == 'tr';
  }

  void _nextPage() {
    if (_currentPage < 2) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    } else {
      _finishOnboarding();
    }
  }

  Future<void> _finishOnboarding() async {
    final prefs = ref.read(sharedPreferencesProvider);
    await prefs.setBool('isFirstLaunch', false);
    if (mounted) {
      context.go('/home');
    }
  }

  Future<void> _requestLocationAndDetect() async {
    if (!mounted) return;
    setState(() => _isLocating = true);
    final isTr = _isTurkish(context, ref);
    try {
      final position = await LocationService.getCurrentPosition();
      await ref.read(settingsProvider.notifier).autoDetectCalculationMethod(
        position.latitude, 
        position.longitude
      );
    } catch (e) {
      debugPrint('Location detection failed during onboarding: $e');
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(isTr
                ? 'Konum alınamadı. Lütfen konum servislerini kontrol edin.'
                : 'Location unavailable. Please check location services.'),
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isLocating = false);
        _nextPage();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (idx) => setState(() => _currentPage = idx),
        children: [
          _buildWelcomePage(),
          _buildLocationPage(),
          _buildCompletePage(),
        ],
      ),
    );
  }

  Widget _buildWelcomePage() {
    final isTr = _isTurkish(context, ref);
    return _buildPageTemplate(
      title: 'Sirat-ı Nur',
      subtitle: isTr
          ? 'Premium, reklamsız İslami deneyim.'
          : 'Premium, ad-free Islamic experience.',
      icon: Icons.mosque,
      buttonText: isTr ? 'BAŞLAYALIM' : 'GET STARTED',
      onPressed: _nextPage,
    );
  }

  Widget _buildLocationPage() {
    final isTr = _isTurkish(context, ref);
    return _buildPageTemplate(
      title: isTr ? 'Namaz Vakitleri' : 'Prayer Times',
      subtitle: isTr
          ? 'Doğru vakitler için konum belirleyin.'
          : 'Set your location for accurate prayer times and calculation methods.',
      icon: Icons.location_on,
      buttonText: _isLocating
          ? (isTr ? 'Konum alınıyor...' : 'Locating...')
          : (isTr ? 'Konumu Etkinleştir' : 'Enable Location'),
      onPressed: _isLocating ? null : _requestLocationAndDetect,
      secondaryButtonText: isTr ? 'Atla' : 'Skip',
      onSecondaryPressed: _nextPage,
    );
  }

  Widget _buildCompletePage() {
    final isTr = _isTurkish(context, ref);
    return _buildPageTemplate(
      title: isTr ? 'Hazır' : 'Ready',
      subtitle: isTr ? 'Allah yolculuğunu bereketlendirsin.' : 'May Allah bless your journey.',
      icon: Icons.check_circle_outline,
      buttonText: isTr ? 'Uygulamaya Gir' : 'Enter App',
      onPressed: () async {
        await NotificationService().requestPermissions();
        await _finishOnboarding();
      },
    );
  }

  Widget _buildPageTemplate({
    required String title,
    required String subtitle,
    required IconData icon,
    required String buttonText,
    required VoidCallback? onPressed,
    String? secondaryButtonText,
    VoidCallback? onSecondaryPressed,
  }) {
    final theme = Theme.of(context);
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  theme.scaffoldBackgroundColor,
                  theme.colorScheme.primary.withValues(alpha: 0.1),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 64.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: theme.colorScheme.primary.withValues(alpha: 0.2),
                      blurRadius: 40,
                      spreadRadius: 10,
                    ),
                  ],
                ),
                child: Icon(
                  icon, 
                  size: 120, 
                  color: theme.colorScheme.primary
                ),
              ),
              const SizedBox(height: 48),
              Text(
                title,
                textAlign: TextAlign.center,
                style: theme.textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: theme.colorScheme.onSurface,
                  letterSpacing: 1.1,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                subtitle,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyLarge?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                  height: 1.5,
                ),
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: onPressed,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: theme.colorScheme.primary,
                    foregroundColor: theme.colorScheme.onPrimary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 8,
                    shadowColor: theme.colorScheme.primary.withValues(alpha: 0.3),
                  ),
                  child: Text(
                    buttonText, 
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                  ),
                ),
              ),
              if (secondaryButtonText != null) ...[
                const SizedBox(height: 16),
                TextButton(
                  onPressed: onSecondaryPressed,
                  child: Text(
                    secondaryButtonText,
                    style: TextStyle(
                      color: theme.colorScheme.primary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ] else const SizedBox(height: 64),
            ],
          ),
        ),
      ],
    );
  }
}
