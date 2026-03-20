import 'package:flutter/material.dart';

class AppErrorPage extends StatelessWidget {
  final Exception? error;
  const AppErrorPage({super.key, this.error});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.error_outline_rounded, size: 80,
                color: Theme.of(context).colorScheme.error),
              const SizedBox(height: 24),
              Text('An error occurred',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w900)),
              const SizedBox(height: 12),
              Text(error?.toString() ?? 'Unknown error',
                textAlign: TextAlign.center,
                style: TextStyle(color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6))),
            ],
          ),
        ),
      ),
    );
  }
}
