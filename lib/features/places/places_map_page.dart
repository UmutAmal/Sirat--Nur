import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
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
          Expanded(
            flex: 2,
            child: FlutterMap(
              options: MapOptions(
                initialCenter: const LatLng(41.0082, 28.9784), // Istanbul
                initialZoom: 13.0,
              ),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  userAgentPackageName: 'com.umutamal.sirat_i_nur',
                ),
                MarkerLayer(
                  markers: [
                    Marker(
                      point: const LatLng(41.0082, 28.9784),
                      width: 40,
                      height: 40,
                      child: const Icon(Icons.location_on, color: AppColors.emerald, size: 40),
                    ),
                    Marker(
                      point: const LatLng(41.0092, 28.9800),
                      width: 40,
                      height: 40,
                      child: const Icon(Icons.mosque_rounded, color: Colors.blue, size: 40),
                    ),
                  ],
                ),
              ],
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
            flex: 3,
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
                      const Icon(Icons.directions_rounded, color: AppColors.emerald),
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
