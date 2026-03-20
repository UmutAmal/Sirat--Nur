import 'package:isar/isar.dart';

part 'masjid_entity.g.dart';

@collection
class MasjidEntity {
  Id id = Isar.autoIncrement;

  @Index(type: IndexType.value)
  late String name;

  late String address;
  
  late double latitude;
  
  late double longitude;

  @Index(type: IndexType.value)
  String? city;

  @Index(type: IndexType.value)
  String? country;

  late bool hasJummah;
  
  late bool hasWudu;

  /// FTS5 indexable field for lightning-fast local search
  @Index(type: IndexType.value)
  List<String> get searchTerms => [
    name.toLowerCase(),
    city?.toLowerCase() ?? '',
    country?.toLowerCase() ?? '',
  ];
}
