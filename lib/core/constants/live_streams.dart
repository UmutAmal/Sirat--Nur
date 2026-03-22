class LiveStreamInfo {
  final String shortLabel;
  final String title;
  final String subtitle;
  final String embedUrl;
  final String? fallbackEmbedUrl;
  final String externalUrl;
  final bool mutedByDefault;

  const LiveStreamInfo({
    required this.shortLabel,
    required this.title,
    required this.subtitle,
    required this.embedUrl,
    this.fallbackEmbedUrl,
    required this.externalUrl,
    required this.mutedByDefault,
  });
}

const List<LiveStreamInfo> liveStreams = [
  LiveStreamInfo(
    shortLabel: 'Makkah',
    title: 'Makkah Al-Mukarramah',
    subtitle: 'Live from Masjid al-Haram',
    embedUrl:
        'https://www.youtube.com/embed/live_stream?channel=UCKJooOkz2wzQ_ofz_yX1_5A&autoplay=1&mute=1&playsinline=1',
    fallbackEmbedUrl:
        'https://www.youtube-nocookie.com/embed/live_stream?channel=UCKJooOkz2wzQ_ofz_yX1_5A&autoplay=1&mute=1&playsinline=1',
    externalUrl: 'https://www.youtube.com/channel/UCKJooOkz2wzQ_ofz_yX1_5A/live',
    mutedByDefault: true,
  ),
  LiveStreamInfo(
    shortLabel: 'Madinah',
    title: 'Al-Madinah Al-Munawwarah',
    subtitle: 'Live from Masjid an-Nabawi',
    embedUrl:
        'https://www.youtube.com/embed/live_stream?channel=UCos6Hg8mF5P01sO8fQ7v7WA&autoplay=1&mute=1&playsinline=1',
    fallbackEmbedUrl: 'https://www.youtube.com/results?search_query=Masjid+an+Nabawi+live',
    externalUrl: 'https://www.youtube.com/results?search_query=Masjid+an+Nabawi+live',
    mutedByDefault: true,
  ),
];
