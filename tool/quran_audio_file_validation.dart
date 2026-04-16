import 'dart:io';

const int _mp3HeaderProbeBytes = 16;

bool hasMp3AudioSignature(List<int> bytes) {
  if (bytes.length >= 3 &&
      bytes[0] == 0x49 &&
      bytes[1] == 0x44 &&
      bytes[2] == 0x33) {
    return true;
  }

  for (var index = 0; index < bytes.length - 1; index++) {
    if (bytes[index] == 0xFF && (bytes[index + 1] & 0xE0) == 0xE0) {
      return true;
    }
  }

  return false;
}

List<int> readFileHeaderSync(File file, {int maxBytes = _mp3HeaderProbeBytes}) {
  if (!file.existsSync()) {
    return const [];
  }

  final fileLength = file.lengthSync();
  if (fileLength <= 0) {
    return const [];
  }

  final headerLength = fileLength < maxBytes ? fileLength : maxBytes;
  final bytes = List<int>.filled(headerLength, 0);
  final handle = file.openSync();
  try {
    final read = handle.readIntoSync(bytes);
    return List<int>.unmodifiable(bytes.take(read));
  } finally {
    handle.closeSync();
  }
}

bool hasLikelyMp3Header(File file) {
  try {
    return hasMp3AudioSignature(readFileHeaderSync(file));
  } catch (_) {
    return false;
  }
}
