import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';

import 'package:sirat_i_nur/core/constants/islamic_chatbot_data.dart';

final _chatMessagesProvider = StateProvider<List<_ChatMsg>>((ref) => [
  _ChatMsg(text: 'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.', isUser: false),
]);
final _queriesLeftProvider = StateProvider<int>((ref) => 5);

class ChatbotPage extends ConsumerStatefulWidget {
  const ChatbotPage({super.key});
  @override
  ConsumerState<ChatbotPage> createState() => _ChatbotPageState();
}

class _ChatbotPageState extends ConsumerState<ChatbotPage> {
  final _controller = TextEditingController();
  final _scrollController = ScrollController();

  @override
  void dispose() {
    _controller.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _sendMessage() {
    final text = _controller.text.trim();
    if (text.isEmpty) return;

    final messages = ref.read(_chatMessagesProvider.notifier);
    messages.state = [...messages.state, _ChatMsg(text: text, isUser: true)];
    _controller.clear();

    // Get response from local Q&A database
    final locale = Localizations.localeOf(context);
    final isTurkish = locale.languageCode == 'tr';
    final response = IslamicChatbotData.getResponse(text, isTurkish);

    Future.delayed(const Duration(milliseconds: 600), () {
      if (!mounted) return;
      final msgs = ref.read(_chatMessagesProvider.notifier);
      if (response != null) {
        msgs.state = [...msgs.state, _ChatMsg(text: response, isUser: false)];
      } else {
        msgs.state = [...msgs.state, _ChatMsg(
          text: isTurkish
            ? 'Bu konuda henuz bilgim yok. Namaz, oruc, zekat, hac, iman, ahlak gibi konularda soru sorabilirsiniz.'
            : "I don't have information on this topic yet. You can ask about prayer, fasting, zakat, hajj, faith, or ethics.",
          isUser: false,
        )];
      }
      ref.read(_queriesLeftProvider.notifier).state--;
      _scrollToBottom();
    });

    _scrollToBottom();
  }

  void _scrollToBottom() {
    Future.delayed(const Duration(milliseconds: 100), () {
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
    final messages = ref.watch(_chatMessagesProvider);
    final queriesLeft = ref.watch(_queriesLeftProvider);
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Neural Assistant'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 12),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: AppColors.emeraldSurface,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.bolt_rounded, color: AppColors.emerald, size: 16),
                const SizedBox(width: 4),
                Text('$queriesLeft left', style: const TextStyle(fontWeight: FontWeight.w800, color: AppColors.emerald, fontSize: 12)),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              padding: const EdgeInsets.all(16),
              itemCount: messages.length,
              itemBuilder: (context, i) {
                final msg = messages[i];
                return _buildMessage(context, msg, isDark);
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: isDark ? AppColors.darkSurface : AppColors.cardLight,
              boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.05), blurRadius: 10, offset: const Offset(0, -2))],
            ),
            child: SafeArea(
              top: false,
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                        hintText: 'Ask a question...',
                        hintStyle: TextStyle(color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.3)),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16), borderSide: BorderSide.none),
                        filled: true,
                        fillColor: isDark ? AppColors.darkBg : AppColors.emeraldSurface,
                        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      ),
                      onSubmitted: (_) => _sendMessage(),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    decoration: BoxDecoration(
                      gradient: AppColors.emeraldGradient,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.send_rounded, color: Colors.white),
                      onPressed: _sendMessage,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMessage(BuildContext context, _ChatMsg msg, bool isDark) {
    return Align(
      alignment: msg.isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(14),
        constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.8),
        decoration: BoxDecoration(
          color: msg.isUser
            ? AppColors.emerald
            : (isDark ? AppColors.darkCard : AppColors.cardLight),
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(18),
            topRight: const Radius.circular(18),
            bottomLeft: Radius.circular(msg.isUser ? 18 : 4),
            bottomRight: Radius.circular(msg.isUser ? 4 : 18),
          ),
          boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.06), blurRadius: 8, offset: const Offset(0, 2))],
        ),
        child: Text(
          msg.text,
          style: TextStyle(
            color: msg.isUser ? Colors.white : Theme.of(context).colorScheme.onSurface,
            fontSize: 14, height: 1.5,
          ),
        ),
      ),
    );
  }
}

class _ChatMsg {
  final String text;
  final bool isUser;
  const _ChatMsg({required this.text, required this.isUser});
}
