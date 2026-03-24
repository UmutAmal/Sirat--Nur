import 'dart:io';
import '../lib/core/constants/islamic_education.dart';
import '../lib/core/constants/live_streams.dart';
import '../lib/core/constants/daily_ayat_data.dart';

void main() {
  final buffer = StringBuffer();
  buffer.writeln('-- Auto-generated Seed SQL');
  
  // LIVE TV
  int sortOrder = 0;
  for (final tv in liveStreams) {
    buffer.writeln("INSERT INTO public.live_tv_channels (short_label, title, subtitle, embed_url, fallback_embed_url, external_url, muted_by_default, sort_order) VALUES (");
    buffer.writeln("'${_escape(tv.shortLabel)}', '${_escape(tv.title)}', '${_escape(tv.subtitle)}', '${_escape(tv.embedUrl)}', ${_escapeNullable(tv.fallbackEmbedUrl)}, '${_escape(tv.externalUrl)}', ${tv.mutedByDefault ? 'true' : 'false'}, $sortOrder);");
    sortOrder++;
  }
  
  // CATEGORIES
  sortOrder = 0;
  for (final cat in IslamicEducation.categories) {
    buffer.writeln("INSERT INTO public.education_categories (id, title, title_en, icon, description, description_en, sort_order) VALUES (");
    buffer.writeln("'${_escape(cat.id)}', '${_escape(cat.title)}', '${_escape(cat.titleEn)}', '${_escape(cat.icon)}', '${_escape(cat.description)}', '${_escape(cat.descriptionEn)}', $sortOrder) ON CONFLICT (id) DO NOTHING;");
    
    int topicOrder = 0;
    for (final top in cat.topics) {
      buffer.writeln("INSERT INTO public.education_topics (id, category_id, title, title_en, content, content_en, sort_order) VALUES (");
      buffer.writeln("'${_escape(top.id)}', '${_escape(cat.id)}', '${_escape(top.title)}', '${_escape(top.titleEn)}', '${_escape(top.content)}', '${_escape(top.contentEn)}', $topicOrder) ON CONFLICT (id) DO NOTHING;");
      topicOrder++;
    }
    sortOrder++;
  }

  // DAILY AYATS
  for (int i = 0; i < dailyAyatCollection.length; i++) {
    final ayat = dailyAyatCollection[i];
    final ref = '${ayat.surahName} ${ayat.reference}';
    buffer.writeln("INSERT INTO public.daily_content (content_type, content_ar, content_tr, content_en, reference, display_date) VALUES (");
    buffer.writeln("'ayat', '${_escape(ayat.arabic)}', '${_escape(ayat.turkish)}', '${_escape(ayat.english)}', '${_escape(ref)}', CURRENT_DATE + INTERVAL '${i+2} day') ON CONFLICT (display_date) DO NOTHING;");
  }

  // Write to output file
  File('seed.sql').writeAsStringSync(buffer.toString());
  print('SQL Generation complete. Created seed.sql');
}

String _escape(String str) {
  return str.replaceAll("'", "''");
}

String _escapeNullable(String? str) {
  if (str == null) return 'NULL';
  return "'${_escape(str)}'";
}
