import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sirat_i_nur/presentation/blocs/chat_provider.dart';
import 'package:sirat_i_nur/core/services/intelligence_manager.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

class ChatbotPage extends ConsumerStatefulWidget {
  const ChatbotPage({super.key});

  @override
  ConsumerState<ChatbotPage> createState() => _ChatbotPageState();
}

class _ChatbotPageState extends ConsumerState<ChatbotPage> {
  final TextEditingController _controller = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final chatState = ref.watch(chatProvider);
    final intel = ref.watch(intelligenceProvider);
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(color: Theme.of(context).colorScheme.surface.withValues(alpha: 0.5)),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(l10n.asmaulHusna, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            Row(
              children: [
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: intel.isReady ? Colors.green : Colors.orange,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 4),
                Text(
                  intel.isReady ? "Neural Link Active" : "Intelligence Offline",
                  style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Theme.of(context).colorScheme.surface,
              Theme.of(context).colorScheme.primaryContainer.withValues(alpha: 0.1),
              Theme.of(context).colorScheme.surface,
            ],
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: _scrollController,
                padding: const EdgeInsets.fromLTRB(16, 120, 16, 16),
                itemCount: chatState.messages.length,
                itemBuilder: (context, index) {
                  final msg = chatState.messages[index];
                  return _RoyalMessageBubble(message: msg);
                },
              ),
            ),
            if (chatState.isLoading)
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Center(child: CircularProgressIndicator(strokeWidth: 2)),
              ),
            _buildInputArea(intel, l10n),
          ],
        ),
      ),
    );
  }

  Widget _buildInputArea(IntelligenceManager intel, AppLocalizations l10n) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface.withValues(alpha: 0.8),
        border: Border(top: BorderSide(color: Theme.of(context).colorScheme.outlineVariant)),
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (!intel.isReady)
               Padding(
                 padding: const EdgeInsets.only(bottom: 12),
                 child: OutlinedButton.icon(
                   style: OutlinedButton.styleFrom(
                     foregroundColor: Theme.of(context).colorScheme.primary,
                     side: BorderSide(color: Theme.of(context).colorScheme.primary),
                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                   ),
                   onPressed: () => _showDownloadDialog(intel, l10n),
                   icon: const Icon(Icons.download),
                   label: const Text("Deploy Royal Neural Core"),
                 ),
               ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    enabled: intel.isReady,
                    decoration: InputDecoration(
                      hintText: intel.isReady ? "Ask the Intelligence..." : "Neural Core missing...",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: BorderSide.none),
                      filled: true,
                      fillColor: Theme.of(context).colorScheme.surfaceContainerHighest.withValues(alpha: 0.5),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    ),
                    onSubmitted: (val) {
                      ref.read(chatProvider.notifier).sendMessage(val);
                      _controller.clear();
                      _scrollToBottom();
                    },
                  ),
                ),
                const SizedBox(width: 8),
                IconButton.filled(
                  onPressed: intel.isReady ? () {
                    ref.read(chatProvider.notifier).sendMessage(_controller.text);
                    _controller.clear();
                    _scrollToBottom();
                  } : null,
                  icon: const Icon(Icons.send_rounded),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showDownloadDialog(IntelligenceManager intel, AppLocalizations l10n) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (ctx) => StatefulBuilder(
        builder: (context, setDialogState) {
          return AlertDialog(
            title: const Text("Neural Core Required"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text("To enable local AI, we need to download the Gemma 2B model (~1.5GB). This process is only required once."),
                const SizedBox(height: 20),
                LinearProgressIndicator(value: intel.downloadProgress),
                const SizedBox(height: 8),
                Text("${(intel.downloadProgress * 100).toStringAsFixed(1)}% downloaded"),
              ],
            ),
            actions: [
              TextButton(onPressed: () => Navigator.pop(ctx), child: const Text("Cancel")),
              ElevatedButton(
                onPressed: () async {
                   await intel.downloadModel(onProgress: (p) => setDialogState(() {}));
                   if (ctx.mounted) Navigator.pop(ctx);
                }, 
                child: const Text("Download"),
              ),
            ],
          );
        }
      ),
    );
  }
}

class _RoyalMessageBubble extends StatelessWidget {
  final Message message;

  const _RoyalMessageBubble({required this.message});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: message.isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6),
        padding: const EdgeInsets.all(16),
        constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.8),
        decoration: BoxDecoration(
          color: message.isUser 
              ? Theme.of(context).colorScheme.primary 
              : Theme.of(context).colorScheme.surfaceContainerHigh.withValues(alpha: 0.8),
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(20),
            topRight: const Radius.circular(20),
            bottomLeft: Radius.circular(message.isUser ? 20 : 0),
            bottomRight: Radius.circular(message.isUser ? 0 : 20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Text(
          message.text,
          style: TextStyle(
            color: message.isUser ? Colors.white : Theme.of(context).colorScheme.onSurface,
            fontSize: 15,
            height: 1.4,
          ),
        ),
      ),
    );
  }
}
