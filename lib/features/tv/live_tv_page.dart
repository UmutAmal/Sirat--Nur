import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:sirat_i_nur/core/constants/live_streams.dart';

class LiveTvPage extends StatefulWidget {
  const LiveTvPage({super.key});
  @override
  State<LiveTvPage> createState() => _LiveTvPageState();
}

class _LiveTvPageState extends State<LiveTvPage> {
  int _selectedIndex = 0;
  late WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _initWebView();
  }

  void _initWebView() {
    final stream = liveStreams[_selectedIndex];
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(Colors.black)
      ..loadRequest(Uri.parse(stream.url));
  }

  void _changeStream(int index) {
    if (_selectedIndex == index) return;
    setState(() {
      _selectedIndex = index;
    });
    final stream = liveStreams[_selectedIndex];
    _controller.loadRequest(Uri.parse(stream.url));
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(title: const Text('Live TV')),
      body: Column(
        children: [
          // Video area
          Container(
            width: double.infinity,
            height: 240,
            decoration: BoxDecoration(
              color: isDark ? AppColors.darkCard : Colors.black,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
            ),
            clipBehavior: Clip.hardEdge,
            child: WebViewWidget(controller: _controller),
          ),
          const SizedBox(height: 24),
          // Channel selector
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text('Select Channel', style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w900)),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemCount: liveStreams.length,
              itemBuilder: (context, i) {
                final s = liveStreams[i];
                final isSelected = i == _selectedIndex;
                return Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    color: isSelected
                      ? AppColors.emeraldSurface
                      : (isDark ? AppColors.darkCard : AppColors.cardLight),
                    borderRadius: BorderRadius.circular(16),
                    border: isSelected ? Border.all(color: AppColors.emerald, width: 2) : null,
                    boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.06), blurRadius: 12)],
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    leading: Container(
                      width: 48, height: 48,
                      decoration: BoxDecoration(
                        color: AppColors.emeraldSurface,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(Icons.mosque_rounded, color: AppColors.emerald),
                    ),
                    title: Text(s.title, style: TextStyle(fontWeight: FontWeight.w900,
                      color: isSelected ? AppColors.emerald : null)),
                    subtitle: Text(s.subtitle, style: TextStyle(fontSize: 12,
                      color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5))),
                    trailing: isSelected
                      ? const Icon(Icons.play_circle_filled_rounded, color: AppColors.emerald, size: 32)
                      : const Icon(Icons.play_circle_outline_rounded, size: 28),
                    onTap: () => _changeStream(i),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
