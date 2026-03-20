import 'package:flutter/material.dart';
class SurahReadingPage extends StatelessWidget {
  final int surahNumber;
  final String surahName;
  const SurahReadingPage({super.key, required this.surahNumber, required this.surahName});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(surahName)),
      body: Center(child: Text('Surah $surahNumber - $surahName', style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w900))),
    );
  }
}
