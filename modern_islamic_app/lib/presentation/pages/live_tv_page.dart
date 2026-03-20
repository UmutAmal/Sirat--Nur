import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:sirat_i_nur/core/utils/l10n_utils.dart';

class LiveTvPage extends StatefulWidget {
  const LiveTvPage({super.key});

  @override
  State<LiveTvPage> createState() => _LiveTvPageState();
}

class _LiveTvPageState extends State<LiveTvPage> {
  final List<Map<String, String>> _channels = [
    {'name': 'Makkah Live (Quran TV)', 'url': 'https://s-kaaba.radioca.st/kaaba', 'icon': '🕋'},
    {'name': 'Madinah Live (Sunnah TV)', 'url': 'https://cdn-globecast.akamaized.net/live/eds/saudi_sunnah/hls_roku/index.m3u8', 'icon': '🕌'},
    {'name': 'Islamic News', 'url': 'https://cdn-globecast.akamaized.net/live/eds/saudi_news/hls_roku/index.m3u8', 'icon': '📡'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(trEnGlobal(context, tr: 'Canlı Yayın', en: 'Live TV')),
              background: Container(
                color: Colors.black,
                child: const Center(
                  child: Icon(Icons.live_tv, size: 80, color: Color(0xFFFFD700)),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 1.2,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final channel = _channels[index];
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.05),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: const Color(0xFFFFD700).withValues(alpha: 0.2)),
                    ),
                    child: InkWell(
                      onTap: () async {
                        final url = Uri.parse(channel['url']!);
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url, mode: LaunchMode.externalApplication);
                        }
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(channel['icon']!, style: const TextStyle(fontSize: 40)),
                          const SizedBox(height: 12),
                          Text(channel['name']!, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  );
                },
                childCount: _channels.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
