class LiveStreamInfo {
  final String shortLabel;
  final String title;
  final String subtitle;
  final String videoId;
  final bool mutedByDefault;

  const LiveStreamInfo({
    required this.shortLabel,
    required this.title,
    required this.subtitle,
    required this.videoId,
    required this.mutedByDefault,
  });
}

const List<LiveStreamInfo> liveStreams = [
  LiveStreamInfo(
    shortLabel: 'Makkah',
    title: 'Makkah Al-Mukarramah',
    subtitle: 'Live from Masjid al-Haram',
    videoId: '7pzsuuI_vtE',
    mutedByDefault: false,
  ),
  LiveStreamInfo(
    shortLabel: 'Madinah',
    title: 'Al-Madinah Al-Munawwarah',
    subtitle: 'Live from Masjid an-Nabawi',
    videoId: 'eKeOLyxljoo',
    mutedByDefault: true,
  ),
];
