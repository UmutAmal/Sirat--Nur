import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final supabaseClientProvider = Provider<SupabaseClient>((ref) {
  return Supabase.instance.client;
});

final dailyAyatProvider = FutureProvider<Map<String, dynamic>>((ref) async {
  final supabase = ref.read(supabaseClientProvider);
  
  // Try to find an ayat for today or a future date
  final formattedDate = DateTime.now().toIso8601String().split('T')[0];
  
  try {
    final res = await supabase
        .from('daily_content')
        .select()
        .eq('content_type', 'ayat')
        .gte('display_date', formattedDate)
        .order('display_date', ascending: true)
        .limit(1)
        .maybeSingle();
        
    if (res != null) {
      return res as Map<String, dynamic>;
    }
  } catch (_) {}

  // Cloud fallback (no date constraint)
  try {
    final fallbackRes = await supabase
        .from('daily_content')
        .select()
        .eq('content_type', 'ayat')
        .limit(1)
        .maybeSingle();
        
    if (fallbackRes != null) {
      return fallbackRes as Map<String, dynamic>;
    }
  } catch (_) {}

  // Absolute hardcoded offline fallback if no internet
  return {
    'content_ar': 'بِسْمِ ٱللَّهِ ٱلرَّحْمَٰنِ ٱلرَّحِيمِ',
    'content_en': 'In the name of Allah, the Most Gracious, the Most Merciful.',
    'content_tr': 'Rahman ve Rahim olan Allah\'ın adıyla.',
    'reference': 'Al-Fatihah 1:1'
  };
});

final liveTvProvider = FutureProvider<List<Map<String, dynamic>>>((ref) async {
  final supabase = ref.read(supabaseClientProvider);
  final res = await supabase
      .from('live_tv_channels')
      .select()
      .order('sort_order', ascending: true);
  return List<Map<String, dynamic>>.from(res);
});

final educationCategoriesProvider = FutureProvider<List<Map<String, dynamic>>>((ref) async {
  final supabase = ref.read(supabaseClientProvider);
  final res = await supabase
      .from('education_categories')
      .select()
      .order('sort_order', ascending: true);
  return List<Map<String, dynamic>>.from(res);
});

final educationTopicsProvider = FutureProvider.family<List<Map<String, dynamic>>, String>((ref, categoryId) async {
  final supabase = ref.read(supabaseClientProvider);
  final res = await supabase
      .from('education_topics')
      .select()
      .eq('category_id', categoryId)
      .order('sort_order', ascending: true);
  return List<Map<String, dynamic>>.from(res);
});
