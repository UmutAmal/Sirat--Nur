import 'package:flutter/material.dart';
import 'package:sirat_i_nur/core/constants/live_streams.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LiveTvPage extends StatefulWidget {
  const LiveTvPage({super.key});

  @override
  State<LiveTvPage> createState() => _LiveTvPageState();
}

class _LiveTvPageState extends State<LiveTvPage> {
  int _selectedIndex = 0;
  int _candidateIndex = 0;
  late final WebViewController _controller;
  bool _isLoading = true;
  bool _hasError = false;
  String? _errorText;

  List<String> get _currentCandidates {
    final stream = liveStreams[_selectedIndex];
    final urls = <String>[];

    void addUrl(String? rawUrl) {
      final trimmed = rawUrl?.trim();
      if (trimmed == null || trimmed.isEmpty) return;

      final uri = Uri.tryParse(trimmed);
      if (uri == null || !uri.hasScheme || _isSearchResultUrl(uri)) return;

      final normalized = _normalizeCandidateUrl(
        uri,
        mutedByDefault: stream.mutedByDefault,
      );

      if (!urls.contains(normalized)) {
        urls.add(normalized);
      }
    }

    addUrl(stream.embedUrl);
    addUrl(stream.fallbackEmbedUrl);

    if (urls.isEmpty) {
      addUrl(stream.externalUrl);
    }

    return urls;
  }

  bool _isSearchResultUrl(Uri uri) {
    return uri.host.contains('youtube') && uri.path.contains('/results');
  }

  String _normalizeCandidateUrl(Uri uri, {required bool mutedByDefault}) {
    if (!uri.host.contains('youtube')) {
      return uri.toString();
    }

    final queryParams = <String, String>{
      ...uri.queryParameters,
      'autoplay': uri.queryParameters['autoplay'] ?? '1',
      'playsinline': uri.queryParameters['playsinline'] ?? '1',
      'mute': mutedByDefault ? '1' : '0',
    };

    return uri.replace(queryParameters: queryParams).toString();
  }

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(Colors.black)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (_) {
            if (!mounted) return;
            setState(() {
              _isLoading = true;
              _hasError = false;
            });
          },
          onPageFinished: (_) {
            if (!mounted) return;
            setState(() => _isLoading = false);
          },
          onNavigationRequest: (request) {
            if (request.url.startsWith('intent://')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
          onWebResourceError: (error) {
            if (!mounted) return;
            // Only react to main-frame failures, not sub-resources
            // (favicon, analytics, CSS, etc.)
            if (error.isForMainFrame != true) return;
            final next = _candidateIndex + 1;
            if (next < _currentCandidates.length) {
              _candidateIndex = next;
              _loadCurrentCandidate();
              return;
            }

            setState(() {
              _isLoading = false;
              _hasError = true;
              _errorText = error.description;
            });
          },
        ),
      );

    _loadSelectedStream();
  }

  void _loadCurrentCandidate() {
    final candidates = _currentCandidates;
    if (_candidateIndex < 0 || _candidateIndex >= candidates.length) {
      setState(() {
        _isLoading = false;
        _hasError = true;
        _errorText = 'Stream error';
      });
      return;
    }

    final url = candidates[_candidateIndex].trim();
    final uri = Uri.tryParse(url);
    if (uri == null || !uri.hasScheme) {
      final next = _candidateIndex + 1;
      if (next < candidates.length) {
        _candidateIndex = next;
        _loadCurrentCandidate();
        return;
      }

      setState(() {
        _isLoading = false;
        _hasError = true;
        _errorText = 'Stream error';
      });
      return;
    }

    _controller.loadRequest(uri);
  }

  void _loadSelectedStream() {
    _candidateIndex = 0;
    setState(() {
      _isLoading = true;
      _hasError = false;
      _errorText = null;
    });
    _loadCurrentCandidate();
  }

  void _changeStream(int index) {
    if (_selectedIndex == index) return;
    setState(() {
      _selectedIndex = index;
      _candidateIndex = 0;
      _isLoading = true;
      _hasError = false;
      _errorText = null;
    });
    _loadCurrentCandidate();
  }

  Future<void> _openExternal() async {
    final stream = liveStreams[_selectedIndex];
    final uri = Uri.parse(stream.externalUrl);

    if (!await canLaunchUrl(uri)) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(AppLocalizations.of(context)!.streamError)),
      );
      return;
    }

    await launchUrl(uri, mode: LaunchMode.externalApplication);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final stream = liveStreams[_selectedIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.liveTv),
        actions: [
          IconButton(
            tooltip: l10n.reload,
            icon: const Icon(Icons.refresh_rounded),
            onPressed: _loadSelectedStream,
          ),
          IconButton(
            tooltip: l10n.openInYoutube,
            icon: const Icon(Icons.open_in_new_rounded),
            onPressed: _openExternal,
          ),
        ],
      ),
      body: Column(
        children: [
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
            child: Stack(
              children: [
                WebViewWidget(controller: _controller),
                if (_isLoading)
                  const Center(
                    child: CircularProgressIndicator(color: AppColors.emerald),
                  ),
                if (_hasError)
                  Center(
                    child: Container(
                      width: double.infinity,
                      color: Colors.black.withValues(alpha: 0.78),
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            l10n.streamError,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            _errorText ?? '',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Wrap(
                            alignment: WrapAlignment.center,
                            spacing: 8,
                            children: [
                              ElevatedButton.icon(
                                onPressed: _loadSelectedStream,
                                icon: const Icon(Icons.refresh_rounded),
                                label: Text(l10n.reload),
                              ),
                              OutlinedButton.icon(
                                onPressed: _openExternal,
                                icon: const Icon(Icons.open_in_new_rounded),
                                label: Text(l10n.openInYoutube),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  l10n.watchLive,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    stream.title,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Theme.of(
                        context,
                      ).colorScheme.onSurface.withValues(alpha: 0.6),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemCount: liveStreams.length,
              itemBuilder: (context, index) {
                final item = liveStreams[index];
                final isSelected = index == _selectedIndex;
                return Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    color: isSelected
                        ? AppColors.emeraldSurface
                        : (isDark ? AppColors.darkCard : AppColors.cardLight),
                    borderRadius: BorderRadius.circular(16),
                    border: isSelected
                        ? Border.all(color: AppColors.emerald, width: 2)
                        : null,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.06),
                        blurRadius: 12,
                      ),
                    ],
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    leading: Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        color: AppColors.emeraldSurface,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(
                        Icons.mosque_rounded,
                        color: AppColors.emerald,
                      ),
                    ),
                    title: Text(
                      item.title,
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: isSelected ? AppColors.emerald : null,
                      ),
                    ),
                    subtitle: Text(
                      item.subtitle,
                      style: TextStyle(
                        fontSize: 12,
                        color: Theme.of(
                          context,
                        ).colorScheme.onSurface.withValues(alpha: 0.5),
                      ),
                    ),
                    trailing: isSelected
                        ? const Icon(
                            Icons.play_circle_filled_rounded,
                            color: AppColors.emerald,
                            size: 32,
                          )
                        : const Icon(
                            Icons.play_circle_outline_rounded,
                            size: 28,
                          ),
                    onTap: () => _changeStream(index),
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
