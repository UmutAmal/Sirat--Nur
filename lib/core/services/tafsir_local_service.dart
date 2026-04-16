import 'package:dio/dio.dart';
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
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  static Future<Database> _initDatabase() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, _dbName);

    return openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE $_tableName (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            surah_number INTEGER NOT NULL,
            verse_number INTEGER NOT NULL,
            tafsir_text TEXT NOT NULL,
            tafsir_source TEXT NOT NULL,
            UNIQUE(surah_number, verse_number, tafsir_source)
          )
        ''');
        await db.execute('''
          CREATE INDEX idx_surah_verse_source ON $_tableName(surah_number, verse_number, tafsir_source)
        ''');
      },
    );
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

  static List<Map<String, Object>> normalizeApiTafsirRows(
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
      final verseKey = (tafsir['verse_key'] ?? '').toString();
      final parts = verseKey.split(':');
      if (parts.length != 2) continue;

      final verseSurahNumber = int.tryParse(parts[0]);
      if (verseSurahNumber != surahNumber) continue;

      final verseNumber = int.tryParse(parts[1]);
      if (verseNumber == null || verseNumber < 1) continue;

      final rawText = (tafsir['text'] ?? '').toString();
      final cleanedText = _stripHtml(rawText);
      if (cleanedText.isEmpty) continue;

      rows.add({
        'surah_number': surahNumber,
        'verse_number': verseNumber,
        'tafsir_text': cleanedText,
        'tafsir_source': canonicalSource,
      });
    }

    return List<Map<String, Object>>.unmodifiable(rows);
  }

  static int _apiIdForSource(String source) {
    final canonical = _canonicalSource(source);
    return _sourceToApiId[canonical] ?? 169;
  }

  static String _stripHtml(String input) {
    final noTags = input
        .replaceAll(RegExp(r'<[^>]*>'), ' ')
        .replaceAll('&nbsp;', ' ')
        .replaceAll('&amp;', '&')
        .replaceAll('&quot;', '"')
        .replaceAll('&#39;', '\'')
        .replaceAll('&lt;', '<')
        .replaceAll('&gt;', '>');
    return noTags.replaceAll(RegExp(r'\s+'), ' ').trim();
  }

  static Future<void> downloadTafsirForSurah({
    required int surahNumber,
    required String tafsirSource,
    void Function(int current, int total)? onProgress,
  }) async {
    final db = await database;
    final canonicalSource = _canonicalSource(tafsirSource);
    final apiId = _apiIdForSource(canonicalSource);
    final dio = Dio();

    final response = await dio
        .get(
          'https://api.quran.com/api/v4/tafsirs/$apiId/by_chapter/$surahNumber',
          options: Options(headers: {'Accept': 'application/json'}),
        )
        .timeout(const Duration(minutes: 2));

    if (response.statusCode != 200) {
      throw TafsirException(
        'api_status',
        details: response.statusCode?.toString(),
      );
    }

    final data = response.data as Map<String, dynamic>;
    final tafsirs = (data['tafsirs'] as List<dynamic>? ?? const <dynamic>[]);
    if (tafsirs.isEmpty) {
      throw TafsirException('no_entries');
    }

    final cacheRows = normalizeApiTafsirRows(
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
    for (var index = 0; index < cacheRows.length; index++) {
      batch.insert(_tableName, cacheRows[index]);
      onProgress?.call(index + 1, cacheRows.length);
    }

    await batch.commit(noResult: true);
  }

  static Future<void> downloadAllTafsirs({
    required String tafsirSource,
    void Function(double progress, String message)? onProgress,
  }) async {
    const totalSurahs = 114;
    var completed = 0;

    for (var surah = 1; surah <= totalSurahs; surah++) {
      await downloadTafsirForSurah(
        surahNumber: surah,
        tafsirSource: tafsirSource,
        onProgress: (current, total) {
          final currentSurahProgress = current / total;
          final overall = (completed + currentSurahProgress) / totalSurahs;
          onProgress?.call(overall, 'download:$surah:$totalSurahs');
        },
      );
      completed++;
    }
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
      where: 'surah_number = ? AND verse_number = ? AND tafsir_source = ?',
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
      where: 'surah_number = ? AND tafsir_source = ?',
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
        'SELECT COUNT(*) FROM $_tableName WHERE surah_number = ? AND tafsir_source = ?',
        [surahNumber, canonical],
      ),
    );
    return (count ?? 0) > 0;
  }

  static Future<bool> hasAllTafsirsCached() async {
    final db = await database;
    final count = Sqflite.firstIntValue(
      await db.rawQuery('SELECT COUNT(DISTINCT surah_number) FROM $_tableName'),
    );
    return (count ?? 0) >= 114;
  }

  static Future<Map<String, int>> getCacheInfo() async {
    final db = await database;
    final totalVerses =
        Sqflite.firstIntValue(
          await db.rawQuery('SELECT COUNT(*) FROM $_tableName'),
        ) ??
        0;
    final cachedSurahs =
        Sqflite.firstIntValue(
          await db.rawQuery(
            'SELECT COUNT(DISTINCT surah_number) FROM $_tableName',
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

class TafsirLoader {
  final int surahNumber;
  final String tafsirSource;

  TafsirLoader({required this.surahNumber, required this.tafsirSource});

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

    await TafsirLocalService.downloadTafsirForSurah(
      surahNumber: surahNumber,
      tafsirSource: tafsirSource,
      onProgress: (current, total) {
        final progress = total == 0 ? 0.0 : current / total;
        onProgress?.call(progress, 'load:$current:$total');
      },
    );

    return TafsirLocalService.getTafsirsForSurah(
      surahNumber: surahNumber,
      tafsirSource: tafsirSource,
    );
  }
}
