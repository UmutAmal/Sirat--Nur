import 'package:isar/isar.dart';
import 'package:sirat_i_nur/core/models/masjid_entity.dart';
import 'package:sirat_i_nur/core/services/isar_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MasjidRepository {
  final Isar isar;

  MasjidRepository(this.isar);

  /// Search mosques locally using FTS5-like indexing
  Future<List<MasjidEntity>> searchMasjids(String query) async {
    final lowerQuery = query.toLowerCase();
    return await isar.masjidEntitys
        .filter()
        .searchTermsElementContains(lowerQuery)
        .findAll();
  }

  /// Cache a list of masjids from a remote source
  Future<void> cacheMasjids(List<MasjidEntity> masjids) async {
    await isar.writeTxn(() async {
      await isar.masjidEntitys.putAll(masjids);
    });
  }

  /// Get masjids within a certain geographic range (Local filtering)
  Future<List<MasjidEntity>> getNearbyMasjids(double lat, double lon, double radiusKm) async {
    // Basic square bounding box for efficiency before Haversine filtering
    final deltaLat = radiusKm / 111.0;
    final deltaLon = radiusKm / (111.0 * 0.7); // Approximate for mid-latitudes

    return await isar.masjidEntitys
        .filter()
        .latitudeBetween(lat - deltaLat, lat + deltaLat)
        .and()
        .longitudeBetween(lon - deltaLon, lon + deltaLon)
        .findAll();
  }
}

final masjidRepositoryProvider = Provider<MasjidRepository>((ref) {
  final isarService = ref.read(isarServiceProvider);
  return MasjidRepository(isarService.isar);
});
