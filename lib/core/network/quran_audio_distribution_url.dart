const String kQuranAudioGithubReciterId = 'abdul_basit_murattal';
const String kQuranAudioBucketName = 'quran-audio';

class QuranAudioDistributionConfig {
  static const String cloudflareBaseUrl = String.fromEnvironment(
    'QURAN_AUDIO_CLOUDFLARE_BASE_URL',
  );

  static const String githubUrlTemplate = String.fromEnvironment(
    'QURAN_AUDIO_GITHUB_URL_TEMPLATE',
  );
}

String normalizeQuranAudioObjectPath(
  String storagePath, {
  String bucketName = kQuranAudioBucketName,
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

String expectedQuranAudioObjectPath({
  required String reciterId,
  required int surahNumber,
}) {
  return '$reciterId/${surahNumber.toString().padLeft(3, '0')}.mp3';
}

String? resolveQuranAudioDistributionUrl({
  required String reciterId,
  required int surahNumber,
  required String storagePath,
  String cloudflareBaseUrl = QuranAudioDistributionConfig.cloudflareBaseUrl,
  String githubUrlTemplate = QuranAudioDistributionConfig.githubUrlTemplate,
}) {
  final urls = resolveQuranAudioDistributionUrls(
    reciterId: reciterId,
    surahNumber: surahNumber,
    storagePath: storagePath,
    cloudflareBaseUrl: cloudflareBaseUrl,
    githubUrlTemplate: githubUrlTemplate,
  );
  return urls.isEmpty ? null : urls.first;
}

List<String> resolveQuranAudioDistributionUrls({
  required String reciterId,
  required int surahNumber,
  required String storagePath,
  String cloudflareBaseUrl = QuranAudioDistributionConfig.cloudflareBaseUrl,
  String githubUrlTemplate = QuranAudioDistributionConfig.githubUrlTemplate,
}) {
  final normalizedReciterId = reciterId.trim();
  if (!_isSafeReciterId(normalizedReciterId) ||
      surahNumber < 1 ||
      surahNumber > 114) {
    return const [];
  }

  final normalizedPath = normalizeQuranAudioObjectPath(storagePath);
  final expectedPath = expectedQuranAudioObjectPath(
    reciterId: normalizedReciterId,
    surahNumber: surahNumber,
  );
  if (normalizedPath != expectedPath) {
    return const [];
  }

  final githubUrl = _buildFromGithubTemplate(
    githubUrlTemplate,
    reciterId: normalizedReciterId,
    surahNumber: surahNumber,
    objectPath: normalizedPath,
  );
  final cloudflareUrl = _buildFromCloudflareBase(
    cloudflareBaseUrl,
    objectPath: normalizedPath,
  );

  final urls = <String>[];
  if (normalizedReciterId == kQuranAudioGithubReciterId ||
      _shouldPreferGithubMirror(cloudflareBaseUrl)) {
    _addCleanUrl(urls, githubUrl);
    if (normalizedReciterId != kQuranAudioGithubReciterId) {
      _addCleanUrl(urls, cloudflareUrl);
    }
  } else {
    _addCleanUrl(urls, cloudflareUrl);
    _addCleanUrl(urls, githubUrl);
  }

  return List.unmodifiable(urls);
}

bool isExpectedQuranAudioDistributionUrl({
  required String audioUrl,
  required String reciterId,
  required int surahNumber,
  String cloudflareBaseUrl = QuranAudioDistributionConfig.cloudflareBaseUrl,
  String githubUrlTemplate = QuranAudioDistributionConfig.githubUrlTemplate,
}) {
  final expectedUrls = resolveQuranAudioDistributionUrls(
    reciterId: reciterId,
    surahNumber: surahNumber,
    storagePath: expectedQuranAudioObjectPath(
      reciterId: reciterId,
      surahNumber: surahNumber,
    ),
    cloudflareBaseUrl: cloudflareBaseUrl,
    githubUrlTemplate: githubUrlTemplate,
  );
  return expectedUrls.contains(audioUrl.trim());
}

String? _buildFromCloudflareBase(
  String cloudflareBaseUrl, {
  required String objectPath,
}) {
  final baseUri = _parseCleanHttpsBaseUri(cloudflareBaseUrl);
  if (baseUri == null) {
    return null;
  }

  final basePathSegments = baseUri.pathSegments
      .where((segment) => segment.isNotEmpty)
      .toList(growable: true);
  final objectSegments = objectPath
      .split('/')
      .where((segment) => segment.isNotEmpty)
      .toList(growable: false);
  if (_hasUnsafeSegments(objectSegments)) {
    return null;
  }

  return baseUri
      .replace(pathSegments: [...basePathSegments, ...objectSegments])
      .toString();
}

String? _buildFromGithubTemplate(
  String githubUrlTemplate, {
  required String reciterId,
  required int surahNumber,
  required String objectPath,
}) {
  final template = githubUrlTemplate.trim();
  if (template.isEmpty ||
      !(template.contains('{reciter}') ||
          template.contains('{surah}') ||
          template.contains('{path}') ||
          template.contains('{file}'))) {
    return null;
  }

  final paddedSurah = surahNumber.toString().padLeft(3, '0');
  final fileName = '$paddedSurah.mp3';
  final encodedPath = objectPath.split('/').map(Uri.encodeComponent).join('/');

  return template
      .replaceAll('{reciter}', Uri.encodeComponent(reciterId))
      .replaceAll('{surah}', paddedSurah)
      .replaceAll('{file}', Uri.encodeComponent(fileName))
      .replaceAll('{path}', encodedPath);
}

Uri? _parseCleanHttpsBaseUri(String candidate) {
  final uri = Uri.tryParse(candidate.trim());
  if (uri == null ||
      !uri.isScheme('https') ||
      uri.host.isEmpty ||
      uri.userInfo.isNotEmpty ||
      uri.hasQuery ||
      uri.hasFragment ||
      _hasUnsafeSegments(uri.pathSegments)) {
    return null;
  }

  return uri;
}

bool _isCleanHttpsUrl(String candidate) {
  final uri = Uri.tryParse(candidate.trim());
  return uri != null &&
      uri.isScheme('https') &&
      uri.host.isNotEmpty &&
      uri.userInfo.isEmpty &&
      !uri.hasQuery &&
      !uri.hasFragment &&
      !_hasUnsafeSegments(uri.pathSegments);
}

bool _isSafeReciterId(String reciterId) {
  return RegExp(r'^[a-z0-9_-]+$').hasMatch(reciterId);
}

bool _hasUnsafeSegments(Iterable<String> segments) {
  return segments.any((segment) => segment == '.' || segment == '..');
}

void _addCleanUrl(List<String> urls, String? candidate) {
  if (candidate == null || !_isCleanHttpsUrl(candidate)) {
    return;
  }

  final normalized = candidate.trim();
  if (!urls.contains(normalized)) {
    urls.add(normalized);
  }
}

bool _shouldPreferGithubMirror(String cloudflareBaseUrl) {
  final uri = Uri.tryParse(cloudflareBaseUrl.trim());
  final host = uri?.host.toLowerCase() ?? '';
  return host == 'r2.dev' || host.endsWith('.r2.dev');
}
