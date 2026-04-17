import 'dart:io';

import 'package:crypto/crypto.dart';

const int minimumQuranAudioFileBytes = 1024;
const int _id3HeaderBytes = 10;
const int _id3FooterBytes = 10;
const int _mp3FrameHeaderBytes = 4;
const int _mp3FrameProbeBytes = 8192;
final RegExp _quranAudioSha256HexPattern = RegExp(r'^[0-9a-fA-F]{64}$');

String sha256HexForFile(File file) {
  return sha256.convert(file.readAsBytesSync()).toString();
}

bool isValidQuranAudioSha256Hex(String value) {
  return _quranAudioSha256HexPattern.hasMatch(value.trim());
}

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

List<int> readFileHeaderSync(File file, {int maxBytes = _mp3FrameProbeBytes}) {
  return _readFileBytesSync(file, start: 0, maxBytes: maxBytes);
}

List<int> _readFileBytesSync(
  File file, {
  required int start,
  required int maxBytes,
}) {
  if (!file.existsSync()) {
    return const [];
  }

  final fileLength = file.lengthSync();
  if (fileLength <= start || maxBytes <= 0) {
    return const [];
  }

  final remainingLength = fileLength - start;
  final headerLength = remainingLength < maxBytes ? remainingLength : maxBytes;
  final bytes = List<int>.filled(headerLength, 0);
  final handle = file.openSync();
  try {
    handle.setPositionSync(start);
    final read = handle.readIntoSync(bytes);
    return List<int>.unmodifiable(bytes.take(read));
  } finally {
    handle.closeSync();
  }
}

bool hasLikelyMp3Header(File file) {
  try {
    if (!file.existsSync() || file.lengthSync() < minimumQuranAudioFileBytes) {
      return false;
    }

    final header = readFileHeaderSync(file);
    if (_hasMp3FrameSequence(header)) {
      return true;
    }

    final audioStart = _id3AudioStartOffset(header);
    if (audioStart == null) {
      return false;
    }

    return _hasMp3FrameSequence(
      _readFileBytesSync(
        file,
        start: audioStart,
        maxBytes: _mp3FrameProbeBytes,
      ),
    );
  } catch (_) {
    return false;
  }
}

int? _id3AudioStartOffset(List<int> bytes) {
  if (bytes.length < _id3HeaderBytes ||
      bytes[0] != 0x49 ||
      bytes[1] != 0x44 ||
      bytes[2] != 0x33) {
    return null;
  }

  if (bytes.sublist(6, 10).any((byte) => (byte & 0x80) != 0)) {
    return null;
  }

  final tagSize =
      (bytes[6] << 21) | (bytes[7] << 14) | (bytes[8] << 7) | bytes[9];
  final hasFooter = (bytes[5] & 0x10) != 0;
  return _id3HeaderBytes + tagSize + (hasFooter ? _id3FooterBytes : 0);
}

bool _hasMp3FrameSequence(List<int> bytes) {
  for (var index = 0; index <= bytes.length - _mp3FrameHeaderBytes; index++) {
    final firstFrameLength = _mp3FrameLength(bytes, index);
    if (firstFrameLength == null) {
      continue;
    }

    final nextFrameOffset = index + firstFrameLength;
    if (nextFrameOffset > bytes.length - _mp3FrameHeaderBytes) {
      continue;
    }

    if (_mp3FrameLength(bytes, nextFrameOffset) != null) {
      return true;
    }
  }

  return false;
}

int? _mp3FrameLength(List<int> bytes, int offset) {
  if (offset > bytes.length - _mp3FrameHeaderBytes ||
      bytes[offset] != 0xFF ||
      (bytes[offset + 1] & 0xE0) != 0xE0) {
    return null;
  }

  final version = (bytes[offset + 1] >> 3) & 0x03;
  final layer = (bytes[offset + 1] >> 1) & 0x03;
  final bitrateIndex = (bytes[offset + 2] >> 4) & 0x0F;
  final sampleRateIndex = (bytes[offset + 2] >> 2) & 0x03;
  final padding = (bytes[offset + 2] >> 1) & 0x01;

  if (version == 0x01 ||
      layer == 0x00 ||
      bitrateIndex == 0x00 ||
      bitrateIndex == 0x0F ||
      sampleRateIndex == 0x03) {
    return null;
  }

  final bitrate = _mp3BitrateKbps(
    version: version,
    layer: layer,
    bitrateIndex: bitrateIndex,
  );
  final sampleRate = _mp3SampleRateHz(
    version: version,
    sampleRateIndex: sampleRateIndex,
  );
  if (bitrate == null || sampleRate == null) {
    return null;
  }

  if (layer == 0x03) {
    return (((12 * bitrate * 1000) ~/ sampleRate) + padding) * 4;
  }

  final coefficient = version == 0x03 || layer == 0x02 ? 144 : 72;
  return ((coefficient * bitrate * 1000) ~/ sampleRate) + padding;
}

int? _mp3BitrateKbps({
  required int version,
  required int layer,
  required int bitrateIndex,
}) {
  const mpeg1Layer1 = <int>[
    0,
    32,
    64,
    96,
    128,
    160,
    192,
    224,
    256,
    288,
    320,
    352,
    384,
    416,
    448,
  ];
  const mpeg1Layer2 = <int>[
    0,
    32,
    48,
    56,
    64,
    80,
    96,
    112,
    128,
    160,
    192,
    224,
    256,
    320,
    384,
  ];
  const mpeg1Layer3 = <int>[
    0,
    32,
    40,
    48,
    56,
    64,
    80,
    96,
    112,
    128,
    160,
    192,
    224,
    256,
    320,
  ];
  const mpeg2Layer1 = <int>[
    0,
    32,
    48,
    56,
    64,
    80,
    96,
    112,
    128,
    144,
    160,
    176,
    192,
    224,
    256,
  ];
  const mpeg2Layer23 = <int>[
    0,
    8,
    16,
    24,
    32,
    40,
    48,
    56,
    64,
    80,
    96,
    112,
    128,
    144,
    160,
  ];

  final table = switch ((version, layer)) {
    (0x03, 0x03) => mpeg1Layer1,
    (0x03, 0x02) => mpeg1Layer2,
    (0x03, 0x01) => mpeg1Layer3,
    (_, 0x03) => mpeg2Layer1,
    _ => mpeg2Layer23,
  };

  return table[bitrateIndex];
}

int? _mp3SampleRateHz({required int version, required int sampleRateIndex}) {
  const mpeg1 = <int>[44100, 48000, 32000];
  const mpeg2 = <int>[22050, 24000, 16000];
  const mpeg25 = <int>[11025, 12000, 8000];

  final table = switch (version) {
    0x03 => mpeg1,
    0x02 => mpeg2,
    0x00 => mpeg25,
    _ => null,
  };

  return table?[sampleRateIndex];
}
