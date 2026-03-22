import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:latlong2/latlong.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:sirat_i_nur/core/widgets/premium_card.dart';
import 'package:sirat_i_nur/features/settings/settings_provider.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';
import 'package:url_launcher/url_launcher.dart';

enum _PlaceCategory { mosque, halalFood, education }

class PlacesMapPage extends ConsumerStatefulWidget {
  const PlacesMapPage({super.key});

  @override
  ConsumerState<PlacesMapPage> createState() => _PlacesMapPageState();
}

class _PlacesMapPageState extends ConsumerState<PlacesMapPage> {
  final MapController _mapController = MapController();
  final TextEditingController _searchController = TextEditingController();
  final Distance _distance = const Distance();

  _PlaceCategory _selectedCategory = _PlaceCategory.mosque;
  String _query = '';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  LatLng _currentAnchor(SettingsState settings) {
    final lat = settings.latitude;
    final lng = settings.longitude;
    if (lat == null || lng == null) {
      return const LatLng(41.0082, 28.9784); // Istanbul fallback
    }
    return LatLng(lat, lng);
  }

  List<_PlaceWithDistance> _filteredPlaces(LatLng anchor) {
    final filtered = _allPlaces.where((place) {
      final inCategory = place.category == _selectedCategory;
      if (!inCategory) return false;
      if (_query.isEmpty) return true;
      final q = _query.toLowerCase();
      return place.name.toLowerCase().contains(q) ||
          place.description.toLowerCase().contains(q);
    });

    final enriched =
        filtered
            .map(
              (place) => _PlaceWithDistance(
                place,
                _distance.as(LengthUnit.Kilometer, anchor, place.position),
              ),
            )
            .toList()
          ..sort((a, b) => a.distanceKm.compareTo(b.distanceKm));
    return enriched;
  }

  Future<void> _openDirections(_PlaceWithDistance place) async {
    final uri = Uri.parse(
      'https://www.google.com/maps/search/?api=1&query=${place.place.position.latitude},${place.place.position.longitude}',
    );
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  }

  void _focusPlace(_PlaceWithDistance place) {
    _mapController.move(place.place.position, 14.5);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final settings = ref.watch(settingsProvider);
    final anchor = _currentAnchor(settings);
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final places = _filteredPlaces(anchor);

    return Scaffold(
      appBar: AppBar(title: Text('${l10n.location} • ${l10n.prayers}')),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: FlutterMap(
              mapController: _mapController,
              options: MapOptions(initialCenter: anchor, initialZoom: 12.5),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  userAgentPackageName: 'com.umutamal.sirat_i_nur',
                ),
                MarkerLayer(
                  markers: [
                    Marker(
                      point: anchor,
                      width: 44,
                      height: 44,
                      child: const Icon(
                        Icons.my_location_rounded,
                        color: AppColors.emerald,
                        size: 34,
                      ),
                    ),
                    ...places.map(
                      (place) => Marker(
                        point: place.place.position,
                        width: 40,
                        height: 40,
                        child: Icon(
                          place.place.icon,
                          color: place.place.color,
                          size: 34,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
            child: TextField(
              controller: _searchController,
              onChanged: (value) => setState(() => _query = value.trim()),
              decoration: InputDecoration(
                hintText: '${l10n.search}...',
                prefixIcon: const Icon(Icons.search_rounded),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: isDark
                    ? AppColors.darkSurface
                    : AppColors.emeraldSurface,
              ),
            ),
          ),
          SizedBox(
            height: 44,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              children: [
                _categoryChip(
                  context: context,
                  label: 'Mosques',
                  icon: Icons.mosque_rounded,
                  selected: _selectedCategory == _PlaceCategory.mosque,
                  onTap: () =>
                      setState(() => _selectedCategory = _PlaceCategory.mosque),
                ),
                _categoryChip(
                  context: context,
                  label: 'Halal Food',
                  icon: Icons.restaurant_rounded,
                  selected: _selectedCategory == _PlaceCategory.halalFood,
                  onTap: () => setState(
                    () => _selectedCategory = _PlaceCategory.halalFood,
                  ),
                ),
                _categoryChip(
                  context: context,
                  label: 'Education',
                  icon: Icons.school_rounded,
                  selected: _selectedCategory == _PlaceCategory.education,
                  onTap: () => setState(
                    () => _selectedCategory = _PlaceCategory.education,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  '${places.length} ${l10n.location}',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(
                      context,
                    ).colorScheme.onSurface.withValues(alpha: 0.5),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: places.isEmpty
                ? Center(
                    child: Text(
                      l10n.noResults,
                      style: TextStyle(
                        color: Theme.of(
                          context,
                        ).colorScheme.onSurface.withValues(alpha: 0.55),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )
                : ListView.builder(
                    padding: const EdgeInsets.fromLTRB(16, 8, 16, 20),
                    itemCount: places.length,
                    itemBuilder: (context, index) {
                      final place = places[index];
                      return AnimatedPremiumCard(
                        animationDelay: index * 60,
                        onTap: () => _focusPlace(place),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: AppColors.emeraldSurface,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Icon(
                                place.place.icon,
                                color: place.place.color,
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    place.place.name,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 14,
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  Text(
                                    place.place.description,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurface
                                          .withValues(alpha: 0.65),
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  Text(
                                    '${place.distanceKm.toStringAsFixed(1)} km',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w800,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurface
                                          .withValues(alpha: 0.5),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            IconButton(
                              icon: const Icon(
                                Icons.directions_rounded,
                                color: AppColors.emerald,
                              ),
                              onPressed: () => _openDirections(place),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }

  Widget _categoryChip({
    required BuildContext context,
    required String label,
    required IconData icon,
    required bool selected,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            color: selected ? AppColors.emerald : AppColors.emeraldSurface,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                size: 16,
                color: selected ? Colors.white : AppColors.emerald,
              ),
              const SizedBox(width: 6),
              Text(
                label,
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 12,
                  color: selected ? Colors.white : AppColors.emerald,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _PlaceWithDistance {
  final _IslamicPlace place;
  final double distanceKm;

  const _PlaceWithDistance(this.place, this.distanceKm);
}

class _IslamicPlace {
  final String name;
  final String description;
  final LatLng position;
  final IconData icon;
  final Color color;
  final _PlaceCategory category;

  const _IslamicPlace({
    required this.name,
    required this.description,
    required this.position,
    required this.icon,
    required this.color,
    required this.category,
  });
}

const List<_IslamicPlace> _allPlaces = [
  _IslamicPlace(
    name: 'Sultan Ahmed Mosque',
    description: 'Historic Ottoman mosque in Istanbul',
    position: LatLng(41.0054, 28.9768),
    icon: Icons.mosque_rounded,
    color: AppColors.emerald,
    category: _PlaceCategory.mosque,
  ),
  _IslamicPlace(
    name: 'Suleymaniye Mosque',
    description: 'Classical imperial mosque complex',
    position: LatLng(41.0164, 28.9642),
    icon: Icons.mosque_rounded,
    color: AppColors.emerald,
    category: _PlaceCategory.mosque,
  ),
  _IslamicPlace(
    name: 'Eyup Sultan Mosque',
    description: 'Major spiritual center and ziyara site',
    position: LatLng(41.0470, 28.9339),
    icon: Icons.mosque_rounded,
    color: AppColors.emerald,
    category: _PlaceCategory.mosque,
  ),
  _IslamicPlace(
    name: 'Camlica Mosque',
    description: 'Large modern mosque with panoramic view',
    position: LatLng(41.0279, 29.0713),
    icon: Icons.mosque_rounded,
    color: AppColors.emerald,
    category: _PlaceCategory.mosque,
  ),
  _IslamicPlace(
    name: 'Fatih Mosque',
    description: 'Historic mosque and madrasah area',
    position: LatLng(41.0196, 28.9499),
    icon: Icons.mosque_rounded,
    color: AppColors.emerald,
    category: _PlaceCategory.mosque,
  ),
  _IslamicPlace(
    name: 'Kanaat Lokantasi',
    description: 'Traditional halal cuisine in Uskudar',
    position: LatLng(41.0265, 29.0156),
    icon: Icons.restaurant_rounded,
    color: Colors.deepOrange,
    category: _PlaceCategory.halalFood,
  ),
  _IslamicPlace(
    name: 'Sultanahmet Koftecisi',
    description: 'Popular halal restaurant near old city',
    position: LatLng(41.0087, 28.9786),
    icon: Icons.restaurant_rounded,
    color: Colors.deepOrange,
    category: _PlaceCategory.halalFood,
  ),
  _IslamicPlace(
    name: 'Hamdi Restaurant',
    description: 'Halal Turkish food by the Golden Horn',
    position: LatLng(41.0169, 28.9702),
    icon: Icons.restaurant_rounded,
    color: Colors.deepOrange,
    category: _PlaceCategory.halalFood,
  ),
  _IslamicPlace(
    name: 'Halat by Divan',
    description: 'Modern halal kitchen and desserts',
    position: LatLng(41.0368, 28.9859),
    icon: Icons.restaurant_rounded,
    color: Colors.deepOrange,
    category: _PlaceCategory.halalFood,
  ),
  _IslamicPlace(
    name: 'Istanbul University Theology',
    description: 'Faculty of Theology and Islamic studies',
    position: LatLng(41.0126, 28.9604),
    icon: Icons.school_rounded,
    color: Colors.indigo,
    category: _PlaceCategory.education,
  ),
  _IslamicPlace(
    name: 'Marmara University Theology',
    description: 'Islamic sciences and research center',
    position: LatLng(41.0290, 29.0426),
    icon: Icons.school_rounded,
    color: Colors.indigo,
    category: _PlaceCategory.education,
  ),
  _IslamicPlace(
    name: '29 Mayis University Theology',
    description: 'Academic programs for Islamic scholarship',
    position: LatLng(41.0390, 29.0458),
    icon: Icons.school_rounded,
    color: Colors.indigo,
    category: _PlaceCategory.education,
  ),
  _IslamicPlace(
    name: 'ISUZEM Islamic Studies Center',
    description: 'Courses and community Islamic education',
    position: LatLng(41.0075, 28.9462),
    icon: Icons.school_rounded,
    color: Colors.indigo,
    category: _PlaceCategory.education,
  ),
];
