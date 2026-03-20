
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geocoding/geocoding.dart';
import 'package:go_router/go_router.dart';
import 'package:sirat_i_nur/presentation/blocs/settings_provider.dart';

class LocationSelectionPage extends ConsumerStatefulWidget {
  const LocationSelectionPage({super.key});

  @override
  ConsumerState<LocationSelectionPage> createState() => _LocationSelectionPageState();
}

class _LocationSelectionPageState extends ConsumerState<LocationSelectionPage> {
  final TextEditingController _searchController = TextEditingController();
  List<LocationResult> _results = [];
  bool _isLoading = false;

  void _showMessage({required String tr, required String en}) {
    if (!mounted) return;
    final isTr = Localizations.localeOf(context).languageCode == 'tr';
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(isTr ? tr : en)),
    );
  }

  Future<void> _search(String query) async {
    final trimmed = query.trim();
    if (trimmed.length < 3) {
      _showMessage(tr: 'En az 3 karakter girin.', en: 'Please enter at least 3 characters.');
      return;
    }
    setState(() => _isLoading = true);
    try {
      List<Location> locations = await locationFromAddress(trimmed);
      List<LocationResult> results = [];
      for (var loc in locations) {
        List<Placemark> placemarks = await placemarkFromCoordinates(loc.latitude, loc.longitude);
        if (placemarks.isNotEmpty) {
          final p = placemarks.first;
          results.add(LocationResult(
            name: "${p.locality ?? p.subAdministrativeArea ?? 'Unknown'}, ${p.country}",
            latitude: loc.latitude,
            longitude: loc.longitude,
          ));
        }
      }
      setState(() => _results = results);
      if (results.isEmpty) {
        _showMessage(tr: 'Sonuç bulunamadı.', en: 'No results found.');
      }
    } catch (e) {
      _showMessage(tr: 'Konum araması başarısız.', en: 'Location search failed.');
    } finally {
      setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final isTr = Localizations.localeOf(context).languageCode == 'tr';
    return Scaffold(
      appBar: AppBar(
        title: Text(isTr ? 'Ülke ve Şehir Seçimi' : 'Choose Country & City'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: isTr ? 'Şehir veya Ülke Ara...' : 'Search City or Country...',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    _searchController.clear();
                    setState(() => _results = []);
                  },
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onSubmitted: _search,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.my_location, color: Colors.blue),
            title: Text(isTr ? 'Mevcut Konumu Kullan (GPS)' : 'Use Current Location (GPS)'),
            onTap: () {
              ref.read(settingsProvider.notifier).clearManualLocation();
              context.pop();
            },
          ),
          const Divider(),
          if (_isLoading)
            const Center(child: Padding(
              padding: EdgeInsets.all(32.0),
              child: CircularProgressIndicator(),
            )),
          Expanded(
            child: ListView.builder(
              itemCount: _results.length,
              itemBuilder: (context, index) {
                final result = _results[index];
                return ListTile(
                  leading: const Icon(Icons.location_city),
                  title: Text(result.name),
                  onTap: () {
                    ref.read(settingsProvider.notifier).updateLocation(
                      result.latitude, 
                      result.longitude, 
                      result.name
                    );
                    context.pop();
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class LocationResult {
  final String name;
  final double latitude;
  final double longitude;

  LocationResult({required this.name, required this.latitude, required this.longitude});
}
