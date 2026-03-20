import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:sirat_i_nur/domain/entities/surah_entity.dart';
import 'package:sirat_i_nur/domain/entities/ayah_entity.dart';
import 'package:sirat_i_nur/domain/entities/quran_db_status.dart';

class QuranLocalDatabase {
  static final QuranLocalDatabase instance = QuranLocalDatabase._init();
  static Database? _database;
  static const String _dbName = 'quran_v3.db';
  QuranDbStatus? _cachedStatus;
  String? _dbPath;

  QuranLocalDatabase._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB(_dbName);
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);
    _dbPath = path;

    return await openDatabase(
      path,
      version: 1,
      onConfigure: (db) async {
        await db.execute('PRAGMA foreign_keys = ON');
      },
      onCreate: _createDB,
    );
  }

  Future<QuranDbStatus> getStatus({bool forceRefresh = false}) async {
    if (!forceRefresh && _cachedStatus != null) return _cachedStatus!;

    final db = await instance.database;

    int surahCount = 0;
    int ayahCount = 0;
    int missingArabic = 0;
    int missingEnglish = 0;
    int missingTurkish = 0;
    int? dbUserVersion;

    try {
      surahCount = Sqflite.firstIntValue(
            await db.rawQuery('SELECT COUNT(*) FROM surahs'),
          ) ??
          0;
    } catch (_) {
      surahCount = 0;
    }

    try {
      ayahCount = Sqflite.firstIntValue(
            await db.rawQuery('SELECT COUNT(*) FROM ayahs'),
          ) ??
          0;
    } catch (_) {
      ayahCount = 0;
    }

    try {
      missingArabic = Sqflite.firstIntValue(
            await db.rawQuery("SELECT COUNT(*) FROM ayahs WHERE text IS NULL OR text = ''"),
          ) ??
          0;
    } catch (_) {
      missingArabic = 0;
    }

    try {
      missingEnglish = Sqflite.firstIntValue(
            await db.rawQuery("SELECT COUNT(*) FROM ayahs WHERE enTranslation IS NULL OR enTranslation = ''"),
          ) ??
          0;
    } catch (_) {
      missingEnglish = 0;
    }

    try {
      missingTurkish = Sqflite.firstIntValue(
            await db.rawQuery("SELECT COUNT(*) FROM ayahs WHERE trTranslation IS NULL OR trTranslation = ''"),
          ) ??
          0;
    } catch (_) {
      missingTurkish = 0;
    }

    try {
      dbUserVersion = Sqflite.firstIntValue(
        await db.rawQuery('PRAGMA user_version'),
      );
    } catch (_) {
      dbUserVersion = null;
    }

    final status = QuranDbStatus(
      surahCount: surahCount,
      ayahCount: ayahCount,
      missingArabicCount: missingArabic,
      missingEnglishCount: missingEnglish,
      missingTurkishCount: missingTurkish,
      databaseUserVersion: dbUserVersion,
      databasePath: _dbPath,
    );

    _cachedStatus = status;
    return status;
  }

  Future<void> _createDB(Database db, int version) async {
    const surahTable = '''
    CREATE TABLE surahs (
      number INTEGER PRIMARY KEY,
      name TEXT NOT NULL,
      englishName TEXT NOT NULL,
      englishNameTranslation TEXT NOT NULL,
      revelationType TEXT NOT NULL,
      numberOfAyahs INTEGER NOT NULL
    )
    ''';

    const ayahTable = '''
    CREATE TABLE ayahs (
      number INTEGER PRIMARY KEY,
      surahNumber INTEGER NOT NULL,
      text TEXT NOT NULL,
      numberInSurah INTEGER NOT NULL,
      juz INTEGER NOT NULL,
      enTranslation TEXT NOT NULL,
      trTranslation TEXT NOT NULL,
      FOREIGN KEY (surahNumber) REFERENCES surahs (number)
    )
    ''';

    await db.execute(surahTable);
    await db.execute(ayahTable);
    await db.execute('CREATE INDEX idx_ayahs_surah ON ayahs (surahNumber)');
    await db.execute('CREATE INDEX idx_ayahs_juz ON ayahs (juz)');

    // Initial seed from full_quran.json
    try {
      final jsonString = await rootBundle.loadString('assets/data/full_quran.json');
      final List<dynamic> fullQuranJson = json.decode(jsonString) as List<dynamic>;

      final batch = db.batch();

      for (final surahRaw in fullQuranJson) {
        final surah = (surahRaw as Map).cast<String, dynamic>();
        final List<dynamic> ayahsRaw = (surah['ayahs'] as List<dynamic>? ?? const []);

        batch.insert('surahs', {
          'number': _readInt(surah, 'number'),
          'name': _readString(surah, ['name']),
          'englishName': _readString(surah, ['englishName']),
          'englishNameTranslation': _readString(surah, ['englishNameTranslation']),
          'revelationType': _readString(surah, ['revelationType']),
          'numberOfAyahs': ayahsRaw.length,
        });

        for (final ayahRaw in ayahsRaw) {
          final ayah = (ayahRaw as Map).cast<String, dynamic>();
          final enTranslation = _readString(ayah, ['enTranslation', 'en_translation', 'en']);
          final trTranslation = _readString(ayah, ['trTranslation', 'tr_translation', 'tr']);

          batch.insert('ayahs', {
            'number': _readInt(ayah, 'number'),
            'surahNumber': _readInt(surah, 'number'),
            'text': _readString(ayah, ['text']),
            'numberInSurah': _readInt(ayah, 'numberInSurah'),
            'juz': _readInt(ayah, 'juz'),
            'enTranslation': enTranslation,
            'trTranslation': trTranslation,
          });
        }
      }

      await batch.commit(noResult: true);
    } catch (e) {
      // Keep a clear error for debugging seed issues without crashing app init.
      debugPrint('Database Seeding Error: $e');
    }
  }

  static int _readInt(Map<String, dynamic> map, String key, {int fallback = 0}) {
    final value = map[key];
    if (value is int) return value;
    if (value is num) return value.toInt();
    if (value is String) return int.tryParse(value) ?? fallback;
    return fallback;
  }

  static String _readString(Map<String, dynamic> map, List<String> keys, {String fallback = ''}) {
    for (final key in keys) {
      final value = map[key];
      if (value is String && value.trim().isNotEmpty) {
        return value;
      }
    }
    return fallback;
  }

  Future<List<SurahEntity>> getAllSurahs() async {
    final db = await instance.database;
    final result = await db.query('surahs', orderBy: 'number ASC');

    return result
        .map(
          (json) => SurahEntity(
            number: json['number'] as int,
            name: json['name'] as String,
            englishName: json['englishName'] as String,
            englishNameTranslation: json['englishNameTranslation'] as String,
            revelationType: json['revelationType'] as String,
            numberOfAyahs: json['numberOfAyahs'] as int,
          ),
        )
        .toList();
  }

  Future<List<AyahEntity>> getAyahsForSurah(int surahNumber) async {
    final db = await instance.database;
    final result = await db.query(
      'ayahs',
      where: 'surahNumber = ?',
      whereArgs: [surahNumber],
      orderBy: 'numberInSurah ASC',
    );

    return result
        .map(
          (json) => AyahEntity(
            number: json['number'] as int,
            surahNumber: json['surahNumber'] as int,
            text: json['text'] as String,
            enTranslation: json['enTranslation'] as String,
            trTranslation: json['trTranslation'] as String,
            numberInSurah: json['numberInSurah'] as int,
            juz: json['juz'] as int,
            manzil: 0,
            page: 0,
            ruku: 0,
            hizbQuarter: 0,
            sajda: false,
          ),
        )
        .toList();
  }

  Future<List<AyahEntity>> getAyahsForJuz(int juzNumber) async {
    final db = await instance.database;
    final result = await db.query(
      'ayahs',
      where: 'juz = ?',
      whereArgs: [juzNumber],
      orderBy: 'number ASC',
    );

    return result
        .map(
          (json) => AyahEntity(
            number: json['number'] as int,
            surahNumber: json['surahNumber'] as int,
            text: json['text'] as String,
            enTranslation: json['enTranslation'] as String,
            trTranslation: json['trTranslation'] as String,
            numberInSurah: json['numberInSurah'] as int,
            juz: json['juz'] as int,
            manzil: 0,
            page: 0,
            ruku: 0,
            hizbQuarter: 0,
            sajda: false,
          ),
        )
        .toList();
  }
}
