import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sirat_i_nur/core/network/app_router.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('app router onboarding guards', () {
    test('routes first-launch users to onboarding', () async {
      SharedPreferences.setMockInitialValues({});
      final prefs = await SharedPreferences.getInstance();

      expect(resolveInitialLocation(prefs), '/onboarding');
      expect(resolveOnboardingRedirect(prefs, '/home'), '/onboarding');
      expect(resolveOnboardingRedirect(prefs, '/onboarding'), isNull);
    });

    test(
      'uses updated onboarding preference without recreating the router',
      () async {
        SharedPreferences.setMockInitialValues({});
        final prefs = await SharedPreferences.getInstance();

        expect(resolveOnboardingRedirect(prefs, '/home'), '/onboarding');

        await prefs.setBool('isFirstLaunch', false);

        expect(resolveInitialLocation(prefs), '/home');
        expect(resolveOnboardingRedirect(prefs, '/home'), isNull);
        expect(resolveOnboardingRedirect(prefs, '/onboarding'), '/home');
      },
    );

    test('blocks hadith routes when verified dataset is unavailable', () async {
      SharedPreferences.setMockInitialValues({'isFirstLaunch': false});
      final prefs = await SharedPreferences.getInstance();

      expect(resolveAppRedirect(prefs, '/library/search', '/library/search'), '/library');
      expect(
        resolveAppRedirect(
          prefs,
          '/library/hadith/:id',
          '/library/hadith/bukhari',
        ),
        '/library',
      );
      expect(resolveAppRedirect(prefs, '/library', '/library'), isNull);
    });

    test('keeps onboarding redirect ahead of hadith route blocking', () async {
      SharedPreferences.setMockInitialValues({});
      final prefs = await SharedPreferences.getInstance();

      expect(
        resolveAppRedirect(prefs, '/library/search', '/library/search'),
        '/onboarding',
      );
    });
  });
}
