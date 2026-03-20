import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sirat_i_nur/presentation/blocs/settings_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

// --- Last Read State ---

class LastReadState {
  final int surahNumber;
  final String surahName;
  final int ayahNumber;

  LastReadState({
    required this.surahNumber,
    required this.surahName,
    required this.ayahNumber,
  });

  Map<String, dynamic> toMap() {
    return {
      'surahNumber': surahNumber,
      'surahName': surahName,
      'ayahNumber': ayahNumber,
    };
  }

  factory LastReadState.fromMap(Map<String, dynamic> map) {
    return LastReadState(
      surahNumber: map['surahNumber'] ?? 1,
      surahName: map['surahName'] ?? 'Al-Fatihah',
      ayahNumber: map['ayahNumber'] ?? 1,
    );
  }
}

class LastReadNotifier extends StateNotifier<LastReadState?> {
  final SharedPreferences _prefs;
  static const String _key = 'last_read_state';

  LastReadNotifier(this._prefs) : super(_loadState(_prefs));

  static LastReadState? _loadState(SharedPreferences prefs) {
    final data = prefs.getString(_key);
    if (data != null) {
      try {
        return LastReadState.fromMap(jsonDecode(data));
      } catch (e) {
        return null;
      }
    }
    return null;
  }

  Future<void> saveLastRead(int surahNumber, String surahName, int ayahNumber) async {
    final newState = LastReadState(
      surahNumber: surahNumber,
      surahName: surahName,
      ayahNumber: ayahNumber,
    );
    await _prefs.setString(_key, jsonEncode(newState.toMap()));
    state = newState;
  }
}

final lastReadProvider = StateNotifierProvider<LastReadNotifier, LastReadState?>((ref) {
  final prefs = ref.watch(sharedPreferencesProvider);
  return LastReadNotifier(prefs);
});

// --- Bookmarks State ---

class Bookmark {
  final int surahNumber;
  final String surahName;
  final int ayahNumber;
  final DateTime dateAdded;

  Bookmark({
    required this.surahNumber,
    required this.surahName,
    required this.ayahNumber,
    required this.dateAdded,
  });

  Map<String, dynamic> toMap() {
    return {
      'surahNumber': surahNumber,
      'surahName': surahName,
      'ayahNumber': ayahNumber,
      'dateAdded': dateAdded.toIso8601String(),
    };
  }

  factory Bookmark.fromMap(Map<String, dynamic> map) {
    return Bookmark(
      surahNumber: map['surahNumber']?.toInt() ?? 0,
      surahName: map['surahName'] ?? '',
      ayahNumber: map['ayahNumber']?.toInt() ?? 0,
      dateAdded: DateTime.parse(map['dateAdded'] ?? DateTime.now().toIso8601String()),
    );
  }
}

class BookmarksNotifier extends StateNotifier<List<Bookmark>> {
  final SharedPreferences _prefs;
  static const String _key = 'quran_bookmarks';

  BookmarksNotifier(this._prefs) : super(_loadBookmarks(_prefs));

  static List<Bookmark> _loadBookmarks(SharedPreferences prefs) {
    final data = prefs.getStringList(_key);
    if (data != null) {
      try {
        return data.map((x) => Bookmark.fromMap(jsonDecode(x))).toList();
      } catch (e) {
        return [];
      }
    }
    return [];
  }

  Future<void> toggleBookmark(int surahNumber, String surahName, int ayahNumber) async {
    final exists = state.any((b) => b.surahNumber == surahNumber && b.ayahNumber == ayahNumber);
    if (exists) {
      state = state.where((b) => !(b.surahNumber == surahNumber && b.ayahNumber == ayahNumber)).toList();
    } else {
      final newBookmark = Bookmark(
        surahNumber: surahNumber,
        surahName: surahName,
        ayahNumber: ayahNumber,
        dateAdded: DateTime.now(),
      );
      state = [...state, newBookmark];
    }
    
    // Save to prefs
    final stringList = state.map((b) => jsonEncode(b.toMap())).toList();
    await _prefs.setStringList(_key, stringList);
  }
  
  bool isBookmarked(int surahNumber, int ayahNumber) {
    return state.any((b) => b.surahNumber == surahNumber && b.ayahNumber == ayahNumber);
  }
}

final bookmarksProvider = StateNotifierProvider<BookmarksNotifier, List<Bookmark>>((ref) {
  final prefs = ref.watch(sharedPreferencesProvider);
  return BookmarksNotifier(prefs);
});
