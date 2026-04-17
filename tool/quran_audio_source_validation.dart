const String approvedQuranAudioMirrorHost = 'download.quranicaudio.com';
const String approvedQuranSourceHost = 'api.quran.com';

bool hasSafeQuranAudioUrlShape(Uri uri) {
  return uri.isScheme('https') &&
      uri.userInfo.isEmpty &&
      !uri.hasQuery &&
      !uri.hasFragment;
}

bool isApprovedQuranAudioMirrorUrl(Uri uri) {
  return hasSafeQuranAudioUrlShape(uri) &&
      uri.host.toLowerCase() == approvedQuranAudioMirrorHost &&
      uri.pathSegments.isNotEmpty &&
      uri.pathSegments.first == 'qdc' &&
      uri.path.toLowerCase().endsWith('.mp3');
}

bool isApprovedQuranSourceUrl(Uri uri) {
  return hasSafeQuranAudioUrlShape(uri) &&
      uri.host.toLowerCase() == approvedQuranSourceHost &&
      uri.pathSegments.length == 4 &&
      uri.pathSegments[0] == 'api' &&
      uri.pathSegments[1] == 'v4' &&
      uri.pathSegments[2] == 'chapter_recitations' &&
      int.tryParse(uri.pathSegments[3]) != null;
}
