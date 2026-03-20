import 'package:flutter/material.dart';
class PaywallPage extends StatelessWidget {
  const PaywallPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Align(alignment: Alignment.topLeft, child: Padding(
              padding: const EdgeInsets.all(8),
              child: IconButton(icon: const Icon(Icons.close_rounded, size: 28), onPressed: () => Navigator.pop(context)),
            )),
            Expanded(child: Center(child: Text('Sirat-i Nur Premium', style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w900)))),
          ],
        ),
      ),
    );
  }
}
