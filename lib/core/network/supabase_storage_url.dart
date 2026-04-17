import 'package:sirat_i_nur/core/network/supabase_config.dart';

String normalizeSupabaseStorageObjectPath(
  String storagePath, {
  String bucketName = SupabaseConfig.quranAudioBucket,
}) {
  final normalized = storagePath.trim().replaceAll('\\', '/');
  if (normalized.isEmpty) {
    return normalized;
  }

  final withoutLeadingSlash = normalized.replaceFirst(RegExp(r'^/+'), '');
  final bucketPrefix = '$bucketName/';
  if (withoutLeadingSlash.startsWith(bucketPrefix)) {
    return withoutLeadingSlash.substring(bucketPrefix.length);
  }

  return withoutLeadingSlash;
}

String buildSupabaseStoragePublicUrl(
  String storagePath, {
  String supabaseUrl = SupabaseConfig.url,
  String bucketName = SupabaseConfig.quranAudioBucket,
}) {
  final baseUri = _requireHttpsSupabaseBaseUri(supabaseUrl);
  final encodedSegments = _safeStorageObjectPathSegments(
    storagePath,
    bucketName: bucketName,
  ).map(Uri.encodeComponent).join('/');

  return '${baseUri.origin}/storage/v1/object/public/$bucketName/$encodedSegments';
}

bool isSupabaseStoragePublicUrl(
  String source, {
  String supabaseUrl = SupabaseConfig.url,
  Set<String> bucketNames = const {
    SupabaseConfig.quranAudioBucket,
    SupabaseConfig.sukunAudioBucket,
    SupabaseConfig.duaAudioBucket,
    SupabaseConfig.adhanAudioBucket,
    SupabaseConfig.asmaAudioBucket,
  },
}) {
  final uri = Uri.tryParse(source.trim());
  final baseUri = Uri.tryParse(supabaseUrl.trim());
  if (uri == null || baseUri == null) {
    return false;
  }

  if (!_isHttpsSupabaseOrigin(baseUri) ||
      !uri.isScheme('https') ||
      uri.userInfo.isNotEmpty ||
      uri.hasQuery ||
      uri.hasFragment ||
      uri.host != baseUri.host) {
    return false;
  }

  if (baseUri.hasPort && uri.port != baseUri.port) {
    return false;
  }
  if (!baseUri.hasPort && uri.hasPort) {
    return false;
  }

  final segments = uri.pathSegments;
  if (segments.length < 6 ||
      segments[0] != 'storage' ||
      segments[1] != 'v1' ||
      segments[2] != 'object' ||
      segments[3] != 'public') {
    return false;
  }

  final bucket = segments[4];
  final objectSegments = segments
      .skip(5)
      .where((segment) => segment.isNotEmpty)
      .toList();
  return bucketNames.contains(bucket) &&
      objectSegments.isNotEmpty &&
      !_hasUnsafeObjectPathSegments(objectSegments);
}

Uri _requireHttpsSupabaseBaseUri(String supabaseUrl) {
  final baseUri = Uri.tryParse(supabaseUrl.trim());
  if (baseUri == null || !_isHttpsSupabaseOrigin(baseUri)) {
    throw const FormatException(
      'Supabase Storage public URLs must use a clean HTTPS project origin.',
    );
  }

  return baseUri;
}

bool _isHttpsSupabaseOrigin(Uri uri) {
  final hasPath = uri.pathSegments.any((segment) => segment.isNotEmpty);
  return uri.isScheme('https') &&
      uri.host.isNotEmpty &&
      uri.userInfo.isEmpty &&
      !uri.hasQuery &&
      !uri.hasFragment &&
      !hasPath;
}

List<String> _safeStorageObjectPathSegments(
  String storagePath, {
  required String bucketName,
}) {
  final normalizedPath = normalizeSupabaseStorageObjectPath(
    storagePath,
    bucketName: bucketName,
  );
  if (normalizedPath.isEmpty ||
      normalizedPath.contains('://') ||
      normalizedPath.contains('?') ||
      normalizedPath.contains('#')) {
    throw const FormatException(
      'Supabase Storage object paths must be clean relative paths.',
    );
  }

  final objectSegments = normalizedPath
      .split('/')
      .where((segment) => segment.isNotEmpty)
      .toList();
  if (objectSegments.isEmpty || _hasUnsafeObjectPathSegments(objectSegments)) {
    throw const FormatException(
      'Supabase Storage object paths must not contain traversal segments.',
    );
  }

  return objectSegments;
}

bool _hasUnsafeObjectPathSegments(Iterable<String> segments) {
  return segments.any((segment) => segment == '.' || segment == '..');
}
