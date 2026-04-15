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
  final normalizedPath = normalizeSupabaseStorageObjectPath(
    storagePath,
    bucketName: bucketName,
  );
  final encodedSegments = normalizedPath
      .split('/')
      .where((segment) => segment.isNotEmpty)
      .map(Uri.encodeComponent)
      .join('/');

  return '$supabaseUrl/storage/v1/object/public/$bucketName/$encodedSegments';
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

  if ((uri.scheme != 'https' && uri.scheme != 'http') ||
      uri.scheme != baseUri.scheme ||
      uri.host != baseUri.host) {
    return false;
  }

  if (baseUri.hasPort && uri.port != baseUri.port) {
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
  final hasObjectPath = segments.skip(5).any((segment) => segment.isNotEmpty);
  return bucketNames.contains(bucket) && hasObjectPath;
}
