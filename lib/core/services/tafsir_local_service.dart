import 'package:dio/dio.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

/// Local Tafsir Database Service
/// Fetches tafsir from quran.com API and caches locally in SQLite
class TafsirLocalService {
  static Database? _database;
  static const String _dbName = 'tafsir_cache.db';
  static const String _tableName = 'tafsir';
  
  /// Initialize database
  static Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }
  
  static Future<Database> _initDatabase() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, _dbName);
    
    return await openDatabase(
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
        
        // Create index for faster queries
        await db.execute('''
          CREATE INDEX idx_surah_verse ON $_tableName(surah_number, verse_number)
        ''');
      },
    );
  }
  
  /// Download and cache tafsir for a specific surah
  static Future<void> downloadTafsirForSurah({
    required int surahNumber,
    required String tafsirSource,
    Function(int, int)? onProgress,
  }) async {
    final dio = Dio();
    final db = await database;
    
    try {
      // Fetch verses for this surah
      final response = await dio.get(
        'https://api.quran.com/api/v4/verses/by_chapter/$surahNumber',
        queryParameters: {
          'language': 'en',
          'words': false,
          'tafsirs': tafsirSource,
        },
        options: Options(headers: {'Accept': 'application/json'})
      ).timeout(const Duration(minutes: 2));
      
      if (response.statusCode == 200) {
        final data = response.data;
        final verses = data['verses'] as List?;
        
        if (verses != null && verses.isNotEmpty) {
          // Clear old tafsir for this surah and source
          await db.delete(
            _tableName,
            where: 'surah_number = ? AND tafsir_source = ?',
            whereArgs: [surahNumber, tafsirSource],
          );
          
          // Insert new tafsir
          final batch = db.batch();
          int count = 0;
          
          for (final verse in verses) {
            final tafsirData = verse['tafsirs'] as List?;
            String tafsirText = 'No tafsir available.';
            
            if (tafsirData != null && tafsirData.isNotEmpty) {
              tafsirText = tafsirData[0]['text'] ?? tafsirText;
            }
            
            batch.insert(_tableName, {
              'surah_number': surahNumber,
              'verse_number': verse['verse_number'],
              'tafsir_text': tafsirText,
              'tafsir_source': tafsirSource,
            });
            
            count++;
            onProgress?.call(count, verses.length);
          }
          
          await batch.commit(noResult: true);
        }
      }
    } catch (e) {
      rethrow;
    }
  }
  
  /// Download all tafsirs (114 surahs)
  static Future<void> downloadAllTafsirs({
    required String tafsirSource,
    Function(double, String)? onProgress,
  }) async {
    int totalSurahs = 114;
    int completedSurahs = 0;
    
    for (int surah = 1; surah <= totalSurahs; surah++) {
      try {
        await downloadTafsirForSurah(
          surahNumber: surah,
          tafsirSource: tafsirSource,
          onProgress: (current, total) {
            double progress = ((completedSurahs * 100) + (current / total * 100)) / totalSurahs;
            onProgress?.call(progress, 'Indiriliyor: $surah/$totalSurahs');
          },
        );
      } catch (e) {
        // Continue with next surah if one fails
        continue;
      }
      
      completedSurahs++;
    }
  }
  
  /// Get tafsir for a specific verse from local cache
  static Future<String?> getTafsir({
    required int surahNumber,
    required int verseNumber,
    required String tafsirSource,
  }) async {
    final db = await database;
    
    final results = await db.query(
      _tableName,
      where: 'surah_number = ? AND verse_number = ? AND tafsir_source = ?',
      whereArgs: [surahNumber, verseNumber, tafsirSource],
    );
    
    if (results.isNotEmpty) {
      return results.first['tafsir_text'] as String;
    }
    
    return null;
  }
  
  /// Get all tafsirs for a surah
  static Future<List<Map<String, dynamic>>> getTafsirsForSurah({
    required int surahNumber,
    required String tafsirSource,
  }) async {
    final db = await database;
    
    return await db.query(
      _tableName,
      where: 'surah_number = ? AND tafsir_source = ?',
      whereArgs: [surahNumber, tafsirSource],
      orderBy: 'verse_number ASC',
    );
  }
  
  /// Check if tafsir is cached
  static Future<bool> hasTafsirCached({
    required int surahNumber,
    required String tafsirSource,
  }) async {
    final db = await database;
    
    final count = Sqflite.firstIntValue(await db.rawQuery(
      'SELECT COUNT(*) FROM $_tableName WHERE surah_number = ? AND tafsir_source = ?',
      [surahNumber, tafsirSource],
    ));
    
    return (count ?? 0) > 0;
  }
  
  /// Check if all tafsirs are cached
  static Future<bool> hasAllTafsirsCached() async {
    final db = await database;
    
    final count = Sqflite.firstIntValue(await db.rawQuery(
      'SELECT COUNT(DISTINCT surah_number) FROM $_tableName',
    ));
    
    return (count ?? 0) >= 114;
  }
  
  /// Get cache size info
  static Future<Map<String, int>> getCacheInfo() async {
    final db = await database;
    
    final count = Sqflite.firstIntValue(
      await db.rawQuery('SELECT COUNT(*) FROM $_tableName'),
    ) ?? 0;
    
    final surahCount = Sqflite.firstIntValue(
      await db.rawQuery('SELECT COUNT(DISTINCT surah_number) FROM $_tableName'),
    ) ?? 0;
    
    return {
      'total_verses': count,
      'cached_surahs': surahCount,
    };
  }
  
  /// Clear cache
  static Future<void> clearCache() async {
    final db = await database;
    await db.delete(_tableName);
  }
  
  /// Get available tafsir sources
  static List<Map<String, String>> get availableTafsirs => [
    {'id': 'en.sahih', 'name': 'Saheeh International', 'language': 'English'},
    {'id': 'en.arabicexpert', 'name': 'Arabic Expert', 'language': 'English'},
    {'id': 'en.aisah', 'name': 'Aisha Bewley', 'language': 'English'},
    {'id': 'en.khalifamag', 'name': 'Khalifa Magdy', 'language': 'English'},
    {'id': 'en.muhammadtaqiusmani', 'name': 'Muhammad Taqi Usmani', 'language': 'English'},
    {'id': 'tr.yazir', 'name': 'Elmalılı Hamdi Yazır', 'language': 'Türkçe'},
    {'id': 'tr.suati', 'name': 'Suat Yıldırım', 'language': 'Türkçe'},
    {'id': 'tr.ozturk', 'name': 'Öztürk', 'language': 'Türkçe'},
    {'id': 'ar.maqdisi', 'name': 'Al-Maqdisi', 'language': 'Arabic'},
    {'id': 'ar.muyassar', 'name': 'Al-Muyassar', 'language': 'Arabic'},
  ];
}

/// Offline-first tafsir loading helper
class TafsirLoader {
  final int surahNumber;
  final String tafsirSource;
  
  TafsirLoader({
    required this.surahNumber,
    required this.tafsirSource,
  });
  
  /// Load tafsir - tries local first, then fetches from API
  Future<List<Map<String, dynamic>>> loadTafsir({
    bool forceRefresh = false,
    Function(double, String)? onProgress,
  }) async {
    // Try local first
    final localTafsir = await TafsirLocalService.getTafsirsForSurah(
      surahNumber: surahNumber,
      tafsirSource: tafsirSource,
    );
    
    if (localTafsir.isNotEmpty && !forceRefresh) {
      return localTafsir;
    }
    
    // Download from API
    await TafsirLocalService.downloadTafsirForSurah(
      surahNumber: surahNumber,
      tafsirSource: tafsirSource,
      onProgress: (current, total) {
        double progress = (current / total) * 100;
        onProgress?.call(progress, 'Yükleniyor: $current/$total');
      },
    );
    
    // Return downloaded tafsir
    return await TafsirLocalService.getTafsirsForSurah(
      surahNumber: surahNumber,
      tafsirSource: tafsirSource,
    );
  }
}
