import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';

import 'package:lat_lng_to_timezone/lat_lng_to_timezone.dart' as tzmap;
import 'package:sirat_i_nur/core/constants/app_constants.dart';
import 'package:sirat_i_nur/core/theme/app_colors.dart';
import 'package:sirat_i_nur/features/settings/settings_provider.dart';
import 'package:sirat_i_nur/l10n/app_localizations.dart';

List<CityData> filterCities(
  Iterable<CityData> source, {
  String? selectedCountry,
  String query = '',
}) {
  var cities = source.toList();
  if (selectedCountry != null) {
    cities = cities.where((city) => city.country == selectedCountry).toList();
  }
  if (query.isNotEmpty) {
    final lowered = query.toLowerCase();
    cities = cities
        .where(
          (city) =>
              city.name.toLowerCase().contains(lowered) ||
              city.country.toLowerCase().contains(lowered) ||
              city.countryCode.toLowerCase().contains(lowered),
        )
        .toList();
  }
  return cities;
}

List<String> buildCountryFilters(Iterable<CityData> source) {
  final countries = source.map((city) => city.country).toSet().toList()..sort();
  return countries;
}

class LocationSelectionPage extends ConsumerStatefulWidget {
  const LocationSelectionPage({super.key});

  @override
  ConsumerState<LocationSelectionPage> createState() =>
      _LocationSelectionPageState();
}

class _LocationSelectionPageState extends ConsumerState<LocationSelectionPage> {
  String _query = '';
  final TextEditingController _searchController = TextEditingController();
  String? _selectedCountry;
  bool _isDetecting = false;

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  List<CityData> get _filteredCities {
    return filterCities(
      globalCities,
      selectedCountry: _selectedCountry,
      query: _query,
    );
  }

  List<String> get _uniqueCountries {
    return buildCountryFilters(globalCities);
  }

  Future<void> _detectCurrentLocation(AppLocalizations l10n) async {
    if (_isDetecting) return;
    setState(() => _isDetecting = true);

    try {
      final serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        _showMessage(l10n.locationServiceDisabled);
        return;
      }

      var permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
      }

      if (permission == LocationPermission.denied ||
          permission == LocationPermission.deniedForever) {
        _showMessage(l10n.locationPermissionDenied);
        return;
      }

      final position = await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.high,
        ),
      );
      var locationName = l10n.currentLocation;
      var timezone = _inferTimezoneFromCoordinates(
        position.latitude,
        position.longitude,
      );
      String? countryCode;

      try {
        final placemarks = await placemarkFromCoordinates(
          position.latitude,
          position.longitude,
        );
        if (placemarks.isNotEmpty) {
          final place = placemarks.first;
          countryCode = place.isoCountryCode?.trim();
          final city = (place.locality ?? place.subAdministrativeArea ?? '')
              .trim();
          final country = (place.country ?? '').trim();
          final computedName = [
            city,
            country,
          ].where((part) => part.isNotEmpty).join(', ');
          if (computedName.isNotEmpty) {
            locationName = computedName;
          }
        }
      } catch (_) {
        debugPrint('Reverse geocoding failed; using generic location label');
        // Keep generic label when reverse geocoding fails.
      }

      await ref
          .read(settingsProvider.notifier)
          .updateLocation(
            position.latitude,
            position.longitude,
            locationName,
            timezone: timezone,
            countryCode: countryCode,
          );

      if (!mounted) return;
      _showMessage('${l10n.location}: $locationName');
      context.pop();
    } catch (_) {
      debugPrint('Location detection failed');
      _showMessage(l10n.locationDetectionFailed);
    } finally {
      if (mounted) {
        setState(() => _isDetecting = false);
      }
    }
  }

  void _showMessage(String text) {
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }

  String? _inferTimezoneFromCoordinates(double lat, double lng) {
    try {
      return tzmap.latLngToTimezoneString(lat, lng);
    } catch (_) {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final cities = _filteredCities;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.location),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () => context.pop(),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                icon: _isDetecting
                    ? const SizedBox(
                        width: 18,
                        height: 18,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: Colors.white,
                        ),
                      )
                    : const Icon(
                        Icons.my_location_rounded,
                        color: Colors.white,
                      ),
                label: Text(
                  _isDetecting ? l10n.loading : l10n.currentLocation,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.emerald,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                onPressed: _isDetecting
                    ? null
                    : () => _detectCurrentLocation(l10n),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: TextField(
              controller: _searchController,
              onChanged: (value) => setState(() => _query = value),
              decoration: InputDecoration(
                hintText: l10n.searchHint,
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
            height: 42,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              itemCount: _uniqueCountries.length,
              itemBuilder: (context, index) {
                final country = _uniqueCountries[index];
                final isSelected = _selectedCountry == country;
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: ChoiceChip(
                    label: Text(
                      country,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: isSelected ? Colors.white : null,
                      ),
                    ),
                    selected: isSelected,
                    selectedColor: AppColors.emerald,
                    onSelected: (_) => setState(
                      () => _selectedCountry = isSelected ? null : country,
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  l10n.citiesCount(cities.length.toString()),
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(
                      context,
                    ).colorScheme.onSurface.withValues(alpha: 0.4),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 4),
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
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 2,
                    ),
                    leading: Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        color: AppColors.emeraldSurface,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          city.countryCode,
                          style: const TextStyle(
                            fontWeight: FontWeight.w900,
                            color: AppColors.emerald,
                            fontSize: 11,
                          ),
                        ),
                      ),
                    ),
                    title: Text(
                      city.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 14,
                      ),
                    ),
                    subtitle: Text(
                      '${city.country} • ${city.lat.toStringAsFixed(2)}\u00B0, ${city.lng.toStringAsFixed(2)}\u00B0',
                      style: TextStyle(
                        fontSize: 11,
                        color: Theme.of(
                          context,
                        ).colorScheme.onSurface.withValues(alpha: 0.5),
                      ),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 14,
                    ),
                    onTap: () async {
                      try {
                        await ref
                            .read(settingsProvider.notifier)
                            .updateLocation(
                              city.lat,
                              city.lng,
                              '${city.name}, ${city.country}',
                              timezone: city.timezone,
                              countryCode: city.countryCode,
                            );
                        if (!context.mounted) return;
                        _showMessage(
                          '${l10n.location}: ${city.name}, ${city.country} (${city.timezone})',
                        );
                        context.pop();
                      } catch (_) {
                        debugPrint('Manual location update failed');
                        if (!context.mounted) return;
                        _showMessage(l10n.appUnknownError);
                      }
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
