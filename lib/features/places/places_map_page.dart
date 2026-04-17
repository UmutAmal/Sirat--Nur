import 'dart:convert';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:latlong2/latlong.dart';
import 'package:http/http.dart' as http;
import 'package:sirat_i_nur/core/network/supabase_config.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:sirat_i_nur/core/utils/external_url.dart';
import 'package:sirat_i_nur/features/settings/settings_provider.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

enum PlaceCategory { mosque, halalFood, education }

enum PlacesMapAvailability { ready, locationRequired, tileConfigRequired }

enum PlacesDataAvailability {
  ready,
  locationRequired,
  dataSourceConfigRequired,
}

LatLng? resolvePlacesAnchor(SettingsState settings) {
  final latitude = settings.latitude;
  final longitude = settings.longitude;
  if (latitude == null || longitude == null) {
    return null;
  }

  return LatLng(latitude, longitude);
}

PlacesMapAvailability resolvePlacesMapAvailability(
  SettingsState settings, {
  required String tileUrlTemplate,
}) {
  if (resolvePlacesAnchor(settings) == null) {
    return PlacesMapAvailability.locationRequired;
  }

  if (!isSecurePlacesTileUrlTemplate(tileUrlTemplate)) {
    return PlacesMapAvailability.tileConfigRequired;
  }

  return PlacesMapAvailability.ready;
}

bool isSecurePlacesTileUrlTemplate(String rawTemplate) {
  final template = rawTemplate.trim();
  if (template.isEmpty ||
      !template.contains('{z}') ||
      !template.contains('{x}') ||
      !template.contains('{y}')) {
    return false;
  }

  final probeUrl = template
      .replaceAll('{z}', '0')
      .replaceAll('{x}', '0')
      .replaceAll('{y}', '0')
      .replaceAll('{s}', 'a');
  final uri = Uri.tryParse(probeUrl);
  return uri != null &&
      uri.isScheme('https') &&
      uri.host.isNotEmpty &&
      uri.userInfo.isEmpty &&
      !uri.hasQuery &&
      !uri.hasFragment &&
      !_isPublicPlacesTileHost(uri.host);
}

PlacesDataAvailability resolvePlacesDataAvailability(
  SettingsState settings, {
  required String overpassApiUrl,
}) {
  if (resolvePlacesAnchor(settings) == null) {
    return PlacesDataAvailability.locationRequired;
  }

  try {
    resolvePlacesOverpassEndpoint(overpassApiUrl);
  } on FormatException {
    return PlacesDataAvailability.dataSourceConfigRequired;
  }

  return PlacesDataAvailability.ready;
}

bool canFetchPlaces(SettingsState settings, {required String overpassApiUrl}) {
  return resolvePlacesDataAvailability(
        settings,
        overpassApiUrl: overpassApiUrl,
      ) ==
      PlacesDataAvailability.ready;
}

Uri resolvePlacesOverpassEndpoint(String rawEndpoint) {
  final endpoint = rawEndpoint.trim();
  final uri = Uri.tryParse(endpoint);
  if (uri == null ||
      !uri.isScheme('https') ||
      uri.host.isEmpty ||
      uri.userInfo.isNotEmpty ||
      uri.hasQuery ||
      uri.hasFragment ||
      _isPublicOverpassHost(uri.host)) {
    throw const FormatException(
      'Places Overpass endpoint must be an HTTPS proxy/provider URL without public Overpass hosts, user info, query, or fragment.',
    );
  }

  return uri;
}

bool _isPublicPlacesTileHost(String host) {
  return _hostMatchesAny(host, const [
    'tile.openstreetmap.org',
    'tile.openstreetmap.de',
  ]);
}

bool _isPublicOverpassHost(String host) {
  return _hostMatchesAny(host, const [
    'overpass-api.de',
    'overpass.kumi.systems',
    'overpass.openstreetmap.fr',
    'overpass.openstreetmap.ru',
    'overpass.osm.ch',
    'overpass.osm.rambler.ru',
  ]);
}

bool _hostMatchesAny(String host, List<String> blockedHosts) {
  final normalizedHost = host.toLowerCase();
  return blockedHosts.any(
    (blockedHost) =>
        normalizedHost == blockedHost ||
        normalizedHost.endsWith('.$blockedHost'),
  );
}

String buildOverpassPlacesQuery({
  required LatLng center,
  required PlaceCategory category,
  int radiusMeters = 5000,
}) {
  final queryTags = _overpassQueryTagsForCategory(category);

  return '''
        [out:json][timeout:15];
        (
          node$queryTags(around:$radiusMeters, ${center.latitude}, ${center.longitude});
          way$queryTags(around:$radiusMeters, ${center.latitude}, ${center.longitude});
        );
        out center;
      ''';
}

String _overpassQueryTagsForCategory(PlaceCategory category) {
  return switch (category) {
    PlaceCategory.mosque =>
      '["amenity"="place_of_worship"]["religion"="muslim"]',
    PlaceCategory.halalFood => '["diet:halal"="yes"]',
    PlaceCategory.education => '["amenity"="school"]["religion"="muslim"]',
  };
}

List<IslamicPlace> parseOverpassPlacesPayload(
  String responseBody, {
  required PlaceCategory category,
  required String unknownPlaceName,
  required String fallbackDescription,
}) {
  final decoded = jsonDecode(responseBody);
  if (decoded is! Map<String, dynamic>) {
    throw const FormatException('Overpass response root must be an object.');
  }

  final elements = decoded['elements'];
  if (elements is! List) {
    throw const FormatException('Overpass response elements must be a list.');
  }

  final places = <IslamicPlace>[];
  for (final element in elements) {
    if (element is! Map) {
      continue;
    }

    final row = Map<String, dynamic>.from(element);
    final tags = _readOverpassTags(row['tags']);
    final lat = _readOverpassCoordinate(
      row['lat'] ?? _readOverpassCenterValue(row['center'], 'lat'),
    );
    final lon = _readOverpassCoordinate(
      row['lon'] ?? _readOverpassCenterValue(row['center'], 'lon'),
    );
    if (lat == null || lon == null) {
      continue;
    }

    final id = row['id']?.toString().trim();
    if (id == null || id.isEmpty) {
      continue;
    }

    final style = _placeStyleForCategory(category);
    places.add(
      IslamicPlace(
        id: id,
        name: _readFirstTag(tags, const [
          'name',
          'name:en',
        ], fallback: unknownPlaceName),
        description: _readFirstTag(tags, const [
          'amenity',
          'shop',
        ], fallback: fallbackDescription),
        position: LatLng(lat, lon),
        icon: style.icon,
        color: style.color,
        category: category,
      ),
    );
  }

  return List.unmodifiable(places);
}

Map<String, String> _readOverpassTags(dynamic rawTags) {
  if (rawTags is! Map) {
    return const <String, String>{};
  }

  final tags = <String, String>{};
  rawTags.forEach((key, value) {
    final normalizedKey = key?.toString().trim();
    final normalizedValue = value?.toString().trim();
    if (normalizedKey == null ||
        normalizedKey.isEmpty ||
        normalizedValue == null ||
        normalizedValue.isEmpty) {
      return;
    }
    tags[normalizedKey] = normalizedValue;
  });

  return tags;
}

dynamic _readOverpassCenterValue(dynamic rawCenter, String key) {
  if (rawCenter is Map) {
    return rawCenter[key];
  }

  return null;
}

double? _readOverpassCoordinate(dynamic rawCoordinate) {
  if (rawCoordinate is num) {
    return rawCoordinate.toDouble();
  }

  if (rawCoordinate is String) {
    return double.tryParse(rawCoordinate.trim());
  }

  return null;
}

String _readFirstTag(
  Map<String, String> tags,
  List<String> keys, {
  required String fallback,
}) {
  for (final key in keys) {
    final value = tags[key]?.trim();
    if (value != null && value.isNotEmpty) {
      return value;
    }
  }

  return fallback;
}

({IconData icon, Color color}) _placeStyleForCategory(PlaceCategory category) {
  return switch (category) {
    PlaceCategory.mosque => (
      icon: Icons.mosque_rounded,
      color: AppColors.emerald,
    ),
    PlaceCategory.halalFood => (
      icon: Icons.restaurant_rounded,
      color: Colors.deepOrange,
    ),
    PlaceCategory.education => (
      icon: Icons.school_rounded,
      color: Colors.indigo,
    ),
  };
}

class PlacesMapPage extends ConsumerStatefulWidget {
  const PlacesMapPage({super.key});

  @override
  ConsumerState<PlacesMapPage> createState() => _PlacesMapPageState();
}

class _PlacesMapPageState extends ConsumerState<PlacesMapPage> {
  final MapController _mapController = MapController();
  final Distance _distance = const Distance();

  PlaceCategory _selectedCategory = PlaceCategory.mosque;
  LatLng? _currentCenter;
  LatLng? _lastFetchCenter;

  List<IslamicPlace> _places = [];
  bool _isLoading = false;
  String? _error;
  bool _anchorSyncQueued = false;

  // Custom marker size and animation handling could be added here

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final settings = ref.read(settingsProvider);
      final initialAnchor = resolvePlacesAnchor(settings);
      setState(() => _currentCenter = initialAnchor);
      if (initialAnchor != null &&
          canFetchPlaces(
            settings,
            overpassApiUrl: SupabaseConfig.placesOverpassApiUrl,
          )) {
        _fetchPlaces(initialAnchor, _selectedCategory);
      }
    });
  }

  Future<void> _fetchPlaces(LatLng center, PlaceCategory category) async {
    if (_isLoading) return;
    if (!canFetchPlaces(
      ref.read(settingsProvider),
      overpassApiUrl: SupabaseConfig.placesOverpassApiUrl,
    )) {
      setState(() {
        _places.clear();
        _lastFetchCenter = null;
      });
      return;
    }

    setState(() {
      _isLoading = true;
      _error = null;
      _lastFetchCenter = center;
    });

    try {
      final response = await http.post(
        resolvePlacesOverpassEndpoint(SupabaseConfig.placesOverpassApiUrl),
        body: buildOverpassPlacesQuery(center: center, category: category),
      );

      if (response.statusCode == 200) {
        if (!mounted) return;
        final l10n = AppLocalizations.of(context)!;
        final fetchedPlaces = parseOverpassPlacesPayload(
          response.body,
          category: category,
          unknownPlaceName: l10n.unknownPlaceName,
          fallbackDescription: l10n.islamicPlaceFallback,
        );
        setState(() {
          _places = fetchedPlaces;
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

  void _changeCategory(PlaceCategory cat) {
    if (cat == _selectedCategory) return;
    setState(() {
      _selectedCategory = cat;
      _places.clear(); // Clear old results immediately
    });
    final currentCenter = _currentCenter;
    if (currentCenter != null &&
        canFetchPlaces(
          ref.read(settingsProvider),
          overpassApiUrl: SupabaseConfig.placesOverpassApiUrl,
        )) {
      _fetchPlaces(currentCenter, cat);
    }
  }

  Future<void> _openDirections(_PlaceWithDistance place) async {
    final uri = buildGoogleMapsSearchUri(
      latitude: place.place.position.latitude,
      longitude: place.place.position.longitude,
    );
    await launchExternalUri(context, uri);
  }

  void _focusPlace(_PlaceWithDistance p) {
    _mapController.move(p.place.position, 15.5);
  }

  void _queueAnchorSync(LatLng? anchor, {required bool canFetch}) {
    if (anchor == null || !canFetch || _isLoading || _anchorSyncQueued) {
      return;
    }

    final lastFetchCenter = _lastFetchCenter;
    final needsFetch =
        lastFetchCenter == null ||
        _distance.as(LengthUnit.Meter, lastFetchCenter, anchor) > 25;
    if (!needsFetch) {
      return;
    }

    _anchorSyncQueued = true;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _anchorSyncQueued = false;
      if (!mounted) return;
      setState(() => _currentCenter = anchor);
      _fetchPlaces(anchor, _selectedCategory);
    });
  }

  (String, String?, IconData) _buildPlacesEmptyStateCopy(
    AppLocalizations l10n,
    PlacesDataAvailability dataAvailability,
  ) {
    return switch (dataAvailability) {
      PlacesDataAvailability.locationRequired => (
        l10n.placesLocationRequiredTitle,
        l10n.placesLocationRequiredBody,
        Icons.location_off_rounded,
      ),
      PlacesDataAvailability.dataSourceConfigRequired => (
        l10n.placesDataSourceUnavailableTitle,
        l10n.placesDataSourceUnavailableBody,
        Icons.cloud_off_rounded,
      ),
      PlacesDataAvailability.ready => (l10n.noResults, null, Icons.search_off),
    };
  }

  Widget _buildMapUnavailableState(
    BuildContext context,
    AppLocalizations l10n,
    PlacesMapAvailability availability,
  ) {
    final (title, body, icon) = switch (availability) {
      PlacesMapAvailability.locationRequired => (
        l10n.placesLocationRequiredTitle,
        l10n.placesLocationRequiredBody,
        Icons.location_off_rounded,
      ),
      PlacesMapAvailability.tileConfigRequired => (
        l10n.placesMapTilesUnavailableTitle,
        l10n.placesMapTilesUnavailableBody,
        Icons.map_rounded,
      ),
      PlacesMapAvailability.ready => ('', '', Icons.map_rounded),
    };

    return Container(
      color: Theme.of(context).colorScheme.surfaceContainerHighest,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 56,
                color: Theme.of(
                  context,
                ).colorScheme.onSurface.withValues(alpha: 0.5),
              ),
              const SizedBox(height: 16),
              Text(
                title,
                textAlign: TextAlign.center,
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w800),
              ),
              const SizedBox(height: 8),
              Text(
                body,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(
                    context,
                  ).colorScheme.onSurface.withValues(alpha: 0.7),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final error = _error;
    final settings = ref.watch(settingsProvider);
    final anchor = resolvePlacesAnchor(settings);
    final tileUrlTemplate = SupabaseConfig.placesTileUrlTemplate;
    final overpassApiUrl = SupabaseConfig.placesOverpassApiUrl;
    final mapAvailability = resolvePlacesMapAvailability(
      settings,
      tileUrlTemplate: tileUrlTemplate,
    );
    final dataAvailability = resolvePlacesDataAvailability(
      settings,
      overpassApiUrl: overpassApiUrl,
    );
    final isDark = Theme.of(context).brightness == Brightness.dark;

    _queueAnchorSync(
      anchor,
      canFetch: dataAvailability == PlacesDataAvailability.ready,
    );
    final (emptyTitle, emptyBody, emptyIcon) = _buildPlacesEmptyStateCopy(
      l10n,
      dataAvailability,
    );

    // Sort places by distance from current anchor (or last fetched center)
    final mapCenter = _currentCenter ?? anchor ?? _lastFetchCenter;
    final enrichedPlaces = _places
        .map(
          (p) => _PlaceWithDistance(
            p,
            mapCenter == null
                ? 0
                : _distance.as(LengthUnit.Kilometer, mapCenter, p.position),
          ),
        )
        .toList();
    enrichedPlaces.sort((a, b) => a.distanceKm.compareTo(b.distanceKm));

    // Determine if "Search Here" button should show
    final lastFetchCenter = _lastFetchCenter;
    final currentCenter = _currentCenter;
    final showSearchHere =
        mapAvailability == PlacesMapAvailability.ready &&
        !_isLoading &&
        lastFetchCenter != null &&
        currentCenter != null &&
        _distance.as(LengthUnit.Meter, lastFetchCenter, currentCenter) > 1000;

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
          if (mapAvailability == PlacesMapAvailability.ready && anchor != null)
            FlutterMap(
              mapController: _mapController,
              options: MapOptions(
                initialCenter: anchor,
                initialZoom: 13.5,
                onPositionChanged: _onMapPositionChanged,
              ),
              children: [
                TileLayer(
                  urlTemplate: tileUrlTemplate,
                  userAgentPackageName: 'com.umutamal.sirat_i_nur',
                ),
                MarkerLayer(
                  markers: [
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
            )
          else
            _buildMapUnavailableState(context, l10n, mapAvailability),

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
                    selected: _selectedCategory == PlaceCategory.mosque,
                    onTap: () => _changeCategory(PlaceCategory.mosque),
                  ),
                  _categoryChip(
                    context: context,
                    label: l10n.halalFood,
                    icon: Icons.restaurant_rounded,
                    selected: _selectedCategory == PlaceCategory.halalFood,
                    onTap: () => _changeCategory(PlaceCategory.halalFood),
                  ),
                  _categoryChip(
                    context: context,
                    label: l10n.islamicEducation,
                    icon: Icons.school_rounded,
                    selected: _selectedCategory == PlaceCategory.education,
                    onTap: () => _changeCategory(PlaceCategory.education),
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
                          final currentCenter = _currentCenter;
                          if (currentCenter != null) {
                            _fetchPlaces(currentCenter, _selectedCategory);
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
                            _selectedCategory == PlaceCategory.mosque
                                ? l10n.nearbyMosques
                                : _selectedCategory == PlaceCategory.halalFood
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
                      child: error != null
                          ? Center(
                              child: Text(
                                error,
                                style: const TextStyle(color: Colors.red),
                              ),
                            )
                          : enrichedPlaces.isEmpty && !_isLoading
                          ? LayoutBuilder(
                              builder: (context, constraints) {
                                final minHeight = constraints.maxHeight > 32
                                    ? constraints.maxHeight - 32
                                    : 0.0;

                                return SingleChildScrollView(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 16,
                                  ),
                                  child: ConstrainedBox(
                                    constraints: BoxConstraints(
                                      minHeight: minHeight,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          emptyIcon,
                                          size: 48,
                                          color: Colors.grey.withValues(
                                            alpha: 0.5,
                                          ),
                                        ),
                                        const SizedBox(height: 16),
                                        Text(
                                          emptyTitle,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        if (emptyBody != null) ...[
                                          const SizedBox(height: 8),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 24,
                                            ),
                                            child: Text(
                                              emptyBody,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.grey.withValues(
                                                  alpha: 0.8,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ],
                                    ),
                                  ),
                                );
                              },
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
  final IslamicPlace place;
  final double distanceKm;

  const _PlaceWithDistance(this.place, this.distanceKm);
}

class IslamicPlace {
  final String id;
  final String name;
  final String description;
  final LatLng position;
  final IconData icon;
  final Color color;
  final PlaceCategory category;

  const IslamicPlace({
    required this.id,
    required this.name,
    required this.description,
    required this.position,
    required this.icon,
    required this.color,
    required this.category,
  });
}
