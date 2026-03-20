import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sirat_i_nur/core/services/analytics_service.dart';
import 'package:sirat_i_nur/core/utils/tr_en.dart';
import 'package:sirat_i_nur/presentation/widgets/premium_card.dart';
import 'dart:math' as math;

class AnalyticsDashboardPage extends ConsumerWidget {
  const AnalyticsDashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final analytics = ref.watch(analyticsServiceProvider);

    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            expandedHeight: 150,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                'DIVINE ANALYTICS',
                style: TextStyle(
                  color: const Color(0xFFFFD700),
                  fontFamily: 'Outfit',
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3,
                ),
              ),
              background: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [const Color(0xFFFFD700).withValues(alpha: 0.1), Colors.black],
                  ),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                _buildSpiderChartCard(context, analytics),
                const SizedBox(height: 24),
                _buildHeatmapCard(context, analytics),
                const SizedBox(height: 24),
                _buildInsightCard(context, analytics),
                const SizedBox(height: 100),
              ]),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSpiderChartCard(BuildContext context, AnalyticsService service) {
    return PremiumCard(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            trEn(context, tr: 'Ruhani Denge', en: 'Spiritual Equilibrium'),
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 20),
          FutureBuilder<Map<String, double>>(
            future: service.getSpiderChartData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }
              if (snapshot.hasError) {
                return Text(
                  trEn(context, tr: 'Analitik yüklenemedi.', en: 'Failed to load analytics.'),
                  style: const TextStyle(color: Colors.redAccent),
                );
              }
              final data = snapshot.data;
              if (data == null || data.isEmpty) {
                return Text(
                  trEn(context, tr: 'Henüz veri yok.', en: 'No data yet.'),
                  style: const TextStyle(color: Colors.white54),
                );
              }
              return SizedBox(
                height: 250,
                child: CustomPaint(
                  size: const Size(double.infinity, 250),
                  painter: _SpiderChartPainter(data),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildHeatmapCard(BuildContext context, AnalyticsService service) {
    return PremiumCard(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            trEn(context, tr: 'İstikrar Haritası', en: 'Consistency Heatmap'),
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 20),
          FutureBuilder<List<List<int>>>(
            future: service.getHeatmapData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const SizedBox(
                  height: 100,
                  child: Center(child: CircularProgressIndicator()),
                );
              }
              if (snapshot.hasError) {
                return Text(
                  trEn(context, tr: 'Isı haritası yüklenemedi.', en: 'Failed to load heatmap.'),
                  style: const TextStyle(color: Colors.redAccent),
                );
              }
              final data = snapshot.data;
              if (data == null || data.isEmpty) {
                return Text(
                  trEn(context, tr: 'Henüz veri yok.', en: 'No data yet.'),
                  style: const TextStyle(color: Colors.white54),
                );
              }
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: data.map((row) {
                  return Column(
                    children: row.map((val) {
                      return Container(
                        width: 40,
                        height: 40,
                        margin: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFD700).withValues(alpha: val / 5.0),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.white10),
                        ),
                      );
                    }).toList(),
                  );
                }).toList(),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildInsightCard(BuildContext context, AnalyticsService service) {
    return PremiumCard(
      padding: const EdgeInsets.all(24),
      child: Row(
        children: [
          const Icon(Icons.psychology, color: Color(0xFFFFD700), size: 40),
          const SizedBox(width: 20),
          Expanded(
            child: FutureBuilder<String>(
              future: service.getGrowthInsight(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Text(
                    '...',
                    style: TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                      color: Colors.white38,
                    ),
                  );
                }
                if (snapshot.hasError) {
                  return Text(
                    trEn(context, tr: 'Öneri alınamadı.', en: 'Could not load insight.'),
                    style: const TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                      color: Colors.redAccent,
                    ),
                  );
                }
                return Text(
                  snapshot.data ?? '...',
                  style: const TextStyle(
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                    color: Colors.white70,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _SpiderChartPainter extends CustomPainter {
  final Map<String, double> data;
  _SpiderChartPainter(this.data);

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = math.min(size.width, size.height) / 2;
    final keys = data.keys.toList();
    final angleStep = 2 * math.pi / keys.length;

    final axisPaint = Paint()..color = Colors.white24..style = PaintingStyle.stroke..strokeWidth = 1;
    final dataPaint = Paint()
      ..color = const Color(0xFFFFD700).withValues(alpha: 0.5)
      ..style = PaintingStyle.fill;
    final outlinePaint = Paint()..color = const Color(0xFFFFD700)..style = PaintingStyle.stroke..strokeWidth = 2;

    // Draw axis and concentric circles
    for (int i = 1; i <= 3; i++) {
       canvas.drawCircle(center, radius * i / 3, axisPaint);
    }

    final dataPath = Path();
    for (int i = 0; i < keys.length; i++) {
       final angle = i * angleStep - math.pi / 2;
       final val = data[keys[i]]!;
       final point = Offset(center.dx + radius * val * math.cos(angle), center.dy + radius * val * math.sin(angle));
       
       if (i == 0) {
         dataPath.moveTo(point.dx, point.dy);
       } else {
         dataPath.lineTo(point.dx, point.dy);
       }

       // Labels
       final labelOffset = Offset(center.dx + (radius + 20) * math.cos(angle), center.dy + (radius + 20) * math.sin(angle));
       final textPainter = TextPainter(
         text: TextSpan(text: keys[i], style: const TextStyle(color: Colors.white70, fontSize: 10)),
         textDirection: TextDirection.ltr,
       )..layout();
       textPainter.paint(canvas, Offset(labelOffset.dx - textPainter.width / 2, labelOffset.dy - textPainter.height / 2));
    }
    dataPath.close();
    canvas.drawPath(dataPath, dataPaint);
    canvas.drawPath(dataPath, outlinePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
