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
  static const Set<String> _approvedTafsirSourceHosts = {
    'quran.com',
    'quran.gov.sa',
    'diyanet.gov.tr',
    'islamansiklopedisi.org.tr',
    'islamhouse.com',
    'dar-alifta.org',
    'habous.gov.ma',
  };

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

  static const List<int> _quranAyahCountsBySurah = [
    0,
    7,
    286,
    200,
    176,
    120,
    165,
    206,
    75,
    129,
    109,
    123,
    111,
    43,
    52,
    99,
    128,
    111,
    110,
    98,
    135,
    112,
    78,
    118,
    64,
    77,
    227,
    93,
    88,
    69,
    60,
    34,
    30,
    73,
    54,
    45,
    83,
    182,
    88,
    75,
    85,
    54,
    53,
    89,
    59,
    37,
    35,
    38,
    29,
    18,
    45,
    60,
    49,
    62,
    55,
    78,
    96,
    29,
    22,
    24,
    13,
    14,
    11,
    11,
    18,
    12,
    12,
    30,
    52,
    52,
    44,
    28,
    28,
    20,
    56,
    40,
    31,
    50,
    40,
    46,
    42,
    29,
    19,
    36,
    25,
    22,
    17,
    19,
    26,
    30,
    20,
    15,
    21,
    11,
    8,
    8,
    19,
    5,
    8,
    8,
    11,
    11,
    8,
    3,
    9,
    5,
    4,
    7,
    3,
    6,
    3,
    5,
    4,
    5,
    6,
  ];

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

  static bool _isValidQuranReference({
    required int surahNumber,
    required int ayahNumber,
  }) {
    if (surahNumber < 1 || surahNumber >= _quranAyahCountsBySurah.length) {
      return false;
    }

    final ayahCount = _quranAyahCountsBySurah[surahNumber];
    return ayahNumber >= 1 && ayahNumber <= ayahCount;
  }

  static bool isApprovedTafsirSourceUrl(String source) {
    final uri = Uri.tryParse(source.trim());
    if (uri == null ||
        !uri.isScheme('https') ||
        uri.host.trim().isEmpty ||
        uri.userInfo.isNotEmpty ||
        uri.hasQuery ||
        uri.hasFragment) {
      return false;
    }

    final host = uri.host.toLowerCase();
    return _approvedTafsirSourceHosts.any(
      (approvedHost) => host == approvedHost || host.endsWith('.$approvedHost'),
    );
  }

  static bool _hasApprovedTafsirCacheProvenance(Map<String, Object?> row) {
    final source = _readNonEmptyText(row['source']);
    final sourceLicense = _readNonEmptyText(row['source_license']);
    final verifiedAt = _readVerifiedAt(row['verified_at']);
    return source != null &&
        sourceLicense != null &&
        verifiedAt != null &&
        isApprovedTafsirSourceUrl(source);
  }

  static List<Map<String, dynamic>> _filterVerifiedTafsirCacheRows(
    List<Map<String, Object?>> rows,
  ) {
    return rows
        .where(_hasApprovedTafsirCacheProvenance)
        .map(Map<String, dynamic>.from)
        .toList(growable: false);
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
      if (verseNumber == null ||
          !_isValidQuranReference(
            surahNumber: surahNumber,
            ayahNumber: verseNumber,
          )) {
        continue;
      }

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
          !isApprovedTafsirSourceUrl(source) ||
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
    final verifiedResults = _filterVerifiedTafsirCacheRows(results);

    if (verifiedResults.isEmpty) return null;
    return verifiedResults.first['tafsir_text'] as String?;
  }

  static Future<List<Map<String, dynamic>>> getTafsirsForSurah({
    required int surahNumber,
    required String tafsirSource,
  }) async {
    final db = await database;
    final canonical = _canonicalSource(tafsirSource);

    final results = await db.query(
      _tableName,
      where: 'surah_number = ? AND tafsir_source = ? AND $_verifiedWhere',
      whereArgs: [surahNumber, canonical],
      orderBy: 'verse_number ASC',
    );
    return _filterVerifiedTafsirCacheRows(results);
  }

  static Future<bool> hasTafsirCached({
    required int surahNumber,
    required String tafsirSource,
  }) async {
    return (await getTafsirsForSurah(
      surahNumber: surahNumber,
      tafsirSource: tafsirSource,
    )).isNotEmpty;
  }

  static Future<bool> hasAllTafsirsCached() async {
    final db = await database;
    final rows = _filterVerifiedTafsirCacheRows(
      await db.query(
        _tableName,
        columns: ['surah_number', 'source', 'source_license', 'verified_at'],
        where: _verifiedWhere,
      ),
    );
    final cachedSurahs = rows
        .map((row) => _readInt(row['surah_number']))
        .whereType<int>()
        .toSet();
    return cachedSurahs.length >= 114;
  }

  static Future<Map<String, int>> getCacheInfo() async {
    final db = await database;
    final rows = _filterVerifiedTafsirCacheRows(
      await db.query(
        _tableName,
        columns: ['surah_number', 'source', 'source_license', 'verified_at'],
        where: _verifiedWhere,
      ),
    );
    final cachedSurahs = rows
        .map((row) => _readInt(row['surah_number']))
        .whereType<int>()
        .toSet()
        .length;
    final totalVerses = rows.length;
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
    {'id': 'ar.baghawi', 'name': 'Tafseer Al-Baghawi', 'language': 'Arabic'},
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
