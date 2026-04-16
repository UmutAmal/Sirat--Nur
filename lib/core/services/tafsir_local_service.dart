import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class TafsirException implements Exception {
  final String code;
  final String? details;

  TafsirException(this.code, {this.details});

  @override
  String toString() => details == null ? code : '$code:$details';
}

class TafsirLocalService {
  static Database? _database;
  static const String _dbName = 'tafsir_cache.db';
  static const String _tableName = 'tafsir';
  static const String _verifiedWhere =
      "source IS NOT NULL AND TRIM(source) != '' "
      "AND source_license IS NOT NULL AND TRIM(source_license) != '' "
      "AND verified_at IS NOT NULL AND TRIM(verified_at) != ''";

  static final Map<String, int> _sourceToApiId = {
    'en.ibn_kathir': 169,
    'en.maarif': 168,
    'en.tazkir': 817,
    'ar.muyassar': 16,
    'ar.wasit': 93,
    'ar.ibn_kathir': 14,
    'ar.tabari': 15,
    'ar.qurtubi': 90,
    'ar.saadi': 91,
    'ar.baghawi': 94,
  };

  static final Map<String, String> _legacySourceAliases = {
    'en.sahih': 'en.ibn_kathir',
    'en.arabicexpert': 'en.maarif',
    'en.aisah': 'en.tazkir',
    'en.khalifamag': 'en.maarif',
    'en.muhammadtaqiusmani': 'en.maarif',
  };

  static Future<Database> get database async {
    final existingDatabase = _database;
    if (existingDatabase != null) return existingDatabase;

    final initializedDatabase = await _initDatabase();
    _database = initializedDatabase;
    return initializedDatabase;
  }

  static Future<Database> _initDatabase() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, _dbName);

    return openDatabase(
      path,
      version: 2,
      onCreate: (db, version) async => _createSchema(db),
      onUpgrade: (db, oldVersion, newVersion) async {
        if (oldVersion < 2) {
          await _ensureColumn(db, 'language', 'TEXT');
          await _ensureColumn(db, 'source', 'TEXT');
          await _ensureColumn(db, 'source_license', 'TEXT');
          await _ensureColumn(db, 'verified_at', 'TEXT');
        }
      },
    );
  }

  static Future<void> _createSchema(Database db) async {
    await db.execute('''
          CREATE TABLE $_tableName (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            surah_number INTEGER NOT NULL,
            verse_number INTEGER NOT NULL,
            tafsir_text TEXT NOT NULL,
            tafsir_source TEXT NOT NULL,
            language TEXT,
            source TEXT,
            source_license TEXT,
            verified_at TEXT,
            UNIQUE(surah_number, verse_number, tafsir_source)
          )
        ''');
    await db.execute('''
          CREATE INDEX idx_surah_verse_source ON $_tableName(surah_number, verse_number, tafsir_source)
        ''');
  }

  static Future<void> _ensureColumn(
    Database db,
    String columnName,
    String definition,
  ) async {
    final columns = await db.rawQuery('PRAGMA table_info($_tableName)');
    final hasColumn = columns.any((column) => column['name'] == columnName);
    if (!hasColumn) {
      await db.execute(
        'ALTER TABLE $_tableName ADD COLUMN $columnName $definition',
      );
    }
  }

  static int? _readInt(Object? value) {
    if (value is int) return value;
    if (value is num) return value.toInt();
    if (value is String) return int.tryParse(value.trim());
    return null;
  }

  static String? _readNonEmptyText(Object? value) {
    final normalized = value?.toString().trim();
    if (normalized == null || normalized.isEmpty) return null;
    return normalized;
  }

  static String? _readVerifiedAt(Object? value) {
    final normalized = _readNonEmptyText(value);
    if (normalized == null) return null;
    return DateTime.tryParse(normalized)?.toUtc().toIso8601String();
  }

  static List<Map<String, Object>> normalizeVerifiedTafsirRows(
    List<dynamic> tafsirs, {
    required int surahNumber,
    required String tafsirSource,
  }) {
    final canonicalSource = _canonicalSource(tafsirSource);
    final rows = <Map<String, Object>>[];

    for (final item in tafsirs) {
      if (item is! Map) {
        continue;
      }

      final tafsir = Map<String, dynamic>.from(item);
      final rowSurahNumber = _readInt(tafsir['surah_number']);
      if (rowSurahNumber != surahNumber) continue;

      final verseNumber = _readInt(tafsir['ayah_number']);
      if (verseNumber == null || verseNumber < 1) continue;

      final rowSourceId = _readNonEmptyText(tafsir['tafsir_source']);
      if (rowSourceId == null) {
        continue;
      }
      late final String canonicalRowSource;
      try {
        canonicalRowSource = _canonicalSource(rowSourceId);
      } on TafsirException {
        continue;
      }
      if (canonicalRowSource != canonicalSource) {
        continue;
      }

      final tafsirText = _readNonEmptyText(tafsir['tafsir_text']);
      final language = _readNonEmptyText(tafsir['language']);
      final source = _readNonEmptyText(tafsir['source']);
      final sourceLicense = _readNonEmptyText(tafsir['source_license']);
      final verifiedAt = _readVerifiedAt(tafsir['verified_at']);
      if (tafsirText == null ||
          language == null ||
          source == null ||
          sourceLicense == null ||
          verifiedAt == null) {
        continue;
      }

      rows.add({
        'surah_number': surahNumber,
        'verse_number': verseNumber,
        'tafsir_text': tafsirText,
        'tafsir_source': canonicalSource,
        'language': language,
        'source': source,
        'source_license': sourceLicense,
        'verified_at': verifiedAt,
      });
    }

    return List<Map<String, Object>>.unmodifiable(rows);
  }

  static Future<void> replaceVerifiedTafsirsForSurah({
    required int surahNumber,
    required String tafsirSource,
    required List<dynamic> tafsirs,
  }) async {
    final db = await database;
    final canonicalSource = _canonicalSource(tafsirSource);
    final cacheRows = normalizeVerifiedTafsirRows(
      tafsirs,
      surahNumber: surahNumber,
      tafsirSource: canonicalSource,
    );

    if (cacheRows.isEmpty) {
      throw TafsirException('no_entries');
    }

    await db.delete(
      _tableName,
      where: 'surah_number = ? AND tafsir_source = ?',
      whereArgs: [surahNumber, canonicalSource],
    );
    final batch = db.batch();
    for (final row in cacheRows) {
      batch.insert(_tableName, row);
    }

    await batch.commit(noResult: true);
  }

  static String _canonicalSource(String source) {
    final normalized = source.trim();
    final canonical = _legacySourceAliases[normalized] ?? normalized;
    if (_sourceToApiId.containsKey(canonical)) return canonical;
    throw TafsirException('unsupported_source', details: normalized);
  }

  static String canonicalTafsirSource(String source) =>
      _canonicalSource(source);

  static String get defaultTafsirSourceId {
    for (final tafsir in availableTafsirs) {
      final id = tafsir['id']?.trim();
      if (id != null && id.isNotEmpty) {
        return _canonicalSource(id);
      }
    }

    throw TafsirException('no_tafsir_sources');
  }

  static Future<String?> getTafsir({
    required int surahNumber,
    required int verseNumber,
    required String tafsirSource,
  }) async {
    final db = await database;
    final canonical = _canonicalSource(tafsirSource);

    final results = await db.query(
      _tableName,
      where:
          'surah_number = ? AND verse_number = ? AND tafsir_source = ? AND $_verifiedWhere',
      whereArgs: [surahNumber, verseNumber, canonical],
    );

    if (results.isEmpty) return null;
    return results.first['tafsir_text'] as String?;
  }

  static Future<List<Map<String, dynamic>>> getTafsirsForSurah({
    required int surahNumber,
    required String tafsirSource,
  }) async {
    final db = await database;
    final canonical = _canonicalSource(tafsirSource);

    return db.query(
      _tableName,
      where: 'surah_number = ? AND tafsir_source = ? AND $_verifiedWhere',
      whereArgs: [surahNumber, canonical],
      orderBy: 'verse_number ASC',
    );
  }

  static Future<bool> hasTafsirCached({
    required int surahNumber,
    required String tafsirSource,
  }) async {
    final db = await database;
    final canonical = _canonicalSource(tafsirSource);

    final count = Sqflite.firstIntValue(
      await db.rawQuery(
        'SELECT COUNT(*) FROM $_tableName WHERE surah_number = ? AND tafsir_source = ? AND $_verifiedWhere',
        [surahNumber, canonical],
      ),
    );
    return (count ?? 0) > 0;
  }

  static Future<bool> hasAllTafsirsCached() async {
    final db = await database;
    final count = Sqflite.firstIntValue(
      await db.rawQuery(
        'SELECT COUNT(DISTINCT surah_number) FROM $_tableName WHERE $_verifiedWhere',
      ),
    );
    return (count ?? 0) >= 114;
  }

  static Future<Map<String, int>> getCacheInfo() async {
    final db = await database;
    final totalVerses =
        Sqflite.firstIntValue(
          await db.rawQuery(
            'SELECT COUNT(*) FROM $_tableName WHERE $_verifiedWhere',
          ),
        ) ??
        0;
    final cachedSurahs =
        Sqflite.firstIntValue(
          await db.rawQuery(
            'SELECT COUNT(DISTINCT surah_number) FROM $_tableName WHERE $_verifiedWhere',
          ),
        ) ??
        0;
    return {'total_verses': totalVerses, 'cached_surahs': cachedSurahs};
  }

  static Future<void> clearCache() async {
    final db = await database;
    await db.delete(_tableName);
  }

  static List<Map<String, String>> get availableTafsirs => const [
    {
      'id': 'en.ibn_kathir',
      'name': 'Ibn Kathir (Abridged)',
      'language': 'English',
    },
    {'id': 'en.maarif', 'name': "Ma'arif al-Qur'an", 'language': 'English'},
    {'id': 'en.tazkir', 'name': 'Tazkirul Quran', 'language': 'English'},
    {'id': 'ar.muyassar', 'name': 'Tafsir Muyassar', 'language': 'Arabic'},
    {'id': 'ar.wasit', 'name': 'Al-Tafsir al-Wasit', 'language': 'Arabic'},
    {'id': 'ar.ibn_kathir', 'name': 'Tafsir Ibn Kathir', 'language': 'Arabic'},
  ];
}

enum TafsirFetchPolicy { cacheOnly }

typedef VerifiedTafsirRowsLoader =
    Future<List<Map<String, dynamic>>> Function({
      required int surahNumber,
      required String tafsirSource,
    });

class TafsirLoader {
  final int surahNumber;
  final String tafsirSource;
  final TafsirFetchPolicy fetchPolicy;
  final VerifiedTafsirRowsLoader? verifiedRowsLoader;

  TafsirLoader({
    required this.surahNumber,
    required this.tafsirSource,
    this.fetchPolicy = TafsirFetchPolicy.cacheOnly,
    this.verifiedRowsLoader,
  });

  Future<List<Map<String, dynamic>>> loadTafsir({
    bool forceRefresh = false,
    void Function(double progress, String message)? onProgress,
  }) async {
    final localTafsir = await TafsirLocalService.getTafsirsForSurah(
      surahNumber: surahNumber,
      tafsirSource: tafsirSource,
    );

    if (localTafsir.isNotEmpty && !forceRefresh) {
      return localTafsir;
    }

    final cloudTafsir = await _loadVerifiedRowsFromCloud(onProgress);
    if (cloudTafsir.isNotEmpty) {
      return cloudTafsir;
    }

    if (localTafsir.isNotEmpty) {
      return localTafsir;
    }

    throw TafsirException('cache_missing');
  }

  Future<List<Map<String, dynamic>>> _loadVerifiedRowsFromCloud(
    void Function(double progress, String message)? onProgress,
  ) async {
    final loader = verifiedRowsLoader;
    if (loader == null) {
      return const [];
    }

    try {
      final verifiedRows = await loader(
        surahNumber: surahNumber,
        tafsirSource: tafsirSource,
      );
      if (verifiedRows.isEmpty) {
        return const [];
      }

      await TafsirLocalService.replaceVerifiedTafsirsForSurah(
        surahNumber: surahNumber,
        tafsirSource: tafsirSource,
        tafsirs: verifiedRows,
      );
      onProgress?.call(1, 'load:${verifiedRows.length}:${verifiedRows.length}');
      return TafsirLocalService.getTafsirsForSurah(
        surahNumber: surahNumber,
        tafsirSource: tafsirSource,
      );
    } catch (_) {
      return const [];
    }
  }
}
