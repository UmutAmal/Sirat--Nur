import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:sirat_i_nur/core/constants/islamic_chatbot_data.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

// ──────────────────────────────────────────────────────────────
// Gemini API key — injected via --dart-define for production,
// falls back to empty string (which uses local Q&A fallback).
// ──────────────────────────────────────────────────────────────
const String _geminiApiKey = String.fromEnvironment(
  'GEMINI_API_KEY',
  defaultValue: '',
);

const String islamicChatbotSystemInstruction =
    'You are an Islamic guidance assistant in the Sirat-i Nur app, not a mufti and not a replacement for a qualified local scholar. '
    'You MUST ONLY answer questions related to Islam, the Quran, authenticated Hadith, fiqh, prayer, fasting, zakat, hajj, and Islamic ethics. '
    'If the user asks anything outside Islamic guidance, politely refuse and remind them that your sole purpose is Islamic guidance. '
    'Do not issue personal fatwas or definitive rulings for complex real-life cases; explain recognized scholarly differences respectfully and advise consulting a qualified local scholar or official religious authority. '
    'Do not invent Quran verses, hadiths, chains, references, or scholarly attributions. '
    'Cite Quran references or authenticated hadith only when you are confident; otherwise say that the source must be verified. '
    'For medical, legal, financial, safety, or emergency matters, provide only general spiritual support and direct the user to appropriate professionals or local authorities. '
    'Respond in the same language the user writes in. '
    'If unsure, say so honestly rather than guessing.';

final _chatMessagesProvider = StateProvider<List<_ChatMsg>>(
  (ref) => [_ChatMsg(text: '__GREETING__', isUser: false)],
);
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
  bool _isOfflineMode = false;

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
        systemInstruction: Content.system(islamicChatbotSystemInstruction),
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
    final l10n = AppLocalizations.of(context)!;

    final queriesLeft = ref.read(_queriesLeftProvider);
    if (queriesLeft <= 0) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(l10n.chatbotLimitReached)));
      return;
    }

    final messages = ref.read(_chatMessagesProvider.notifier);
    messages.state = [...messages.state, _ChatMsg(text: text, isUser: true)];
    _controller.clear();
    _scrollToBottom();

    ref.read(_isLoadingProvider.notifier).state = true;

    try {
      String response;

      if (_isOfflineMode) {
        // Fallback or Local LLM Database
        final locale = Localizations.localeOf(context);
        final isTurkish = locale.languageCode == 'tr';
        final localResponse = IslamicChatbotData.getResponse(text, isTurkish);
        response = localResponse ?? l10n.chatbotLocalNoInfo;
      } else if (_chat != null) {
        // Use Gemini LLM
        final geminiResponse = await _chat!.sendMessage(Content.text(text));
        response = geminiResponse.text ?? l10n.chatbotErrorMsg;
      } else {
        response = l10n.chatbotCloudNotConfigured;
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
      msgs.state = [
        ...msgs.state,
        _ChatMsg(text: localResponse ?? l10n.chatbotErrorMsg, isUser: false),
      ];
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
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(l10n.assistant),
            const SizedBox(width: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              decoration: BoxDecoration(
                color: _isOfflineMode
                    ? AppColors.goldLight
                    : AppColors.emeraldSurface,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                _isOfflineMode
                    ? l10n.chatbotLocalAiLabel
                    : l10n.chatbotCloudAiLabel,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w900,
                  color: _isOfflineMode ? AppColors.gold : AppColors.emerald,
                ),
              ),
            ),
          ],
        ),
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.tune_rounded),
            onSelected: (val) {
              if (val == 'cloud') setState(() => _isOfflineMode = false);
              if (val == 'local') _showLocalAiDownloadDialog();
            },
            itemBuilder: (ctx) => [
              PopupMenuItem(
                value: 'cloud',
                child: Text(l10n.chatbotUseCloudAi),
              ),
              PopupMenuItem(
                value: 'local',
                child: Text(l10n.chatbotDownloadLocalAi),
              ),
            ],
          ),
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
                const Icon(
                  Icons.bolt_rounded,
                  color: AppColors.emerald,
                  size: 16,
                ),
                const SizedBox(width: 4),
                Text(
                  l10n.chatbotQueriesLeft('$queriesLeft'),
                  style: const TextStyle(
                    fontWeight: FontWeight.w800,
                    color: AppColors.emerald,
                    fontSize: 12,
                  ),
                ),
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
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.05),
                  blurRadius: 10,
                  offset: const Offset(0, -2),
                ),
              ],
            ),
            child: SafeArea(
              top: false,
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                        hintText: AppLocalizations.of(context)!.chatbotHint,
                        hintStyle: TextStyle(
                          color: Theme.of(
                            context,
                          ).colorScheme.onSurface.withValues(alpha: 0.3),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: isDark
                            ? AppColors.darkBg
                            : AppColors.emeraldSurface,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
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
                          ? const SizedBox(
                              width: 20,
                              height: 20,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                color: Colors.white,
                              ),
                            )
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
            SizedBox(
              width: 16,
              height: 16,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: AppColors.emerald.withValues(alpha: 0.6),
              ),
            ),
            const SizedBox(width: 10),
            Text(
              AppLocalizations.of(context)!.chatbotThinking,
              style: TextStyle(
                color: Theme.of(
                  context,
                ).colorScheme.onSurface.withValues(alpha: 0.5),
                fontStyle: FontStyle.italic,
                fontSize: 13,
              ),
            ),
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
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.8,
        ),
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
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.06),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: SelectableText(
          msg.text == '__GREETING__'
              ? AppLocalizations.of(context)!.chatbotGreeting
              : msg.text,
          style: TextStyle(
            color: msg.isUser
                ? Colors.white
                : Theme.of(context).colorScheme.onSurface,
            fontSize: 14,
            height: 1.5,
          ),
        ),
      ),
    );
  }

  void _showLocalAiDownloadDialog() {
    final l10n = AppLocalizations.of(context)!;
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(
          l10n.offlineMode,
          style: const TextStyle(fontWeight: FontWeight.w900),
        ),
        content: Text(l10n.chatbotOfflinePrompt),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text(l10n.cancel),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.emerald,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(ctx);
              setState(() => _isOfflineMode = true);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(l10n.chatbotOfflineSwitched)),
              );
            },
            child: Text(l10n.chatbotOfflineDownloadLabel),
          ),
        ],
      ),
    );
  }
}

class _ChatMsg {
  final String text;
  final bool isUser;
  const _ChatMsg({required this.text, required this.isUser});
}
