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
