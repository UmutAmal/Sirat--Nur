import 'package:sirat_i_nur/data/datasources/library_local_database.dart';
import 'package:sirat_i_nur/domain/entities/hadith_entity.dart';
import 'package:sirat_i_nur/domain/entities/library_status.dart';
import 'package:sirat_i_nur/domain/repositories/library_repository.dart';

class LibraryRepositoryImpl implements LibraryRepository {
  final LibraryLocalDatabase _db = LibraryLocalDatabase();

  @override
  Future<List<HadithCollection>> getHadithCollections() async {
    return await _db.getAllCollections();
  }

  @override
  Future<List<HadithEntity>> getHadithsByCollection(String collectionId, {int limit = 50, int offset = 0}) async {
    return await _db.getHadithsList(collectionId, limit: limit, offset: offset);
  }

  @override
  Future<List<HadithEntity>> searchHadiths(String query, {String? collectionId, int limit = 50, int offset = 0}) async {
    return await _db.searchHadiths(query, collectionId: collectionId, limit: limit, offset: offset);
  }

  @override
  Future<LibraryStatus> getLibraryStatus({bool forceRefresh = false}) async {
    return await _db.getStatus(forceRefresh: forceRefresh);
  }
}
