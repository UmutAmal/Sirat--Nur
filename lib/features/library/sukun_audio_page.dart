import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sirat_i_nur/core/services/audio_sovereignty_service.dart';
import 'package:sirat_i_nur/core/widgets/premium_card.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

class SukunAudioPage extends ConsumerStatefulWidget {
  const SukunAudioPage({super.key});

  @override
  ConsumerState<SukunAudioPage> createState() => _SukunAudioPageState();
}

class _SukunAudioPageState extends ConsumerState<SukunAudioPage> {
  String? _selectedSound;
  late double _quranVolume;
  late double _natureVolume;

  @override
  void initState() {
    super.initState();
    final audio = ref.read(audioSovereigntyServiceProvider);
    _quranVolume = audio.quranVolume;
    _natureVolume = audio.natureVolume;
  }

  @override
  Widget build(BuildContext context) {
    final audio = ref.watch(audioSovereigntyServiceProvider);
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment.center,
                  radius: 1.5,
                  colors: [
                    const Color(0xFF1A237E).withValues(alpha: 0.2),
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
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 4,
                    ),
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.all(20),
                sliver: SliverList(
                  delegate: SliverChildListDelegate([
                    _buildMixerSection(context, audio, l10n),
                    const SizedBox(height: 30),
                    _buildSoundGrid(context, audio, l10n),
                  ]),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMixerSection(
    BuildContext context,
    AudioSovereigntyService service,
    AppLocalizations l10n,
  ) {
    return PremiumCard(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          const Text(
            'DIVINE HARMONY MIXER',
            style: TextStyle(
              color: Color(0xFFFFD700),
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          _buildSlider(
            label: 'Qur\'an',
            value: _quranVolume,
            onChanged: (value) {
              setState(() => _quranVolume = value);
              service.setVolumes(quran: value);
            },
          ),
          const SizedBox(height: 10),
          _buildSlider(
            label: l10n.sukunNatureLabel,
            value: _natureVolume,
            onChanged: (value) {
              setState(() => _natureVolume = value);
              service.setVolumes(nature: value);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSlider({
    required String label,
    required double value,
    required ValueChanged<double> onChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(color: Colors.white70, fontSize: 14)),
        Slider(
          value: value.clamp(0.0, 1.0),
          onChanged: onChanged,
          activeColor: const Color(0xFFFFD700),
          inactiveColor: Colors.white12,
        ),
      ],
    );
  }


  Widget _buildSoundGrid(
    BuildContext context,
    AudioSovereigntyService service,
    AppLocalizations l10n,
  ) {
    final sounds = [
      {'name': 'Rain of Mercy', 'icon': Icons.water_drop, 'type': 'rain'},
      {'name': 'Garden of Peace', 'icon': Icons.park, 'type': 'forest'},
      {'name': 'Midnight Calm', 'icon': Icons.nightlight_round, 'type': 'night'},
      {'name': 'Ocean Tawheed', 'icon': Icons.waves, 'type': 'ocean'},
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
        final name = sounds[index]['name']! as String;
        final icon = sounds[index]['icon']! as IconData;
        final type = sounds[index]['type']! as String;
        final isSelected = _selectedSound == type;

        return PremiumCard(
          onTap: () async {
            final played = await service.playSukun(type);
            if (!context.mounted) return;

            if (!played) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  duration: const Duration(milliseconds: 900),
                  content: Text(l10n.error),
                ),
              );
              return;
            }

            setState(() => _selectedSound = type);
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: isSelected ? Colors.white : const Color(0xFFFFD700),
                size: 32,
              ),
              const SizedBox(height: 12),
              Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: isSelected ? FontWeight.w900 : FontWeight.bold,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
