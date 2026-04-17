import 'dart:io';

void main() {
  stderr.writeln(
    'tool/translate_arbs.dart is retired because it translated whole ARB files '
    'without the current placeholder, metadata, and debris safeguards. Use '
    'tool/translate_arb_keys.dart for reviewed key batches instead.',
  );
  exitCode = 64;
}
