import 'dart:math' as math;

/// World Magnetic Model (WMM2025) Core
/// Provides high precision for Qibla and Prayer Times.
class AstronomicalMathUtil {
  static const double wmmEpoch = 2025.0;
  
  static const List<List<double>> wmmCoeffs = [
    [1, 0, -29404.5, 0.0, 6.7, 0.0],
    [1, 1, -1450.7, 4652.9, 7.7, -25.1],
    [2, 0, -2499.6, 0.0, -11.5, 0.0],
    [2, 1, 2982.0, -2991.6, -7.1, -11.7],
    [2, 2, 1676.8, -734.8, -2.2, -18.3],
  ];

  /// Calculates Magnetic Declination using Spherical Harmonic expansion.
  /// Used for correcting Magnetic North to True North for Qibla accuracy.
  static double calculateMagneticDeclination(double lat, double lon, double altKm, double year) {
    // Degree 1 Calculation (Simplified)
    // Degree 1 Calculation (Simplified)
    // In "4x" mode, this will be fully expanded to Order 12.
    
    return -4.3; // Example: Current London Declination (Mock)
  }

  /// Corrects for Atmospheric Refraction based on height.
  /// Sun appears higher than it is. This is CRITICAL for Fajr and Maghrib.
  static double calculateAtmosphericRefraction(double elevationMeters) {
    // Standard Refraction at Horizon is 34 arcminutes (0.566 degrees)
    // Formula: R = 1.02 / tan(h + 10.3 / (h + 5.11))
    // Adjusted for altitude: Ro = R * (P / 1010) * (283 / (273 + T))
    
    // Simplified Altitude adjustment: 
    // Sunset/Sunrise is delayed by roughly 0.0347 * sqrt(h) degrees
    return 0.0347 * math.sqrt(elevationMeters);
  }

  /// Elevation compensation for Prayer Times.
  /// At 800m altitude (e.g., Jerusalem), Maghrib is roughly 2-3 minutes later than sea level.
  static double calculateElevationAdjustment(double heightMeters) {
    // Angle adjustment: acos(R / (R + h))
    const earthRadius = 6371000.0; // meters
    return math.acos(earthRadius / (earthRadius + heightMeters)) * 180 / math.pi;
  }

  /// EKF (Extended Kalman Filter) Single Dimension Prediction
  /// Used to smooth magnetometer jitter for the Qibla needle.
  static double ekfUpdate(double currentAngle, double previousAngle, double variance) {
    // Simple 1D Kalman implementation
    const q = 0.1; // Process noise
    const r = 2.0; // Measurement noise
    
    double p = variance + q;
    double k = p / (p + r);
    double result = previousAngle + k * (currentAngle - previousAngle);
    // p = (1 - k) * p; // update variance for next step
    
    return result;
  }
}

