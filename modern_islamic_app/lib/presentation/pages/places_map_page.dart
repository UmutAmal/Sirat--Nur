import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:dio/dio.dart';
import 'package:sirat_i_nur/core/utils/l10n_utils.dart';

class PlacesMapPage extends StatefulWidget {
  const PlacesMapPage({super.key});

  @override
  State<PlacesMapPage> createState() => _PlacesMapPageState();
}

class _PlacesMapPageState extends State<PlacesMapPage> {
  final Dio _dio = Dio();
  final Set<Marker> _markers = {};
  LatLng? _currentPosition;
  bool _isLoading = true;
  String _currentFilter = 'Mosque';

  static const String _mapStyleString = '''
      [
        {"elementType": "geometry", "stylers": [{"color": "#212121"}]},
        {"elementType": "labels.icon", "stylers": [{"visibility": "off"}]},
        {"elementType": "labels.text.fill", "stylers": [{"color": "#757575"}]},
        {"elementType": "labels.text.stroke", "stylers": [{"color": "#212121"}]},
        {"featureType": "water", "elementType": "geometry", "stylers": [{"color": "#000000"}]}
      ]
    ''';

  @override
  void initState() {
    super.initState();
    _determinePosition();
  }

  Future<void> _determinePosition() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(accuracy: LocationAccuracy.medium),
      );
      
      if (mounted) {
        setState(() {
          _currentPosition = LatLng(position.latitude, position.longitude);
        });
        _fetchRealPlaces();
      }
    } catch (e) {
      if (mounted) {
        setState(() => _isLoading = false);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(trEnGlobal(context, tr: 'Konum hatası', en: 'Location error'))),
        );
      }
    }
  }

  Future<void> _fetchRealPlaces() async {
    if (_currentPosition == null) return;
    
    setState(() => _isLoading = true);

    final String category = _currentFilter == 'Mosque' 
        ? 'node["amenity"="mosque"]' 
        : 'node["cuisine"~"halal"]["amenity"~"restaurant|fast_food|cafe"]';
    
    final double lat = _currentPosition!.latitude;
    final double lon = _currentPosition!.longitude;
    final double radius = 5000;

    final String query = '''
      [out:json][timeout:30];
      (
        $category(around:$radius,$lat,$lon);
        way["amenity"="mosque"](around:$radius,$lat,$lon);
      );
      out center;
    ''';

    try {
      final response = await _dio.post(
        'https://overpass-api.de/api/interpreter',
        data: query,
      );

      final List elements = response.data['elements'];
      
      if (mounted) {
        setState(() {
          _markers.clear();
          _markers.add(
            Marker(
              markerId: const MarkerId('user_location'),
              position: _currentPosition!,
              icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
            ),
          );

          for (var element in elements) {
            final lat = element['lat'] ?? element['center']?['lat'];
            final lon = element['lon'] ?? element['center']?['lon'];
            if (lat == null || lon == null) continue;

            final id = element['id'].toString();
            final tags = element['tags'] as Map?;
            final name = tags?['name'] ?? (_currentFilter == 'Mosque' ? 'Masjid' : 'Halal Place');
            
            _markers.add(
              Marker(
                markerId: MarkerId(id),
                position: LatLng(lat, lon),
                infoWindow: InfoWindow(title: name),
                icon: BitmapDescriptor.defaultMarkerWithHue(
                  _currentFilter == 'Mosque' ? BitmapDescriptor.hueGreen : BitmapDescriptor.hueOrange
                ),
              ),
            );
          }
          _isLoading = false;
        });
      }
    } catch (e) {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  void _onMapCreated(GoogleMapController controller) {
    // Controller can be used here for future camera animations or style updates
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          if (_currentPosition != null)
            GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(
                target: _currentPosition!,
                zoom: 14.0,
              ),
              style: _mapStyleString,
              markers: _markers,
              myLocationEnabled: true,
              myLocationButtonEnabled: false,
              zoomControlsEnabled: false,
            )
          else
            const Center(child: CircularProgressIndicator(color: Color(0xFFFFD700))),

          _buildTopBar(),
          _buildFilterChips(),
          
          if (_isLoading)
            const Center(child: CircularProgressIndicator(color: Color(0xFFFFD700))),
        ],
      ),
    );
  }

  Widget _buildTopBar() {
     return Positioned(
       top: 0, left: 0, right: 0,
       child: Container(
         height: 120,
         decoration: BoxDecoration(
           gradient: LinearGradient(
             begin: Alignment.topCenter,
             end: Alignment.bottomCenter,
             colors: [Colors.black.withValues(alpha: 0.9), Colors.transparent],
           ),
         ),
         child: SafeArea(
           child: Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20),
             child: Row(
               children: [
                  Text(
                    trEnGlobal(context, tr: _currentFilter == 'Mosque' ? 'CAMİLER' : 'HELAL RESTORANLAR', 
                               en: _currentFilter == 'Mosque' ? 'MOSQUES' : 'HALAL RESTAURANTS'),
                    style: const TextStyle(color: Color(0xFFFFD700), fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: 2),
                  ),
                 const Spacer(),
                 const Icon(Icons.stars, color: Color(0xFFFFD700)),
               ],
             ),
           ),
         ),
       ),
     );
  }

  Widget _buildFilterChips() {
    return Positioned(
      bottom: 40,
      left: 0,
      right: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _filterChip('Mosque', Icons.mosque, labelTr: 'Camiler', labelEn: 'Mosques'),
          const SizedBox(width: 12),
          _filterChip('Halal Food', Icons.restaurant, labelTr: 'Helal Gıda', labelEn: 'Halal Food'),
        ],
      ),
    );
  }

  Widget _filterChip(String id, IconData icon, {required String labelTr, required String labelEn}) {
    final isSelected = _currentFilter == id;
    return GestureDetector(
      onTap: () {
        setState(() => _currentFilter = id);
        _fetchRealPlaces();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFFFD700) : Colors.black87,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: const Color(0xFFFFD700).withValues(alpha: 0.3)),
        ),
        child: Row(
          children: [
            Icon(icon, color: isSelected ? Colors.black : Colors.white, size: 18),
            const SizedBox(width: 8),
            Text(
              trEnGlobal(context, tr: labelTr, en: labelEn),
              style: TextStyle(color: isSelected ? Colors.black : Colors.white, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
