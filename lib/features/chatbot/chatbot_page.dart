import 'package:flutter/material.dart';
class ChatbotPage extends StatelessWidget {
  const ChatbotPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Neural Assistant')),
      body: const Center(child: Text('AI Chatbot', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900))),
    );
  }
}
