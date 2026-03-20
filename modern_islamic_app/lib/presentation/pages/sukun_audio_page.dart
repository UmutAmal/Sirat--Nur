import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sirat_i_nur/core/services/audio_sovereignty_service.dart';
import 'package:sirat_i_nur/presentation/widgets/premium_card.dart';

class SukunAudioPage extends ConsumerWidget {
  const SukunAudioPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final audio = ref.watch(audioSovereigntyServiceProvider);

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Background Glow for "Sukun" (Peace)
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment.center,
                  radius: 1.5,
                  colors: [
                    const Color(0xFF1A237E).withValues(alpha: 0.2), // Deep Blue Peace
                    Colors.black,
                  ],
                ),
              ),
            ),
          ),

          CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.transparent,
                expandedHeight: 200,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: const Text(
                    'SUKUN SOUNDSCAPES',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, letterSpacing: 4),
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.all(20),
                sliver: SliverList(
                  delegate: SliverChildListDelegate([
                    _buildMixerSection(context, audio),
                    const SizedBox(height: 30),
                    _buildSoundGrid(context, audio),
                  ]),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMixerSection(BuildContext context, AudioSovereigntyService service) {
    return PremiumCard(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          const Text('DIVINE HARMONY MIXER', style: TextStyle(color: Color(0xFFFFD700), fontSize: 12, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          _buildSlider('Qur\'an', 0.8),
          const SizedBox(height: 10),
          _buildSlider('Sukun (Nature)', 0.4),
        ],
      ),
    );
  }

  Widget _buildSlider(String label, double value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(color: Colors.white70, fontSize: 14)),
        Slider(
          value: value,
          onChanged: (v) {},
          activeColor: const Color(0xFFFFD700),
          inactiveColor: Colors.white12,
        ),
      ],
    );
  }

  Widget _buildSoundGrid(BuildContext context, AudioSovereigntyService service) {
    final sounds = [
      {'name': 'Rain of Mercy', 'icon': Icons.water_drop},
      {'name': 'Garden of Peace', 'icon': Icons.park},
      {'name': 'Midnight Calm', 'icon': Icons.nightlight_round},
      {'name': 'Ocean Tawheed', 'icon': Icons.waves},
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 1.2,
      ),
      itemCount: sounds.length,
      itemBuilder: (context, index) {
        return PremiumCard(
          onTap: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(sounds[index]['icon'] as IconData, color: const Color(0xFFFFD700), size: 32),
              const SizedBox(height: 12),
              Text(sounds[index]['name'] as String, style: const TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold)),
            ],
          ),
        );
      },
    );
  }
}
