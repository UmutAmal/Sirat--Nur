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
    final soundOptions = _buildSoundOptions(l10n);
    final availableSoundTypes = audio.configuredSukunTypes
        .where(expectedSukunSoundTypes.contains)
        .toSet();

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
                  title: Text(
                    l10n.sukunAudioTitle,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
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
                    _buildSoundGrid(
                      context,
                      audio,
                      l10n,
                      soundOptions,
                      availableSoundTypes,
                    ),
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
          Text(
            l10n.sukunMixerSubtitle,
            style: const TextStyle(
              color: Color(0xFFFFD700),
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          _buildSlider(
            label: l10n.quran,
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
    List<_SukunSoundOption> sounds,
    Set<String> availableSoundTypes,
  ) {
    if (availableSoundTypes.isEmpty) {
      return PremiumCard(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              l10n.sukunUnavailableTitle,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              l10n.sukunUnavailableBody,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 14,
                height: 1.4,
              ),
            ),
          ],
        ),
      );
    }

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
        final sound = sounds[index];
        final isSelected = _selectedSound == sound.type;
        final isAvailable = availableSoundTypes.contains(sound.type);

        return PremiumCard(
          onTap: !isAvailable
              ? null
              : () async {
                  final played = await service.playSukun(sound.type);
                  if (!context.mounted) return;

                  if (!played) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        duration: const Duration(milliseconds: 900),
                        content: Text(l10n.audioPlayFailed),
                      ),
                    );
                    return;
                  }

                  setState(() => _selectedSound = sound.type);
                },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                sound.icon,
                color: !isAvailable
                    ? Colors.white24
                    : isSelected
                    ? Colors.white
                    : const Color(0xFFFFD700),
                size: 32,
              ),
              const SizedBox(height: 12),
              Text(
                sound.name,
                style: TextStyle(
                  color: isAvailable ? Colors.white : Colors.white38,
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

  List<_SukunSoundOption> _buildSoundOptions(AppLocalizations l10n) {
    return [
      _SukunSoundOption(
        name: l10n.sukunRainOfMercy,
        icon: Icons.water_drop,
        type: 'rain',
      ),
      _SukunSoundOption(
        name: l10n.sukunGardenOfPeace,
        icon: Icons.park,
        type: 'forest',
      ),
      _SukunSoundOption(
        name: l10n.sukunMidnightCalm,
        icon: Icons.nightlight_round,
        type: 'night',
      ),
      _SukunSoundOption(
        name: l10n.sukunOceanTawheed,
        icon: Icons.waves,
        type: 'ocean',
      ),
    ];
  }
}

class _SukunSoundOption {
  final String name;
  final IconData icon;
  final String type;

  const _SukunSoundOption({
    required this.name,
    required this.icon,
    required this.type,
  });
}
