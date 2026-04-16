import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  group('dependency hygiene', () {
    test('fl_chart is only declared when Dart sources import it', () {
      final declaresFlChart = _pubspecDeclaresDependency('fl_chart');
      final importsFlChart = _dartSourcesImportPackage('fl_chart');

      expect(
        declaresFlChart,
        importsFlChart,
        reason:
            'Keep fl_chart out of pubspec.yaml until a real chart feature imports it.',
      );
    });
  });
}

bool _pubspecDeclaresDependency(String packageName) {
  final pubspec = File('pubspec.yaml').readAsStringSync();
  final dependencyPattern = RegExp(
    r'^\s{2}' + RegExp.escape(packageName) + r':\s',
    multiLine: true,
  );
  return dependencyPattern.hasMatch(pubspec);
}

bool _dartSourcesImportPackage(String packageName) {
  const sourceRoots = ['lib', 'test', 'tool'];
  final importNeedle = "package:$packageName/";

  for (final root in sourceRoots) {
    final directory = Directory(root);
    if (!directory.existsSync()) continue;

    final dartFiles = directory
        .listSync(recursive: true)
        .whereType<File>()
        .where((file) => file.path.endsWith('.dart'));

    for (final file in dartFiles) {
      if (file.readAsStringSync().contains(importNeedle)) {
        return true;
      }
    }
  }

  return false;
}
