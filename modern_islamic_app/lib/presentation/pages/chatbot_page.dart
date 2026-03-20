import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sirat_i_nur/presentation/blocs/chat_provider.dart';
import 'package:sirat_i_nur/core/services/intelligence_manager.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

import 'package:sirat_i_nur/core/utils/l10n_utils.dart';

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
            filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface.withValues(alpha: 0.7),
                border: Border(bottom: BorderSide(color: Theme.of(context).colorScheme.outline.withValues(alpha: 0.05))),
              ),
            ),
          ),
        ),
        title: Column(
          children: [
            Text(
              trEnGlobal(context, tr: 'Zeki Asistan', en: 'Neural Assistant'),
              style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
            ),
            const SizedBox(height: 2),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 6,
                  height: 6,
                  decoration: BoxDecoration(
                    color: intel.isReady ? const Color(0xFF2E7D32) : Colors.orange,
                    shape: BoxShape.circle,
                    boxShadow: [
                      if (intel.isReady)
                        BoxShadow(color: const Color(0xFF2E7D32).withValues(alpha: 0.5), blurRadius: 4, spreadRadius: 1),
                    ],
                  ),
                ),
                const SizedBox(width: 6),
                Text(
                  intel.isReady ? "Encrypted Link Active" : "Initializing Core...",
                  style: TextStyle(
                    fontSize: 10, 
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: _scrollController,
                padding: const EdgeInsets.fromLTRB(16, 120, 16, 24),
                itemCount: chatState.messages.isEmpty ? 1 : chatState.messages.length,
                itemBuilder: (context, index) {
                  if (chatState.messages.isEmpty) {
                    return _buildWelcomeState(context, l10n);
                  }
                  final msg = chatState.messages[index];
                  return _RoyalMessageBubble(message: msg);
                },
              ),
            ),
            if (chatState.isLoading)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Center(
                  child: SizedBox(
                    width: 40,
                    height: 4,
                    child: LinearProgressIndicator(
                      backgroundColor: Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
              ),
            _buildInputArea(intel, l10n),
          ],
        ),
      ),
    );
  }

  Widget _buildWelcomeState(BuildContext context, AppLocalizations l10n) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 100),
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.05),
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.auto_awesome_rounded, size: 64, color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.2)),
          ),
          const SizedBox(height: 24),
          Text(
            trEnGlobal(context, tr: 'Namaz Rehberi & İslami İlmihal', en: 'Islamic Knowledge Base'),
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              trEnGlobal(context, 
                tr: 'Dilediğiniz dini soruyu sorabilirsiniz. Yapay zeka size Kur\'an ve Sünnet ışığında cevap verecektir.',
                en: 'Ask any religious question. Your AI assistant will provide insights based on the Quran and Sunnah.'
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5), height: 1.5),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInputArea(IntelligenceManager intel, AppLocalizations l10n) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(32)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.03),
            blurRadius: 20,
            offset: const Offset(0, -10),
          ),
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (!intel.isReady)
               Padding(
                 padding: const EdgeInsets.only(bottom: 20),
                 child: Container(
                   padding: const EdgeInsets.all(16),
                   decoration: BoxDecoration(
                     color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.05),
                     borderRadius: BorderRadius.circular(20),
                     border: Border.all(color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.1)),
                   ),
                   child: Column(
                     children: [
                       Text(
                         trEnGlobal(context, tr: 'Zeka Çekirdeği Gerekli', en: 'Neural Core Required'),
                         style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 14),
                       ),
                       const SizedBox(height: 12),
                       ElevatedButton.icon(
                         style: ElevatedButton.styleFrom(
                           backgroundColor: Theme.of(context).colorScheme.primary,
                           foregroundColor: Colors.white,
                           elevation: 0,
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                           padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                         ),
                         onPressed: () => _showDownloadDialog(intel, l10n),
                         icon: const Icon(Icons.bolt_rounded),
                         label: const Text("Deploy Locally"),
                       ),
                     ],
                   ),
                 ),
               ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surfaceContainerHighest.withValues(alpha: 0.6),
                      borderRadius: BorderRadius.circular(28),
                    ),
                    child: TextField(
                      controller: _controller,
                      enabled: intel.isReady,
                      style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                      decoration: InputDecoration(
                        hintText: intel.isReady ? "Mesajınızı yazın..." : "Zeka bekleniyor...",
                        hintStyle: TextStyle(color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.3)),
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                      ),
                      onSubmitted: (val) {
                        if (val.trim().isEmpty) return;
                        ref.read(chatProvider.notifier).sendMessage(val);
                        _controller.clear();
                        _scrollToBottom();
                      },
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                GestureDetector(
                  onTap: intel.isReady ? () {
                    if (_controller.text.trim().isEmpty) return;
                    ref.read(chatProvider.notifier).sendMessage(_controller.text);
                    _controller.clear();
                    _scrollToBottom();
                  } : null,
                  child: Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Theme.of(context).colorScheme.primary,
                          const Color(0xFF2E7D32),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.3),
                          blurRadius: 12,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: const Icon(Icons.arrow_upward_rounded, color: Colors.white, size: 24),
                  ),
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
    final isUser = message.isUser;
    
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Align(
        alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
        child: Container(
          constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.82),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          decoration: BoxDecoration(
            color: isUser 
                ? Theme.of(context).colorScheme.primary 
                : Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(24),
              topRight: const Radius.circular(24),
              bottomLeft: Radius.circular(isUser ? 24 : 4),
              bottomRight: Radius.circular(isUser ? 4 : 24),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.04),
                blurRadius: 15,
                offset: const Offset(0, 6),
              ),
            ],
            border: isUser ? null : Border.all(color: Theme.of(context).colorScheme.outline.withValues(alpha: 0.05)),
            gradient: isUser ? LinearGradient(
              colors: [
                Theme.of(context).colorScheme.primary,
                const Color(0xFF2E7D32),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ) : null,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                message.text,
                style: TextStyle(
                  color: isUser ? Colors.white : Theme.of(context).colorScheme.onSurface,
                  fontSize: 15,
                  fontWeight: isUser ? FontWeight.w600 : FontWeight.w500,
                  height: 1.5,
                ),
              ),
              if (!isUser) ...[
                const SizedBox(height: 8),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.auto_awesome, size: 12, color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.3)),
                    const SizedBox(width: 4),
                    Text(
                      "Source: Sirat-i Nur AI",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w800,
                        color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.2),
                      ),
                    ),
                  ],
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
