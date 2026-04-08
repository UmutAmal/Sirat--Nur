import 'dart:convert';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:latlong2/latlong.dart';
import 'package:http/http.dart' as http;
import 'package:sirat_i_nur/core/theme/app_colors.dart';
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
  final Distance _distance = const Distance();

  _PlaceCategory _selectedCategory = _PlaceCategory.mosque;
  LatLng? _currentCenter;
  LatLng? _lastFetchCenter;

  List<_IslamicPlace> _places = [];
  bool _isLoading = false;
  String? _error;

  // Custom marker size and animation handling could be added here

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final settings = ref.read(settingsProvider);
      final initialAnchor = _currentAnchor(settings);
      setState(() => _currentCenter = initialAnchor);
      _fetchPlaces(initialAnchor, _selectedCategory);
    });
  }

  LatLng _currentAnchor(SettingsState settings) {
    if (settings.latitude != null && settings.longitude != null) {
      return LatLng(settings.latitude!, settings.longitude!);
    }
    return const LatLng(41.0082, 28.9784); // Istanbul fallback
  }

  Future<void> _fetchPlaces(LatLng center, _PlaceCategory category) async {
    if (_isLoading) return;
    setState(() {
      _isLoading = true;
      _error = null;
    });

    try {
      String queryTags = '';
      if (category == _PlaceCategory.mosque) {
        queryTags = '["amenity"="place_of_worship"]["religion"="muslim"]';
      } else if (category == _PlaceCategory.halalFood) {
        queryTags = '["diet:halal"="yes"]';
      } else if (category == _PlaceCategory.education) {
        queryTags =
            '["amenity"="school"]["religion"="muslim"]'; // Basic approximation
      }

      // 5km radius search
      final query =
          '''
        [out:json][timeout:15];
        (
          node$queryTags(around:5000, ${center.latitude}, ${center.longitude});
          way$queryTags(around:5000, ${center.latitude}, ${center.longitude});
        );
        out center;
      ''';

      final response = await http.post(
        Uri.parse('https://overpass-api.de/api/interpreter'),
        body: query,
      );

      if (response.statusCode == 200) {
        if (!mounted) return;
        final l10n = AppLocalizations.of(context)!;
        final data = json.decode(response.body);
        final elements = data['elements'] as List;

        final List<_IslamicPlace> fetchedPlaces = [];

        for (final el in elements) {
          final tags = el['tags'] ?? {};
          final name = tags['name'] ?? tags['name:en'] ?? l10n.unknownPlaceName;
          final lat = el['lat'] ?? el['center']?['lat'];
          final lon = el['lon'] ?? el['center']?['lon'];

          if (lat != null && lon != null) {
            IconData icon = Icons.mosque_rounded;
            Color color = AppColors.emerald;

            if (category == _PlaceCategory.halalFood) {
              icon = Icons.restaurant_rounded;
              color = Colors.deepOrange;
            } else if (category == _PlaceCategory.education) {
              icon = Icons.school_rounded;
              color = Colors.indigo;
            }

            fetchedPlaces.add(
              _IslamicPlace(
                id: el['id'].toString(),
                name: name,
                description:
                    tags['amenity'] ??
                    tags['shop'] ??
                    l10n.islamicPlaceFallback,
                position: LatLng(lat, lon),
                icon: icon,
                color: color,
                category: category,
              ),
            );
          }
        }

        setState(() {
          _places = fetchedPlaces;
          _lastFetchCenter = center;
        });
      } else {
        if (!mounted) return;
        final l10n = AppLocalizations.of(context)!;
        setState(() => _error = l10n.placesApiError('${response.statusCode}'));
      }
    } catch (e) {
      if (!mounted) return;
      final l10n = AppLocalizations.of(context)!;
      setState(() => _error = l10n.placesNetworkError);
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  void _onMapPositionChanged(MapCamera camera, bool hasGesture) {
    if (hasGesture) {
      setState(() => _currentCenter = camera.center);
    }
  }

  void _changeCategory(_PlaceCategory cat) {
    if (cat == _selectedCategory) return;
    setState(() {
      _selectedCategory = cat;
      _places.clear(); // Clear old results immediately
    });
    if (_currentCenter != null) {
      _fetchPlaces(_currentCenter!, cat);
    }
  }

  Future<void> _openDirections(_PlaceWithDistance place) async {
    final uri = Uri.parse(
      'https://www.google.com/maps/search/?api=1&query=${place.place.position.latitude},${place.place.position.longitude}',
    );
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  }

  void _focusPlace(_PlaceWithDistance p) {
    _mapController.move(p.place.position, 15.5);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final settings = ref.watch(settingsProvider);
    final anchor = _currentAnchor(settings);
    final isDark = Theme.of(context).brightness == Brightness.dark;

    // Sort places by distance from current anchor (or last fetched center)
    final mapCenter = _currentCenter ?? anchor;
    final enrichedPlaces = _places
        .map(
          (p) => _PlaceWithDistance(
            p,
            _distance.as(LengthUnit.Kilometer, mapCenter, p.position),
          ),
        )
        .toList();
    enrichedPlaces.sort((a, b) => a.distanceKm.compareTo(b.distanceKm));

    // Determine if "Search Here" button should show
    final showSearchHere =
        !_isLoading &&
        _lastFetchCenter != null &&
        _currentCenter != null &&
        _distance.as(LengthUnit.Meter, _lastFetchCenter!, _currentCenter!) >
            1000;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          '${l10n.location} • ${l10n.prayers}',
          style: const TextStyle(
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        flexibleSpace: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(color: Colors.black.withValues(alpha: 0.3)),
          ),
        ),
      ),
      body: Stack(
        children: [
          // THE MAP
          FlutterMap(
            mapController: _mapController,
            options: MapOptions(
              initialCenter: anchor,
              initialZoom: 13.5,
              onPositionChanged: _onMapPositionChanged,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.umutamal.sirat_i_nur',
                // Optional: add a dark mode tile filter here if using a custom package
              ),
              MarkerLayer(
                markers: [
                  // User Center Marker
                  Marker(
                    point: anchor,
                    width: 50,
                    height: 50,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.emerald.withValues(alpha: 0.2),
                          ),
                        ),
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.emerald,
                            border: Border.all(color: Colors.white, width: 3),
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.emeraldDeep.withValues(
                                  alpha: 0.5,
                                ),
                                blurRadius: 8,
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Places Markers
                  ...enrichedPlaces.map(
                    (p) => Marker(
                      point: p.place.position,
                      width: 40,
                      height: 40,
                      child: GestureDetector(
                        onTap: () => _focusPlace(p),
                        child: Container(
                          decoration: BoxDecoration(
                            color: p.place.color,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 2),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withValues(alpha: 0.2),
                                blurRadius: 4,
                                offset: const Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Icon(
                            p.place.icon,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),

          // TOP CATEGORY SCROLL
          Positioned(
            top: kToolbarHeight + MediaQuery.of(context).padding.top + 16,
            left: 0,
            right: 0,
            child: SizedBox(
              height: 44,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: [
                  _categoryChip(
                    context: context,
                    label: l10n.mosques,
                    icon: Icons.mosque_rounded,
                    selected: _selectedCategory == _PlaceCategory.mosque,
                    onTap: () => _changeCategory(_PlaceCategory.mosque),
                  ),
                  _categoryChip(
                    context: context,
                    label: l10n.halalFood,
                    icon: Icons.restaurant_rounded,
                    selected: _selectedCategory == _PlaceCategory.halalFood,
                    onTap: () => _changeCategory(_PlaceCategory.halalFood),
                  ),
                  _categoryChip(
                    context: context,
                    label: l10n.islamicEducation,
                    icon: Icons.school_rounded,
                    selected: _selectedCategory == _PlaceCategory.education,
                    onTap: () => _changeCategory(_PlaceCategory.education),
                  ),
                ],
              ),
            ),
          ),

          // SEARCH HERE BUTTON
          if (showSearchHere)
            Positioned(
              top: kToolbarHeight + MediaQuery.of(context).padding.top + 76,
              left: 0,
              right: 0,
              child: Center(
                child: TweenAnimationBuilder<double>(
                  tween: Tween(begin: 0.0, end: 1.0),
                  duration: const Duration(milliseconds: 300),
                  builder: (context, val, child) => Transform.scale(
                    scale: val,
                    child: Opacity(
                      opacity: val,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          if (_currentCenter != null) {
                            _fetchPlaces(_currentCenter!, _selectedCategory);
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.emerald,
                          foregroundColor: Colors.white,
                          elevation: 8,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 12,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        icon: const Icon(Icons.refresh_rounded, size: 20),
                        label: Text(
                          l10n.placesSearchArea,
                          style: TextStyle(fontWeight: FontWeight.w800),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

          // LOADING OVERLAY (Subtle)
          if (_isLoading)
            Positioned(
              top: kToolbarHeight + MediaQuery.of(context).padding.top + 76,
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(color: Colors.black12, blurRadius: 10),
                    ],
                  ),
                  child: const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: AppColors.emerald,
                    ),
                  ),
                ),
              ),
            ),

          // BOTTOM SHEET (DRAGGABLE)
          DraggableScrollableSheet(
            initialChildSize: 0.35,
            minChildSize: 0.15,
            maxChildSize: 0.8,
            builder: (context, scrollController) {
              return Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(24),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.1),
                      blurRadius: 20,
                      offset: const Offset(0, -5),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    // Handle
                    Center(
                      child: Container(
                        margin: const EdgeInsets.only(top: 12, bottom: 12),
                        width: 40,
                        height: 5,
                        decoration: BoxDecoration(
                          color: Colors.grey.withValues(alpha: 0.3),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    // Title Bar
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 8,
                      ),
                      child: Row(
                        children: [
                          Text(
                            _selectedCategory == _PlaceCategory.mosque
                                ? l10n.nearbyMosques
                                : _selectedCategory == _PlaceCategory.halalFood
                                ? l10n.halalFood
                                : l10n.islamicSchools,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            l10n.placesFoundCount('${enrichedPlaces.length}'),
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: AppColors.emerald,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(height: 1),
                    // List
                    Expanded(
                      child: _error != null
                          ? Center(
                              child: Text(
                                _error!,
                                style: const TextStyle(color: Colors.red),
                              ),
                            )
                          : enrichedPlaces.isEmpty && !_isLoading
                          ? Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.location_off_rounded,
                                    size: 48,
                                    color: Colors.grey.withValues(alpha: 0.5),
                                  ),
                                  const SizedBox(height: 16),
                                  Text(
                                    l10n.noResults,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : ListView.separated(
                              controller: scrollController,
                              padding: const EdgeInsets.fromLTRB(
                                20,
                                16,
                                20,
                                40,
                              ),
                              itemCount: enrichedPlaces.length,
                              separatorBuilder: (context, index) =>
                                  const SizedBox(height: 12),
                              itemBuilder: (context, index) {
                                final place = enrichedPlaces[index];
                                return InkWell(
                                  onTap: () => _focusPlace(place),
                                  borderRadius: BorderRadius.circular(16),
                                  child: Container(
                                    padding: const EdgeInsets.all(16),
                                    decoration: BoxDecoration(
                                      color: isDark
                                          ? AppColors.darkSurface
                                          : AppColors.emeraldSurface,
                                      borderRadius: BorderRadius.circular(16),
                                      border: Border.all(
                                        color: Colors.grey.withValues(
                                          alpha: 0.1,
                                        ),
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(12),
                                          decoration: BoxDecoration(
                                            color: place.place.color.withValues(
                                              alpha: 0.1,
                                            ),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Icon(
                                            place.place.icon,
                                            color: place.place.color,
                                            size: 24,
                                          ),
                                        ),
                                        const SizedBox(width: 16),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                place.place.name,
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.w800,
                                                  fontSize: 15,
                                                ),
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              const SizedBox(height: 4),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.location_on_rounded,
                                                    size: 14,
                                                    color: AppColors.emerald,
                                                  ),
                                                  const SizedBox(width: 4),
                                                  Text(
                                                    l10n.distanceAwayKm(
                                                      place.distanceKm
                                                          .toStringAsFixed(1),
                                                    ),
                                                    style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .onSurface
                                                          .withValues(
                                                            alpha: 0.6,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        IconButton(
                                          icon: Container(
                                            padding: const EdgeInsets.all(8),
                                            decoration: const BoxDecoration(
                                              color: AppColors.emerald,
                                              shape: BoxShape.circle,
                                            ),
                                            child: const Icon(
                                              Icons.directions_rounded,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                          ),
                                          onPressed: () =>
                                              _openDirections(place),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                    ),
                  ],
                ),
              );
            },
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
    // Beautiful glassmorphic chips
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(20),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: selected
                  ? AppColors.emerald
                  : Theme.of(
                      context,
                    ).scaffoldBackgroundColor.withValues(alpha: 0.85),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: selected
                    ? AppColors.emeraldLight
                    : Colors.grey.withValues(alpha: 0.2),
                width: 1.5,
              ),
              boxShadow: selected
                  ? [
                      BoxShadow(
                        color: AppColors.emeraldDeep.withValues(alpha: 0.4),
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ]
                  : [],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  icon,
                  size: 16,
                  color: selected ? Colors.white : AppColors.emerald,
                ),
                const SizedBox(width: 8),
                Text(
                  label,
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 13,
                    color: selected
                        ? Colors.white
                        : Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ],
            ),
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
  final String id;
  final String name;
  final String description;
  final LatLng position;
  final IconData icon;
  final Color color;
  final _PlaceCategory category;

  const _IslamicPlace({
    required this.id,
    required this.name,
    required this.description,
    required this.position,
    required this.icon,
    required this.color,
    required this.category,
  });
}
