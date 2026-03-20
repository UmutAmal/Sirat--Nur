import 'package:isar/isar.dart';

part 'zikr_entity.g.dart';

@collection
class ZikrEntity {
  Id id = Isar.autoIncrement; // you can also use id = null to auto increment

  late String title;
  
  int targetCount = 33;
  
  int currentCount = 0;
  
  DateTime? lastModified;
}
