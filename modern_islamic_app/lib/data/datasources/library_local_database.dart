import 'dart:async';
import 'dart:io';
import 'package:flutter/services.dart' show rootBundle;
import 'package:sirat_i_nur/domain/entities/hadith_entity.dart';
import 'package:sirat_i_nur/domain/entities/library_status.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class LibraryLocalDatabase {
  static final LibraryLocalDatabase _instance = LibraryLocalDatabase._internal();
  static Database? _database;
  LibraryStatus? _cachedStatus;
  String? _loadedAssetPath;

  factory LibraryLocalDatabase() => _instance;

  LibraryLocalDatabase._internal();

  Completer<Database>? _dbCompleter;

  Future<Database> get database async {
    if (_database != null) return _database!;
    if (_dbCompleter != null) return _dbCompleter!.future;

    _dbCompleter = Completer<Database>();
    try {
      _database = await _initDatabase().timeout(const Duration(seconds: 5));
      _dbCompleter!.complete(_database);
      return _database!;
    } catch (e) {
      if (!_dbCompleter!.isCompleted) {
        _dbCompleter!.completeError(e);
      }
      _dbCompleter = null;
      rethrow;
    }
  }

  Future<Database> _initDatabase() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, "islamic_library_mvp.db");

    // Check if the database already exists on the device
    final exists = await databaseExists(path);

    if (!exists) {
      // In production, this copies a massive multi-MB file from flutter assets
      // For MVP dev, we mock the creation of tables to prevent immediate crashes.
      try {
        await Directory(dirname(path)).create(recursive: true);

        final copied = await _tryCopyFromAssets(path);
        if (copied) {
          return await openDatabase(path, readOnly: true);
        }

        // Mocking the DB creation for the MVP skeleton
        final currentDb = await openDatabase(
          path,
          version: 1,
          onCreate: _createMockTables,
        );
        return currentDb;
      } catch (e) {
        throw Exception("Error initializing massive Library Database: $e");
      }
    }

    return await openDatabase(path, readOnly: true); // Read-only for massive query performance
  }

  Future<bool> _tryCopyFromAssets(String dbPath) async {
    const possibleAssets = [
      'assets/data/islamic_library_mvp.db',
      'assets/data/islamic_library.db',
      'assets/data/hadith_library.db',
    ];

    for (final assetPath in possibleAssets) {
      try {
        final byteData = await rootBundle.load(assetPath);
        final bytes = byteData.buffer.asUint8List(
          byteData.offsetInBytes,
          byteData.lengthInBytes,
        );
        final file = File(dbPath);
        await file.writeAsBytes(bytes, flush: true);
        _loadedAssetPath = assetPath;
        return true;
      } catch (_) {
        // Try the next asset path
      }
    }
    return false;
  }

  Future<void> _createMockTables(Database db, int version) async {
    // Scaffold out the tables so UI components can query them without crashing
    await db.execute('''
      CREATE TABLE hadith_collections (
        id TEXT PRIMARY KEY,
        name TEXT,
        hasanText TEXT,
        totalHadiths INTEGER
      )
    ''');
    await db.execute('''
      CREATE TABLE hadiths (
        id INTEGER PRIMARY KEY,
        collectionId TEXT,
        hadithNumber INTEGER,
        arabicText TEXT,
        translation TEXT,
        chapterName TEXT,
        bookName TEXT,
        grade TEXT,
        FOREIGN KEY (collectionId) REFERENCES hadith_collections (id)
      )
    ''');

    // Seed mock collections (no hadith text until an official dataset is installed)
    await db.insert('hadith_collections', {
      'id': 'bukhari',
      'name': 'Sahih al-Bukhari',
      'hasanText': 'Authentic',
      'totalHadiths': 0,
    });
    await db.insert('hadith_collections', {
      'id': 'muslim',
      'name': 'Sahih Muslim',
      'hasanText': 'Authentic',
      'totalHadiths': 0,
    });
    await db.insert('hadith_collections', {
      'id': 'abudawud',
      'name': 'Sunan Abu Dawud',
      'hasanText': 'Authentic',
      'totalHadiths': 0,
    });
    await db.insert('hadith_collections', {
      'id': 'tirmidhi',
      'name': 'Jami at-Tirmidhi',
      'hasanText': 'Authentic',
      'totalHadiths': 0,
    });
    await db.insert('hadith_collections', {
      'id': 'nasai',
      'name': 'Sunan an-Nasai',
      'hasanText': 'Authentic',
      'totalHadiths': 0,
    });
    await db.insert('hadith_collections', {
      'id': 'ibnmajah',
      'name': 'Sunan Ibn Majah',
      'hasanText': 'Authentic',
      'totalHadiths': 0,
    });
  }

  // --- Massive Data Querying Methods --- //

  Future<List<HadithCollection>> getAllCollections() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('hadith_collections');
    return maps.map((e) => HadithCollection.fromJson(e)).toList();
  }

  Future<List<HadithEntity>> getHadithsList(String collectionId, {int limit = 50, int offset = 0}) async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query(
      'hadiths',
      where: 'collectionId = ?',
      whereArgs: [collectionId],
      limit: limit,
      offset: offset,
    );
    return maps.map((e) => HadithEntity.fromJson(e)).toList();
  }

  Future<List<HadithEntity>> searchHadiths(String query, {String? collectionId, int limit = 50, int offset = 0}) async {
    final trimmed = query.trim();
    if (trimmed.isEmpty) return [];

    final db = await database;
    final likeQuery = '%$trimmed%';

    String whereClause = '(arabicText LIKE ? OR translation LIKE ? OR chapterName LIKE ? OR bookName LIKE ?)';
    final whereArgs = [likeQuery, likeQuery, likeQuery, likeQuery];

    if (collectionId != null && collectionId.isNotEmpty) {
      whereClause = 'collectionId = ? AND $whereClause';
      whereArgs.insert(0, collectionId);
    }

    final List<Map<String, dynamic>> maps = await db.query(
      'hadiths',
      where: whereClause,
      whereArgs: whereArgs,
      limit: limit,
      offset: offset,
      orderBy: 'id ASC',
    );

    return maps.map((e) => HadithEntity.fromJson(e)).toList();
  }

  Future<LibraryStatus> getStatus({bool forceRefresh = false}) async {
    if (!forceRefresh && _cachedStatus != null) return _cachedStatus!;

    final db = await database;
    final tables = await db.rawQuery(
      "SELECT name FROM sqlite_master WHERE type='table'",
    );
    final tableNames = tables.map((row) => row['name']?.toString()).whereType<String>().toSet();

    final hasCollections = tableNames.contains('hadith_collections');
    final hasHadiths = tableNames.contains('hadiths');
    final hasMetadata = tableNames.contains('library_metadata');

    int collectionCount = 0;
    int hadithCount = 0;
    int collectionTotalSum = 0;

    if (hasCollections) {
      collectionCount = Sqflite.firstIntValue(
            await db.rawQuery('SELECT COUNT(*) FROM hadith_collections'),
          ) ??
          0;
      collectionTotalSum = Sqflite.firstIntValue(
            await db.rawQuery('SELECT COALESCE(SUM(totalHadiths), 0) FROM hadith_collections'),
          ) ??
          0;
    }

    if (hasHadiths) {
      hadithCount = Sqflite.firstIntValue(
            await db.rawQuery('SELECT COUNT(*) FROM hadiths'),
          ) ??
          0;
    }

    if (hadithCount == 0 && collectionTotalSum > 0) {
      hadithCount = collectionTotalSum;
    }

    String? sourceName;
    String? sourceVersion;
    String? sourceNotes;

    if (hasMetadata) {
      try {
        final rows = await db.query('library_metadata');
        for (final row in rows) {
          final key = (row['key'] ?? row['name'] ?? row['k'])?.toString();
          final value = (row['value'] ?? row['val'] ?? row['v'])?.toString();
          if (key == null || value == null) continue;
          final normalizedKey = key.toLowerCase();
          if (normalizedKey == 'source' || normalizedKey == 'source_name') {
            sourceName = value;
          } else if (normalizedKey == 'version' || normalizedKey == 'source_version') {
            sourceVersion = value;
          } else if (normalizedKey == 'notes' || normalizedKey == 'source_notes') {
            sourceNotes = value;
          }
        }
      } catch (_) {
        // Metadata is optional; ignore read errors to keep UI stable.
      }
    }

    int? dbUserVersion;
    try {
      dbUserVersion = Sqflite.firstIntValue(
        await db.rawQuery('PRAGMA user_version'),
      );
    } catch (_) {
      dbUserVersion = null;
    }

    final status = LibraryStatus(
      dataPackInstalled: hadithCount > 0,
      collectionCount: collectionCount,
      hadithCount: hadithCount,
      sourceName: sourceName,
      sourceVersion: sourceVersion,
      sourceNotes: sourceNotes,
      databaseUserVersion: dbUserVersion,
      assetPath: _loadedAssetPath,
    );

    _cachedStatus = status;
    return status;
  }
}
