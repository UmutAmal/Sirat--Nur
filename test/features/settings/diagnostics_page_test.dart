import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/features/settings/diagnostics_page.dart';
import 'package:sirat_i_nur/features/settings/settings_provider.dart';

void main() {
  test('resolveDiagnosticsVersion includes build number when available', () {
    expect(
      resolveDiagnosticsVersion(buildName: '2.0.0', buildNumber: '1'),
      '2.0.0+1',
    );
  });

  test('resolveDiagnosticsVersion omits empty build number', () {
    expect(
      resolveDiagnosticsVersion(buildName: '2.0.0', buildNumber: ''),
      '2.0.0',
    );
  });

  test('DiagnosticsRowsDependencies changes when locale changes', () {
    final settings = SettingsState(
      isDarkMode: true,
      languageCode: 'en',
      locationName: 'Istanbul',
    );

    final english = DiagnosticsRowsDependencies.fromState(
      settings,
      const Locale('en'),
    );
    final turkish = DiagnosticsRowsDependencies.fromState(
      settings,
      const Locale('tr'),
    );

    expect(english, isNot(turkish));
  });

  test('DiagnosticsRowsDependencies changes when displayed settings change', () {
    final base = DiagnosticsRowsDependencies.fromState(
      SettingsState(
        isDarkMode: true,
        languageCode: 'en',
        locationName: 'Istanbul',
      ),
      const Locale('en'),
    );

    expect(
      base,
      isNot(
        DiagnosticsRowsDependencies.fromState(
          SettingsState(
            isDarkMode: false,
            languageCode: 'en',
            locationName: 'Istanbul',
          ),
          const Locale('en'),
        ),
      ),
    );
    expect(
      base,
      isNot(
        DiagnosticsRowsDependencies.fromState(
          SettingsState(
            isDarkMode: true,
            languageCode: 'tr',
            locationName: 'Istanbul',
          ),
          const Locale('en'),
        ),
      ),
    );
    expect(
      base,
      isNot(
        DiagnosticsRowsDependencies.fromState(
          SettingsState(
            isDarkMode: true,
            languageCode: 'en',
            locationName: 'Ankara',
          ),
          const Locale('en'),
        ),
      ),
    );
  });
}
