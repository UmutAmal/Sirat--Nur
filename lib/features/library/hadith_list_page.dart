import 'package:flutter/material.dart';
class HadithListPage extends StatelessWidget {
  final String collectionId;
  final String collectionName;
  const HadithListPage({super.key, required this.collectionId, required this.collectionName});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(collectionName)),
      body: Center(child: Text('Hadith Collection: $collectionId', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w900))),
    );
  }
}
