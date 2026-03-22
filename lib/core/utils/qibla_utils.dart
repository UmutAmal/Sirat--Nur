import 'dart:math';

class QiblaUtils {
  static const double kaabaLat = 21.422487;
  static const double kaabaLng = 39.826206;

  /// Calculates the Qibla bearing from true north in degrees
  static double calculateQiblaDirection(double latitude, double longitude) {
    final lat1 = latitude * (pi / 180.0);
    final lon1 = longitude * (pi / 180.0);
    final lat2 = kaabaLat * (pi / 180.0);
    final lon2 = kaabaLng * (pi / 180.0);

    final dLon = lon2 - lon1;

    final y = sin(dLon) * cos(lat2);
    final x = cos(lat1) * sin(lat2) - sin(lat1) * cos(lat2) * cos(dLon);

    var qibla = atan2(y, x) * (180.0 / pi);
    
    // Normalize to 0-360
    if (qibla < 0) {
      qibla += 360.0;
    }

    return qibla;
  }
}

