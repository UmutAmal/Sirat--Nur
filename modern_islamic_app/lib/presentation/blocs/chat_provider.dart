import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sirat_i_nur/core/services/semantic_rag_bridge.dart';
import 'package:sirat_i_nur/presentation/blocs/settings_provider.dart';

class Message {
  final String text;
  final bool isUser;
  final DateTime timestamp;

  Message({required this.text, required this.isUser, DateTime? timestamp})
      : timestamp = timestamp ?? DateTime.now();
}

class ChatState {
  final List<Message> messages;
  final bool isLoading;
  final double? downloadProgress;

  ChatState({
    required this.messages,
    this.isLoading = false,
    this.downloadProgress,
  });

  ChatState copyWith({
    List<Message>? messages,
    bool? isLoading,
    double? downloadProgress,
  }) {
    return ChatState(
      messages: messages ?? this.messages,
      isLoading: isLoading ?? this.isLoading,
      downloadProgress: downloadProgress ?? this.downloadProgress,
    );
  }
}

final chatProvider = StateNotifierProvider<ChatNotifier, ChatState>((ref) {
  final rag = ref.watch(semanticRagProvider);
  final lang = ref.watch(settingsProvider).languageCode ?? 'en';
  return ChatNotifier(rag, lang);
});

class ChatNotifier extends StateNotifier<ChatState> {
  final SemanticRagBridge _rag;
  final String _lang;

  ChatNotifier(this._rag, this._lang) : super(ChatState(messages: []));

  Future<void> sendMessage(String text) async {
    if (text.trim().isEmpty) return;

    final userMessage = Message(text: text, isUser: true);
    state = state.copyWith(
      messages: [...state.messages, userMessage],
      isLoading: true,
    );

    try {
      final response = await _rag.ask(text, _lang);
      final aiMessage = Message(text: response, isUser: false);
      state = state.copyWith(
        messages: [...state.messages, aiMessage],
        isLoading: false,
      );
    } catch (e) {
      final errorMessage = Message(
        text: _lang == 'tr' 
            ? "Üzgünüm, bir hata oluştu: $e" 
            : "Sorry, an error occurred: $e", 
        isUser: false
      );
      state = state.copyWith(
        messages: [...state.messages, errorMessage],
        isLoading: false,
      );
    }
  }

  void addSystemMessage(String text) {
     final msg = Message(text: text, isUser: false);
     state = state.copyWith(messages: [...state.messages, msg]);
  }
}
