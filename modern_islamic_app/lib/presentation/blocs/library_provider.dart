import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sirat_i_nur/data/repositories/library_repository_impl.dart';
import 'package:sirat_i_nur/domain/entities/hadith_entity.dart';
import 'package:sirat_i_nur/domain/entities/library_status.dart';

final libraryRepositoryProvider = Provider((ref) {
  return LibraryRepositoryImpl();
});

final hadithCollectionsProvider = FutureProvider<List<HadithCollection>>((ref) async {
  final repo = ref.watch(libraryRepositoryProvider);
  return repo.getHadithCollections();
});

// A provider mapped as a family to allow infinite-scroll pagination querying
final hadithListProvider = FutureProvider.family.autoDispose<List<HadithEntity>, Map<String, dynamic>>((ref, params) async {
  final repo = ref.watch(libraryRepositoryProvider);
  return repo.getHadithsByCollection(
    params['collectionId'] as String,
    limit: params['limit'] as int? ?? 50,
    offset: params['offset'] as int? ?? 0,
  );
});

final hadithSearchProvider = FutureProvider.family.autoDispose<List<HadithEntity>, Map<String, dynamic>>((ref, params) async {
  final repo = ref.watch(libraryRepositoryProvider);
  return repo.searchHadiths(
    params['query'] as String? ?? '',
    collectionId: params['collectionId'] as String?,
    limit: params['limit'] as int? ?? 50,
    offset: params['offset'] as int? ?? 0,
  );
});

final libraryStatusProvider = FutureProvider<LibraryStatus>((ref) async {
  final repo = ref.watch(libraryRepositoryProvider);
  return repo.getLibraryStatus();
});
