import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:sirat_i_nur/core/constants/app_constants.dart';
import 'package:sirat_i_nur/features/settings/settings_provider.dart';

class LocationSelectionPage extends ConsumerStatefulWidget {
  const LocationSelectionPage({super.key});
  @override
  ConsumerState<LocationSelectionPage> createState() => _LocationSelectionPageState();
}

class _LocationSelectionPageState extends ConsumerState<LocationSelectionPage> {
  String _query = '';
  final _searchController = TextEditingController();
  String _selectedCountry = 'All';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  List<CityData> get _filteredCities {
    var cities = globalCities.toList();
    // Filter by country
    if (_selectedCountry != 'All') {
      cities = cities.where((c) => c.country == _selectedCountry).toList();
    }
    // Filter by search query
    if (_query.isNotEmpty) {
      cities = cities.where((c) =>
        c.name.toLowerCase().contains(_query.toLowerCase()) ||
        c.country.toLowerCase().contains(_query.toLowerCase()) ||
        c.countryCode.toLowerCase().contains(_query.toLowerCase())
      ).toList();
    }
    return cities;
  }

  List<String> get _uniqueCountries {
    final countries = globalCities.map((c) => c.country).toSet().toList();
    countries.sort();
    return ['All', ...countries];
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final cities = _filteredCities;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Location'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () => context.pop(),
        ),
      ),
      body: Column(
        children: [
          // GPS detect button
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.my_location_rounded, color: Colors.white),
                label: const Text('Detect My Location (GPS)', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.emerald,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                ),
                onPressed: () {
                  // Let's simulate GPS detection — in real app, use geolocator
                  ref.read(settingsProvider.notifier).updateLocation(41.0082, 28.9784, 'Istanbul (GPS)');
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Location detected: Istanbul')),
                  );
                  context.pop();
                },
              ),
            ),
          ),
          // Search
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: TextField(
              controller: _searchController,
              onChanged: (v) => setState(() => _query = v),
              decoration: InputDecoration(
                hintText: 'Search city or country...',
                prefixIcon: const Icon(Icons.search_rounded),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(16), borderSide: BorderSide.none),
                filled: true,
                fillColor: isDark ? AppColors.darkSurface : AppColors.emeraldSurface,
              ),
            ),
          ),
          // Country filter chips
          SizedBox(
            height: 42,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              itemCount: _uniqueCountries.length,
              itemBuilder: (context, i) {
                final country = _uniqueCountries[i];
                final isSelected = _selectedCountry == country;
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: ChoiceChip(
                    label: Text(country, style: TextStyle(
                      fontSize: 12, fontWeight: FontWeight.w700,
                      color: isSelected ? Colors.white : null)),
                    selected: isSelected,
                    selectedColor: AppColors.emerald,
                    onSelected: (_) => setState(() => _selectedCountry = country),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 8),
          // Cities count
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text('${cities.length} cities',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700,
                    color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.4))),
              ],
            ),
          ),
          const SizedBox(height: 4),
          // City list
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: cities.length,
              itemBuilder: (context, index) {
                final city = cities[index];
                return Container(
                  margin: const EdgeInsets.only(bottom: 6),
                  decoration: BoxDecoration(
                    color: isDark ? AppColors.darkCard : AppColors.cardLight,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: ListTile(
                    dense: true,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
                    leading: Container(
                      width: 36, height: 36,
                      decoration: BoxDecoration(
                        color: AppColors.emeraldSurface,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Text(city.countryCode,
                        style: const TextStyle(fontWeight: FontWeight.w900, color: AppColors.emerald, fontSize: 11))),
                    ),
                    title: Text(city.name, style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 14)),
                    subtitle: Text('${city.country} • ${city.lat.toStringAsFixed(2)}°, ${city.lng.toStringAsFixed(2)}°',
                      style: TextStyle(fontSize: 11, color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.5))),
                    trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 14),
                    onTap: () {
                      ref.read(settingsProvider.notifier).updateLocation(city.lat, city.lng, '${city.name}, ${city.country}');
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Location set: ${city.name}, ${city.country}')),
                      );
                      context.pop();
                    },
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
