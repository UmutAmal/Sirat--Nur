class LiveStreamInfo {
  final String shortLabel;
  final String title;
  final String subtitle;
  final String url;
  final bool mutedByDefault;

  const LiveStreamInfo({
    required this.shortLabel,
    required this.title,
    required this.subtitle,
    required this.url,
    required this.mutedByDefault,
  });
}

const List<LiveStreamInfo> liveStreams = [
  LiveStreamInfo(
    shortLabel: 'Makkah',
    title: 'Makkah Al-Mukarramah',
    subtitle: 'Live from Masjid al-Haram',
    url: 'https://www.youtube.com/embed/live_stream?channel=UCKJooOkz2wzQ_ofz_yX1_5A&autoplay=1&mute=0',
    mutedByDefault: false,
  ),
  LiveStreamInfo(
    shortLabel: 'Madinah',
    title: 'Al-Madinah Al-Munawwarah',
    subtitle: 'Live from Masjid an-Nabawi',
    url: 'https://www.youtube.com/embed/live_stream?channel=UC_x5XG1OV2P6uZZ5FSM9Ttw&autoplay=1&mute=1',
    mutedByDefault: true,
  ),
];
