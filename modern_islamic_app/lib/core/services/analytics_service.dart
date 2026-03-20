import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:math';

class AnalyticsService {
  /// Mock data for spiritual growth visualization
  /// In Phase 5, this will pull from Isar prayer log history
  Future<Map<String, double>> getSpiderChartData() async {
    // Return scores for: Consistency, Punctuality, Dhikr, Knowledge, Charity
    return {
      'Consistency': 0.85,
      'Punctuality': 0.72,
      'Dhikr': 0.90,
      'Knowledge': 0.65,
      'Charity': 0.40,
    };
  }

  Future<List<List<int>>> getHeatmapData() async {
    // Mock 7x5 weekly heatmap
    final Random random = Random();
    return List.generate(7, (_) => List.generate(5, (_) => random.nextInt(5)));
  }

  Future<String> getGrowthInsight() async {
    return "Your Dhikr consistency is exceptional this week! Consider focusing on Al-Baqarah's last verses as part of your nightly routine to boost 'Knowledge' scores.";
  }

  Future<double> getFatigueIndicator() async {
    // Lower score implies burnout risk
    return 0.78;
  }
}

final analyticsServiceProvider = Provider((ref) => AnalyticsService());
