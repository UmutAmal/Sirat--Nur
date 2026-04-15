import 'dart:async';
import 'package:flutter_compass/flutter_compass.dart';
import 'package:geolocator/geolocator.dart';
import 'package:sirat_i_nur/core/utils/astronomical_math_util.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final qiblaSensorProvider = StreamProvider<QiblaOrientation>((ref) {
  return QiblaSensorBridge().orientationStream;
});

class QiblaOrientation {
  final double trueHeading;
  final double magneticHeading;
  final double declination;
  final double accuracy;

  QiblaOrientation({
    required this.trueHeading,
    required this.magneticHeading,
    required this.declination,
    required this.accuracy,
  });
}

class QiblaSensorUnavailableException implements Exception {
  const QiblaSensorUnavailableException();

  @override
  String toString() => 'qibla_sensor_unavailable';
}

class QiblaSensorBridge {
  static final QiblaSensorBridge _instance = QiblaSensorBridge._internal();
  factory QiblaSensorBridge() => _instance;
  QiblaSensorBridge._internal();

  double _lastFilteredHeading = 0.0;
  final double _lastVariance = 1.0;

  Stream<QiblaOrientation> get orientationStream async* {
    final pos =
        await Geolocator.getLastKnownPosition() ??
        await Geolocator.getCurrentPosition(
          locationSettings: const LocationSettings(
            accuracy: LocationAccuracy.low,
          ),
        );

    final declination = AstronomicalMathUtil.calculateMagneticDeclination(
      pos.latitude,
      pos.longitude,
      pos.altitude / 1000,
      DateTime.now().year.toDouble() + (DateTime.now().dayOfYear / 365),
    );

    final events = FlutterCompass.events;
    if (events == null) {
      throw const QiblaSensorUnavailableException();
    }

    await for (final event in events) {
      if (event.heading == null) continue;

      _lastFilteredHeading = AstronomicalMathUtil.ekfUpdate(
        event.heading!,
        _lastFilteredHeading,
        _lastVariance,
      );

      final trueHeading = (_lastFilteredHeading + declination) % 360;

      yield QiblaOrientation(
        trueHeading: trueHeading,
        magneticHeading: event.heading!,
        declination: declination,
        accuracy: event.accuracy ?? 0.0,
      );
    }
  }
}

extension DateTimeExt on DateTime {
  int get dayOfYear {
    return difference(DateTime(year, 1, 1)).inDays + 1;
  }
}
