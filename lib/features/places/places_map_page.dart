import 'package:flutter/material.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:sirat_i_nur/core/widgets/premium_card.dart';

class PlacesMapPage extends StatelessWidget {
  const PlacesMapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Nearby Islamic Places')),
      body: Column(
        children: [
          // Map placeholder
          Container(
            height: 300,
            width: double.infinity,
            color: Theme.of(context).brightness == Brightness.dark ? AppColors.darkCard : Colors.grey.shade200,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.map_rounded, size: 64, color: AppColors.emerald.withValues(alpha: 0.5)),
                  const SizedBox(height: 12),
                  Text('Map View', style: TextStyle(fontWeight: FontWeight.w900,
                    color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5))),
                  const SizedBox(height: 4),
                  Text('Requires Google Maps API key', style: TextStyle(fontSize: 12,
                    color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.3))),
                ],
              ),
            ),
          ),
          // Category tabs
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                _categoryChip(context, 'Mosques', Icons.mosque_rounded, true),
                const SizedBox(width: 8),
                _categoryChip(context, 'Halal Food', Icons.restaurant_rounded, false),
                const SizedBox(width: 8),
                _categoryChip(context, 'Schools', Icons.school_rounded, false),
              ],
            ),
          ),
          // Place list
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: _samplePlaces.asMap().entries.map((e) {
                final place = e.value;
                return AnimatedPremiumCard(
                  animationDelay: e.key * 80,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: AppColors.emeraldSurface,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(place.icon, color: AppColors.emerald),
                      ),
                      const SizedBox(width: 12),
                      Expanded(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(place.name, style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 14)),
                          Text(place.distance, style: TextStyle(fontSize: 12,
                            color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5))),
                        ],
                      )),
                      Icon(Icons.directions_rounded, color: AppColors.emerald),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _categoryChip(BuildContext context, String label, IconData icon, bool selected) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: selected ? AppColors.emerald : AppColors.emeraldSurface,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 16, color: selected ? Colors.white : AppColors.emerald),
          const SizedBox(width: 6),
          Text(label, style: TextStyle(
            fontWeight: FontWeight.w800, fontSize: 12,
            color: selected ? Colors.white : AppColors.emerald)),
        ],
      ),
    );
  }

  static const _samplePlaces = [
    _Place('Central Mosque', '0.5 km', Icons.mosque_rounded),
    _Place('Grand Islamic Center', '1.2 km', Icons.mosque_rounded),
    _Place('Al-Noor Masjid', '2.1 km', Icons.mosque_rounded),
    _Place('Sultan Ahmed Mosque', '3.4 km', Icons.mosque_rounded),
  ];
}

class _Place {
  final String name, distance;
  final IconData icon;
  const _Place(this.name, this.distance, this.icon);
}
