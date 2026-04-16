import 'package:flutter/material.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';
import 'package:url_launcher/url_launcher.dart';

bool isExternalHttpUri(Uri uri) {
  // Legacy helper name is kept for call-site stability; runtime launch targets
  // must still be HTTPS so app links do not downgrade user traffic.
  return uri.host.isNotEmpty && uri.isScheme('https');
}

Uri? resolveExternalHttpUri(String rawUrl) {
  final uri = Uri.tryParse(rawUrl.trim());
  if (uri == null || !isExternalHttpUri(uri)) {
    return null;
  }

  return uri;
}

Uri buildGoogleMapsSearchUri({
  required double latitude,
  required double longitude,
}) {
  return Uri.https('www.google.com', '/maps/search/', {
    'api': '1',
    'query': '$latitude,$longitude',
  });
}

Future<bool> launchExternalUri(
  BuildContext context,
  Uri? uri, {
  LaunchMode mode = LaunchMode.externalApplication,
}) async {
  if (uri == null || !isExternalHttpUri(uri)) {
    _showExternalLaunchFailure(context);
    return false;
  }

  final launched = await launchUrl(uri, mode: mode);
  if (!context.mounted) {
    return launched;
  }

  if (!launched) {
    _showExternalLaunchFailure(context);
  }

  return launched;
}

Future<bool> launchExternalHttpUrl(
  BuildContext context,
  String rawUrl, {
  LaunchMode mode = LaunchMode.externalApplication,
}) {
  return launchExternalUri(context, resolveExternalHttpUri(rawUrl), mode: mode);
}

void _showExternalLaunchFailure(BuildContext context) {
  if (!context.mounted) return;

  final l10n = AppLocalizations.of(context)!;
  ScaffoldMessenger.of(
    context,
  ).showSnackBar(SnackBar(content: Text(l10n.appUnknownError)));
}
