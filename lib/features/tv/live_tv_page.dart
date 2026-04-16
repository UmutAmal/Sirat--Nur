import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:sirat_i_nur/core/utils/external_url.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';
import 'package:sirat_i_nur/core/providers/supabase_providers.dart';
import 'package:webview_flutter/webview_flutter.dart';

String buildLiveTvProviderErrorText(AppLocalizations l10n) {
  return '${l10n.streamError}\n${l10n.checkConnection}';
}

String buildLiveTvEmptyStateText(AppLocalizations l10n) {
  return l10n.noResults;
}

String? _readLiveTvString(Object? value) {
  if (value is! String) return null;

  final trimmed = value.trim();
  return trimmed.isEmpty ? null : trimmed;
}

bool _isAllowedLiveTvUrl(Uri uri) {
  return isExternalHttpUri(uri) &&
      uri.scheme == 'https' &&
      _isTrustedLiveTvHost(uri.host);
}

bool _isTrustedLiveTvHost(String host) {
  final normalizedHost = host.toLowerCase();
  return normalizedHost == 'youtube.com' ||
      normalizedHost.endsWith('.youtube.com') ||
      normalizedHost == 'youtube-nocookie.com' ||
      normalizedHost.endsWith('.youtube-nocookie.com');
}

bool _isLiveTvSearchResultUrl(Uri uri) {
  return _isTrustedLiveTvHost(uri.host) && uri.path.contains('/results');
}

String _normalizeLiveTvCandidateUrl(Uri uri, {required bool mutedByDefault}) {
  final queryParams = <String, String>{
    ...uri.queryParameters,
    'autoplay': uri.queryParameters['autoplay'] ?? '1',
    'playsinline': uri.queryParameters['playsinline'] ?? '1',
    'mute': mutedByDefault ? '1' : '0',
  };
  return uri.replace(queryParameters: queryParams).toString();
}

List<String> resolveLiveTvCandidateUrls(Map<String, dynamic> stream) {
  final urls = <String>[];
  final mutedByDefault = stream['muted_by_default'] == true;

  void addUrl(Object? rawUrl) {
    final trimmed = _readLiveTvString(rawUrl);
    if (trimmed == null) return;

    final uri = Uri.tryParse(trimmed);
    if (uri == null ||
        !_isAllowedLiveTvUrl(uri) ||
        _isLiveTvSearchResultUrl(uri)) {
      return;
    }

    final normalized = _normalizeLiveTvCandidateUrl(
      uri,
      mutedByDefault: mutedByDefault,
    );

    if (!urls.contains(normalized)) {
      urls.add(normalized);
    }
  }

  addUrl(stream['embed_url']);
  addUrl(stream['fallback_embed_url']);
  if (urls.isEmpty) {
    addUrl(stream['external_url']);
  }

  return List.unmodifiable(urls);
}

Uri? resolveLiveTvExternalUri(Map<String, dynamic> stream) {
  final trimmed = _readLiveTvString(stream['external_url']);
  if (trimmed == null) return null;

  final uri = Uri.tryParse(trimmed);
  if (uri == null || !_isAllowedLiveTvUrl(uri)) {
    return null;
  }

  return uri;
}

String resolveLiveTvDisplayText(Map<String, dynamic> stream, String key) {
  return _readLiveTvString(stream[key]) ?? '';
}

class LiveTvPage extends ConsumerStatefulWidget {
  const LiveTvPage({super.key});

  @override
  ConsumerState<LiveTvPage> createState() => _LiveTvPageState();
}

class _LiveTvPageState extends ConsumerState<LiveTvPage> {
  int _selectedIndex = 0;
  int _candidateIndex = 0;
  late final WebViewController _controller;
  bool _isLoading = true;
  bool _hasError = false;

  // Data retrieved from Supabase
  List<Map<String, dynamic>> _streams = [];

  List<String> get _currentCandidates {
    if (_streams.isEmpty || _selectedIndex >= _streams.length) return [];

    return resolveLiveTvCandidateUrls(_streams[_selectedIndex]);
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
            if (error.isForMainFrame != true) return;
            debugPrint(
              'Live TV main frame load failed: code=${error.errorCode}, type=${error.errorType}',
            );
            final next = _candidateIndex + 1;
            if (next < _currentCandidates.length) {
              _candidateIndex = next;
              _loadCurrentCandidate();
              return;
            }
            setState(() {
              _isLoading = false;
              _hasError = true;
            });
          },
        ),
      );
  }

  void _loadCurrentCandidate() {
    final candidates = _currentCandidates;
    if (_candidateIndex < 0 || _candidateIndex >= candidates.length) {
      setState(() {
        _isLoading = false;
        _hasError = true;
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
      });
      return;
    }

    _controller.loadRequest(uri);
  }

  void _loadSelectedStream() {
    if (_streams.isEmpty) return;
    _candidateIndex = 0;
    setState(() {
      _isLoading = true;
      _hasError = false;
    });
    _loadCurrentCandidate();
  }

  void _changeStream(int index) {
    if (index < 0 || index >= _streams.length) return;
    if (_selectedIndex == index) return;
    setState(() {
      _selectedIndex = index;
      _candidateIndex = 0;
      _isLoading = true;
      _hasError = false;
    });
    _loadCurrentCandidate();
  }

  Future<void> _openExternal() async {
    if (_streams.isEmpty || _selectedIndex >= _streams.length) return;
    final stream = _streams[_selectedIndex];
    final uri = resolveLiveTvExternalUri(stream);

    if (uri == null) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(AppLocalizations.of(context)!.streamError)),
      );
      return;
    }

    await launchExternalUri(context, uri);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    final liveTvAsync = ref.watch(liveTvProvider);

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(l10n.liveTv),
            const SizedBox(width: 8),
            // Cloud indicator
            const Icon(Icons.cloud_rounded, size: 16, color: AppColors.emerald),
          ],
        ),
        actions: [
          IconButton(
            tooltip: l10n.reload,
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () {
              ref.invalidate(liveTvProvider);
            },
          ),
          IconButton(
            tooltip: l10n.openInYoutube,
            icon: const Icon(Icons.open_in_new_rounded),
            onPressed: _openExternal,
          ),
        ],
      ),
      body: liveTvAsync.when(
        loading: () => const Center(
          child: CircularProgressIndicator(color: AppColors.emerald),
        ),
        error: (e, s) =>
            Center(child: Text(buildLiveTvProviderErrorText(l10n))),
        data: (fetchedStreams) {
          if (fetchedStreams.isEmpty) {
            return Center(child: Text(buildLiveTvEmptyStateText(l10n)));
          }

          // Triggers load on first successful fetch
          if (_streams.isEmpty) {
            _streams = fetchedStreams;
            WidgetsBinding.instance.addPostFrameCallback((_) {
              _loadSelectedStream();
            });
          } else {
            _streams = fetchedStreams;
          }
          if (_selectedIndex >= _streams.length) {
            _selectedIndex = 0;
            _candidateIndex = 0;
          }

          final stream = _streams[_selectedIndex];

          return Column(
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
                        child: CircularProgressIndicator(
                          color: AppColors.emerald,
                        ),
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
                                l10n.checkConnection,
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
                        resolveLiveTvDisplayText(stream, 'title'),
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
                  itemCount: _streams.length,
                  itemBuilder: (context, index) {
                    final item = _streams[index];
                    final isSelected = index == _selectedIndex;
                    return Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      decoration: BoxDecoration(
                        color: isSelected
                            ? AppColors.emeraldSurface
                            : (isDark
                                  ? AppColors.darkCard
                                  : AppColors.cardLight),
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
                          resolveLiveTvDisplayText(item, 'title'),
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: isSelected ? AppColors.emerald : null,
                          ),
                        ),
                        subtitle: Text(
                          resolveLiveTvDisplayText(item, 'subtitle'),
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
          );
        },
      ),
    );
  }
}
