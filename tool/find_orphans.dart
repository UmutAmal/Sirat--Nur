import 'dart:io';

void main() {
  final libDir = Directory('lib');
  final allDartFiles = libDir
      .listSync(recursive: true)
      .whereType<File>()
      .where((f) => f.path.endsWith('.dart'))
      .toList();

  final importedFiles = <String>{};

  for (final file in allDartFiles) {
    if (file.path.endsWith('.g.dart') || file.path.endsWith('.freezed.dart')) continue;
    final content = file.readAsStringSync();
    for (final other in allDartFiles) {
      if (other.path == file.path) continue;
      final basename = other.uri.pathSegments.last;
      
      // Look for any import of this file's basename
      if (content.contains(basename)) {
        importedFiles.add(other.path);
      }
    }
  }

  print('Orphan files:');
  for (final file in allDartFiles) {
    if (file.path.endsWith('main.dart')) continue;
    if (file.path.endsWith('.g.dart') || file.path.endsWith('.freezed.dart')) continue;
    if (file.path.contains('app_localizations')) continue; // generated
    
    if (!importedFiles.contains(file.path)) {
      print(file.path);
    }
  }
}
