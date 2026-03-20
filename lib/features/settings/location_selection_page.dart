import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:sirat_i_nur/core/widgets/premium_card.dart';
import 'package:sirat_i_nur/features/settings/settings_provider.dart';

class LocationSelectionPage extends ConsumerStatefulWidget {
  const LocationSelectionPage({super.key});
  @override
  ConsumerState<LocationSelectionPage> createState() => _LocationSelectionPageState();
}

class _LocationSelectionPageState extends ConsumerState<LocationSelectionPage> {
  final _searchController = TextEditingController();
  String _query = '';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final settings = ref.watch(settingsProvider);
    final filtered = _query.isEmpty
      ? _cities
      : _cities.where((c) => c.name.toLowerCase().contains(_query.toLowerCase()) ||
          c.country.toLowerCase().contains(_query.toLowerCase())).toList();

    return Scaffold(
      appBar: AppBar(title: const Text('Select Location')),
      body: Column(
        children: [
          // Current location
          Padding(
            padding: const EdgeInsets.all(16),
            child: PremiumCard(
              margin: EdgeInsets.zero,
              onTap: () {
                // GPS detection would go here
                ref.read(settingsProvider.notifier).updateLocation(41.0082, 28.9784, 'Istanbul, Turkey (GPS)');
                Navigator.pop(context);
              },
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: AppColors.emeraldSurface,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(Icons.my_location_rounded, color: AppColors.emerald),
                  ),
                  const SizedBox(width: 12),
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Detect My Location', style: TextStyle(fontWeight: FontWeight.w900)),
                      Text(settings.locationName ?? 'Not set', style: TextStyle(fontSize: 12,
                        color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5))),
                    ],
                  )),
                  const Icon(Icons.chevron_right_rounded),
                ],
              ),
            ),
          ),
          // Search
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              controller: _searchController,
              onChanged: (v) => setState(() => _query = v),
              decoration: InputDecoration(
                hintText: 'Search city or country...',
                prefixIcon: const Icon(Icons.search_rounded),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(16), borderSide: BorderSide.none),
                filled: true,
              ),
            ),
          ),
          const SizedBox(height: 8),
          // Cities list
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: filtered.length,
              itemBuilder: (context, i) {
                final city = filtered[i];
                return ListTile(
                  contentPadding: const EdgeInsets.symmetric(vertical: 4),
                  leading: Container(
                    width: 40, height: 40,
                    decoration: BoxDecoration(
                      color: AppColors.emeraldSurface,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(child: Icon(Icons.location_city_rounded, color: AppColors.emerald, size: 20)),
                  ),
                  title: Text(city.name, style: const TextStyle(fontWeight: FontWeight.w800)),
                  subtitle: Text(city.country, style: TextStyle(fontSize: 12,
                    color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5))),
                  onTap: () {
                    ref.read(settingsProvider.notifier).updateLocation(city.lat, city.lng, '${city.name}, ${city.country}');
                    Navigator.pop(context);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  static const _cities = [
    _City('Istanbul', 'Turkey', 41.0082, 28.9784),
    _City('Ankara', 'Turkey', 39.9334, 32.8597),
    _City('Izmir', 'Turkey', 38.4192, 27.1287),
    _City('Makkah', 'Saudi Arabia', 21.3891, 39.8579),
    _City('Madinah', 'Saudi Arabia', 24.5247, 39.5692),
    _City('Riyadh', 'Saudi Arabia', 24.7136, 46.6753),
    _City('Cairo', 'Egypt', 30.0444, 31.2357),
    _City('London', 'United Kingdom', 51.5074, -0.1278),
    _City('New York', 'United States', 40.7128, -74.0060),
    _City('Berlin', 'Germany', 52.5200, 13.4050),
    _City('Paris', 'France', 48.8566, 2.3522),
    _City('Jakarta', 'Indonesia', -6.2088, 106.8456),
    _City('Kuala Lumpur', 'Malaysia', 3.1390, 101.6869),
    _City('Dubai', 'UAE', 25.2048, 55.2708),
    _City('Islamabad', 'Pakistan', 33.6844, 73.0479),
    _City('Dhaka', 'Bangladesh', 23.8103, 90.4125),
    _City('Lagos', 'Nigeria', 6.5244, 3.3792),
    _City('Casablanca', 'Morocco', 33.5731, -7.5898),
    _City('Tehran', 'Iran', 35.6892, 51.3890),
    _City('Baghdad', 'Iraq', 33.3152, 44.3661),
    _City('Amman', 'Jordan', 31.9454, 35.9284),
    _City('Damascus', 'Syria', 33.5138, 36.2765),
    _City('Tashkent', 'Uzbekistan', 41.2995, 69.2401),
    _City('Sarajevo', 'Bosnia', 43.8563, 18.4131),
    _City('Toronto', 'Canada', 43.6532, -79.3832),
    _City('Sydney', 'Australia', -33.8688, 151.2093),
    _City('Tokyo', 'Japan', 35.6762, 139.6503),
    _City('Moscow', 'Russia', 55.7558, 37.6173),
    _City('Cape Town', 'South Africa', -33.9249, 18.4241),
    _City('São Paulo', 'Brazil', -23.5505, -46.6333),
  ];
}

class _City {
  final String name, country;
  final double lat, lng;
  const _City(this.name, this.country, this.lat, this.lng);
}
