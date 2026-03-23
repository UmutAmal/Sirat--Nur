import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:sirat_i_nur/core/constants/islamic_chatbot_data.dart';

// ──────────────────────────────────────────────────────────────
// Gemini API key — injected via --dart-define for production,
// falls back to empty string (which uses local Q&A fallback).
// ──────────────────────────────────────────────────────────────
const String _geminiApiKey = String.fromEnvironment('GEMINI_API_KEY', defaultValue: '');

final _chatMessagesProvider = StateProvider<List<_ChatMsg>>((ref) => [
  _ChatMsg(text: 'Assalamu Alaikum! I am your Islamic assistant. Ask me about prayer, fasting, zakat, or any Islamic topic.', isUser: false),
]);
final _queriesLeftProvider = StateProvider<int>((ref) => 20);
final _isLoadingProvider = StateProvider<bool>((ref) => false);

class ChatbotPage extends ConsumerStatefulWidget {
  const ChatbotPage({super.key});
  @override
  ConsumerState<ChatbotPage> createState() => _ChatbotPageState();
}

class _ChatbotPageState extends ConsumerState<ChatbotPage> {
  final _controller = TextEditingController();
  final _scrollController = ScrollController();
  GenerativeModel? _model;
  ChatSession? _chat;

  @override
  void initState() {
    super.initState();
    _initGemini();
  }

  void _initGemini() {
    if (_geminiApiKey.isNotEmpty) {
      _model = GenerativeModel(
        model: 'gemini-2.0-flash',
        apiKey: _geminiApiKey,
        systemInstruction: Content.system(
          'You are a knowledgeable Islamic scholar assistant called "Neural Assistant" '
          'in the Sirat-i Nur app. Answer questions about Islam, Quran, Hadith, Fiqh, '
          'prayer, fasting, zakat, hajj, and Islamic ethics. Be respectful, accurate, '
          'and cite Quran verses or authenticated hadiths when possible. '
          'Respond in the same language the user writes in. '
          'If unsure, say so honestly rather than guessing.',
        ),
      );
      _chat = _model!.startChat();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _sendMessage() async {
    final text = _controller.text.trim();
    if (text.isEmpty) return;

    final queriesLeft = ref.read(_queriesLeftProvider);
    if (queriesLeft <= 0) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Daily query limit reached. Upgrade to Premium for unlimited.')),
      );
      return;
    }

    final messages = ref.read(_chatMessagesProvider.notifier);
    messages.state = [...messages.state, _ChatMsg(text: text, isUser: true)];
    _controller.clear();
    _scrollToBottom();

    ref.read(_isLoadingProvider.notifier).state = true;

    try {
      String response;

      if (_chat != null) {
        // Use Gemini LLM
        final geminiResponse = await _chat!.sendMessage(Content.text(text));
        response = geminiResponse.text ?? 'I could not generate a response. Please try again.';
      } else {
        // Fallback to local Q&A database
        final locale = Localizations.localeOf(context);
        final isTurkish = locale.languageCode == 'tr';
        final localResponse = IslamicChatbotData.getResponse(text, isTurkish);
        response = localResponse ??
            (isTurkish
                ? 'Bu konuda henüz bilgim yok. Namaz, oruç, zekat, hac, iman, ahlak gibi konularda soru sorabilirsiniz.'
                : "I don't have information on this topic yet. You can ask about prayer, fasting, zakat, hajj, faith, or ethics.");
      }

      if (!mounted) return;
      final msgs = ref.read(_chatMessagesProvider.notifier);
      msgs.state = [...msgs.state, _ChatMsg(text: response, isUser: false)];
      ref.read(_queriesLeftProvider.notifier).state--;
    } catch (e) {
      if (!mounted) return;
      // On Gemini error, try local fallback
      final locale = Localizations.localeOf(context);
      final isTurkish = locale.languageCode == 'tr';
      final localResponse = IslamicChatbotData.getResponse(text, isTurkish);
      final msgs = ref.read(_chatMessagesProvider.notifier);
      msgs.state = [...msgs.state, _ChatMsg(
        text: localResponse ?? (isTurkish
            ? 'Bir hata oluştu. Lütfen tekrar deneyin.'
            : 'An error occurred. Please try again.'),
        isUser: false,
      )];
    } finally {
      if (mounted) {
        ref.read(_isLoadingProvider.notifier).state = false;
        _scrollToBottom();
      }
    }
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
    final isLoading = ref.watch(_isLoadingProvider);
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Neural Assistant'),
            if (_model != null) ...[
              const SizedBox(width: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: AppColors.emeraldSurface,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Text('AI', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w900, color: AppColors.emerald)),
              ),
            ],
          ],
        ),
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
              itemCount: messages.length + (isLoading ? 1 : 0),
              itemBuilder: (context, i) {
                if (i == messages.length && isLoading) {
                  return _buildTypingIndicator(isDark);
                }
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
                      enabled: !isLoading,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    decoration: BoxDecoration(
                      gradient: AppColors.emeraldGradient,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: IconButton(
                      icon: isLoading
                          ? const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white))
                          : const Icon(Icons.send_rounded, color: Colors.white),
                      onPressed: isLoading ? null : _sendMessage,
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

  Widget _buildTypingIndicator(bool isDark) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: isDark ? AppColors.darkCard : AppColors.cardLight,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(18),
            topRight: Radius.circular(18),
            bottomRight: Radius.circular(18),
            bottomLeft: Radius.circular(4),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(width: 16, height: 16, child: CircularProgressIndicator(strokeWidth: 2, color: AppColors.emerald.withValues(alpha: 0.6))),
            const SizedBox(width: 10),
            Text('Thinking...', style: TextStyle(color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5), fontStyle: FontStyle.italic, fontSize: 13)),
          ],
        ),
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
        child: SelectableText(
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
