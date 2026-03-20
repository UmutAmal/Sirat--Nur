import 'package:sirat_i_nur/domain/entities/hadith_entity.dart';
import 'package:sirat_i_nur/domain/entities/library_status.dart';

abstract class LibraryRepository {
  Future<List<HadithCollection>> getHadithCollections();
  Future<List<HadithEntity>> getHadithsByCollection(String collectionId, {int limit = 50, int offset = 0});
  Future<List<HadithEntity>> searchHadiths(String query, {String? collectionId, int limit = 50, int offset = 0});
  Future<LibraryStatus> getLibraryStatus({bool forceRefresh = false});
}
