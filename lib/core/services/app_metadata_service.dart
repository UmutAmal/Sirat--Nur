String resolveAppVersion({
  String buildName = const String.fromEnvironment(
    'FLUTTER_BUILD_NAME',
    defaultValue: '2.0.0',
  ),
  String buildNumber = const String.fromEnvironment(
    'FLUTTER_BUILD_NUMBER',
    defaultValue: '1',
  ),
}) {
  final normalizedBuildName = buildName.trim();
  final normalizedBuildNumber = buildNumber.trim();

  if (normalizedBuildName.isEmpty) {
    return normalizedBuildNumber.isEmpty ? 'unknown' : normalizedBuildNumber;
  }

  if (normalizedBuildNumber.isEmpty) {
    return normalizedBuildName;
  }

  return '$normalizedBuildName+$normalizedBuildNumber';
}

String resolveAppLegalese(String appTitle) => '© $appTitle';

const String appWebsiteUrl = 'https://siratinur.com';
const String privacyPolicyUrl = 'https://siratinur.com/privacy';
const String playStoreUrl =
    'https://play.google.com/store/apps/details?id=com.umutamal.sirat_i_nur';
