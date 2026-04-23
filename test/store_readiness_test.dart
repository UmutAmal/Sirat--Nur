import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:sirat_i_nur/core/services/app_metadata_service.dart';

void main() {
  group('store readiness guard', () {
    test('privacy policy URL is not the retired siratinur.com placeholder', () {
      final source = File(
        'lib/core/services/app_metadata_service.dart',
      ).readAsStringSync();

      expect(privacyPolicyUrl, startsWith('https://'));
      expect(privacyPolicyUrl, contains('/docs/privacy_policy.md'));
      expect(privacyPolicyUrl, isNot(contains('siratinur.com/privacy')));
      expect(source, contains('privacyPolicyUrl'));
    });

    test('tracked privacy and store disclosure worksheets exist', () {
      for (final path in <String>[
        'docs/privacy_policy.md',
        'store/play/data_safety.md',
        'store/play/exact_alarm_declaration.md',
        'store/play/billing_test_plan.md',
        'store/appstore/app_privacy.md',
        'store/release_checklist.md',
        'store/listing/en-US.md',
        'store/listing/tr-TR.md',
        'tool/check_store_readiness.ps1',
        'tool/build_store_appbundle.ps1',
        'tool/import_release_environment.ps1',
        'tool/apply_supabase_content_bundle.ps1',
        'tool/quran_audio_distribution_plan.dart',
        'tool/upload_quran_audio_distribution.ps1',
        'infra/cloudflare/places-proxy/README.md',
        'infra/cloudflare/places-proxy/wrangler.jsonc',
        'infra/cloudflare/places-proxy/src/index.js',
      ]) {
        final file = File(path);
        expect(file.existsSync(), isTrue, reason: '$path must exist');
        expect(file.readAsStringSync().trim(), isNotEmpty);
      }
    });

    test('iOS declares location purpose string for App Store review', () {
      final plist = File('ios/Runner/Info.plist').readAsStringSync();

      expect(plist, contains('NSLocationWhenInUseUsageDescription'));
      expect(plist, contains('prayer times'));
      expect(plist, contains('Qibla direction'));
      expect(plist, contains('nearby Islamic places'));
    });

    test('Quran audio storage flow documents the complete release gate', () {
      final mirrorSeed = File(
        'content_seed_quran_audio.sql',
      ).readAsStringSync();
      final dataSafety = File('store/play/data_safety.md').readAsStringSync();
      final exactAlarm = File(
        'store/play/exact_alarm_declaration.md',
      ).readAsStringSync();

      expect(mirrorSeed, contains('content_seed_quran_audio_storage.sql'));
      expect(dataSafety, contains('Data Safety'));
      expect(dataSafety, contains('Location'));
      expect(dataSafety, contains('Financial info'));
      expect(exactAlarm, contains('prayer time and adhan reminders'));
    });

    test(
      'generated Quran audio path seed is complete and provider-neutral',
      () {
        final storageSeedFile = File('content_seed_quran_audio_storage.sql');

        expect(storageSeedFile.existsSync(), isTrue);
        final storageSeed = storageSeedFile.readAsStringSync();
        expect(
          RegExp(r'INSERT INTO public\.audio_files').allMatches(storageSeed),
          hasLength(684),
        );
        expect(
          RegExp(
            r"NULL, '[A-Za-z0-9_-]+/[0-9]{3}\.mp3'",
          ).allMatches(storageSeed),
          hasLength(684),
        );
        expect(storageSeed, contains('storage_path'));
        expect(storageSeed, isNot(contains('download.quranicaudio.com')));
      },
    );

    test('CI uses the current Flutter SDK and full project checks', () {
      final ci = File('.github/workflows/ci.yml').readAsStringSync();

      expect(ci, contains("flutter-version: '3.41.4'"));
      expect(ci, contains('run: flutter analyze'));
      expect(ci, isNot(contains('flutter analyze lib/')));
      expect(ci, contains('dart format --set-exit-if-changed lib test tool'));
    });

    test('store app bundle script requires real release configuration', () {
      final script = File('tool/build_store_appbundle.ps1').readAsStringSync();

      expect(script, contains('import_release_environment.ps1'));
      expect(script, contains('Initialize-ReleaseEnvironment'));
      expect(script, contains('Loaded release environment file(s):'));
      expect(script, contains('SUPABASE_URL'));
      expect(script, contains('SUPABASE_PUBLISHABLE_KEY'));
      expect(script, contains('PLACES_TILE_URL_TEMPLATE'));
      expect(script, contains('PLACES_OVERPASS_API_URL'));
      expect(script, contains('QURAN_AUDIO_CLOUDFLARE_BASE_URL'));
      expect(script, contains('QURAN_AUDIO_GITHUB_URL_TEMPLATE'));
      expect(script, contains('QURAN_AUDIO_PATH_NAMESPACE'));
      expect(
        script,
        isNot(contains('--dart-define=SUPABASE_QURAN_AUDIO_BUCKET')),
      );
      expect(
        File('infra/cloudflare/places-proxy/README.md').readAsStringSync(),
        contains('https://<worker>/tiles/{z}/{x}/{y}.png'),
      );
      expect(script, contains('android/key.properties'));
      expect(script, contains('Assert-CleanHttpsUrl'));
      expect(script, contains('tile.openstreetmap.org'));
      expect(script, contains('overpass-api.de'));
      expect(script, contains('flutter build appbundle --release'));
      expect(script, contains(r'if ($LASTEXITCODE -ne 0)'));
      expect(script, contains('empty or missing'));
      expect(script, contains('Release upload keystore file does not exist'));
      expect(script, contains('Store app bundle build failed'));
      expect(
        script.indexOf('flutter build appbundle --release'),
        lessThan(script.indexOf('Store app bundle build failed')),
      );
      expect(
        script.indexOf("QURAN_AUDIO_PATH_NAMESPACE must be quran-audio"),
        lessThan(script.indexOf(r'if ($NoBuild)')),
      );
    });

    test('store readiness checker refuses hidden external blockers', () {
      final script = File('tool/check_store_readiness.ps1').readAsStringSync();
      final checklist = File('store/release_checklist.md').readAsStringSync();
      final uploadScript = File(
        'tool/upload_quran_audio_distribution.ps1',
      ).readAsStringSync();
      final supabaseApplyScript = File(
        'tool/apply_supabase_content_bundle.ps1',
      ).readAsStringSync();

      expect(script, contains('import_release_environment.ps1'));
      expect(script, contains('Initialize-ReleaseEnvironment'));
      expect(script, contains('Loaded release environment file(s):'));
      expect(script, contains('SUPABASE_PUBLISHABLE_KEY'));
      expect(script, contains('QURAN_AUDIO_CLOUDFLARE_BASE_URL'));
      expect(script, contains('QURAN_AUDIO_GITHUB_URL_TEMPLATE'));
      expect(script, contains('build/verified_quran_audio/manifest.json'));
      expect(script, contains('content_seed_quran_audio_storage.sql'));
      expect(
        script,
        contains('build/quran_audio_distribution_upload_summary.json'),
      );
      expect(script, contains('build/supabase_content_apply_summary.json'));
      expect(script, contains('requested -eq 684'));
      expect(script, contains('files.Count -eq 684'));
      expect(script, contains("file.reciter -eq 'abdul_basit_murattal'"));
      expect(
        script,
        contains('Cloudflare Quran audio partition is below 10 GB'),
      );
      expect(script, contains('Get-SupabaseRestCount'));
      expect(script, contains('Get-SupabaseRestRows'));
      expect(script, contains('Assert-SupabaseTableMinimumCount'));
      expect(script, contains('Assert-SupabaseTableApprovedSourceUrls'));
      expect(script, contains('Test-ApprovedStoreSourceUrl'));
      expect(script, contains("Prefer = 'count=exact'"));
      expect(script, contains('Content-Range'));
      expect(script, contains('Supabase public table has required rows'));
      expect(script, contains('Supabase public table count check failed'));
      expect(
        script,
        contains('Supabase public table source URLs are approved'),
      );
      expect(
        script,
        contains('Supabase public table has unapproved source URLs'),
      );
      expect(
        script,
        contains('approvedSourceHosts = \$approvedStoreSourceHosts'),
      );
      expect(script, contains('ErrorDetails.Message'));
      expect(script, contains('Read-HttpErrorDetail'));
      expect(script, contains('ReadAsStringAsync().GetAwaiter().GetResult()'));
      expect(script, contains('GetResponseStream'));
      expect(script, contains('[System.IO.StreamReader]::new'));
      expect(script, contains('-UseBasicParsing -Uri \$tableUri'));
      expect(script, contains('\$_.Exception.Response'));
      expect(script, isNot(contains('-SkipHttpErrorCheck')));
      expect(script, contains('content_seed_hadith.sql'));
      expect(script, contains('content_seed_tafsir.sql'));
      expect(script, contains('content_seed_duas.sql'));
      expect(
        script,
        contains("'storeFile', 'storePassword', 'keyAlias', 'keyPassword'"),
      );
      expect(
        script,
        contains(r'android/key.properties has non-empty $requiredKey'),
      );
      expect(script, contains('empty or missing'));
      expect(script, contains('missing_optional_files'));
      expect(script, contains('verified dua seed'));
      expect(script, contains('Quranic dua seed is complete'));
      expect(script, contains('duaInsertCount -eq 8'));
      expect(script, contains('quranicDuaCategoryCount -eq 8'));
      expect(script, contains('hadith seed, and tafsir seed'));
      expect(script, contains('quran_surahs'));
      expect(script, contains('tafsir_entries'));
      expect(script, contains("table = 'quran_ayahs'; minimum = 6236"));
      expect(script, contains("table = 'duas'; minimum = 8"));
      expect(script, contains("description = 'verified Quranic duas'"));
      expect(script, contains("table = 'tafsir_entries'; minimum = 6236"));
      expect(script, contains("table = 'hadiths'; minimum = 600"));
      expect(script, contains("table = 'asma_ul_husna'; minimum = 99"));
      expect(script, contains('source=neq.'));
      expect(script, contains('source=not.is.null&source=neq.'));
      expect(script, contains('source_license=neq.'));
      expect(script, contains('storage_path=neq.'));
      expect(
        script,
        contains(
          "filter = 'type=eq.quran_surah&reciter=not.is.null&reciter=neq.&surah_number=not.is.null&storage_path=not.is.null&storage_path=neq.&source=not.is.null&source=neq.&verified_at=not.is.null'",
        ),
      );
      expect(script, contains('storagePathValueCount -eq 684'));
      expect(script, contains('Quran audio path seed is complete'));
      expect(script, contains('android.permission.USE_EXACT_ALARM'));
      expect(script, contains('download.quranicaudio.com'));
      expect(script, contains('-UseBasicParsing'));
      expect(script, contains('Remote privacy policy URL returns HTTP 200'));
      expect(
        script,
        contains('Quran audio distribution upload summary is complete'),
      );
      expect(
        script,
        contains('Supabase content apply summary includes schema'),
      );
      expect(
        script,
        contains('Supabase content apply summary order is invalid'),
      );
      expect(checklist, contains('Google Play Data safety form'));
      expect(checklist, contains('Android exact alarm behavior'));
      expect(checklist, contains('Apple App Privacy details'));
      expect(checklist, contains('requested=684'));
      expect(checklist, contains('jarsigner -verify'));
      expect(checklist, contains('QURAN_AUDIO_CLOUDFLARE_BUCKET'));
      expect(checklist, contains('dart run tool/generate_hadith_seed.dart'));
      expect(checklist, contains('dart run tool/generate_tafsir_seed.dart'));
      expect(checklist, contains('at least 100 verified rows per collection'));
      expect(checklist, contains('complete 6,236-ayah catalog'));
      expect(uploadScript, contains('npx --yes wrangler@latest r2 object put'));
      expect(uploadScript, contains('gh release upload'));
      expect(uploadScript, contains('Assert-NativeSuccess'));
      expect(
        uploadScript,
        contains(r'Cloudflare Quran audio upload $($object.object_path)'),
      );
      expect(
        uploadScript,
        contains(r'GitHub Quran audio upload $($object.asset_name)'),
      );
      expect(uploadScript, contains(r'dry_run = $false'));
      expect(supabaseApplyScript, contains('import_release_environment.ps1'));
      expect(supabaseApplyScript, contains('Initialize-ReleaseEnvironment'));
      expect(
        supabaseApplyScript,
        contains('Loaded release environment file(s):'),
      );
      expect(supabaseApplyScript, contains('npx --yes supabase db query'));
      expect(supabaseApplyScript, contains(r'if ($LASTEXITCODE -ne 0)'));
      expect(
        supabaseApplyScript,
        contains(r'Supabase SQL apply failed for $relativePath'),
      );
      expect(
        supabaseApplyScript,
        contains("[Environment]::GetEnvironmentVariable('SUPABASE_DB_URL')"),
      );
      expect(supabaseApplyScript, contains('content_schema.sql'));
      expect(supabaseApplyScript, contains('content_seed_quran_ayahs.sql'));
      expect(supabaseApplyScript, contains('content_seed_duas.sql'));
      expect(supabaseApplyScript, contains('content_seed_hadith.sql'));
      expect(supabaseApplyScript, contains('content_seed_tafsir.sql'));
      expect(supabaseApplyScript, contains('SUPABASE_DB_URL'));
      expect(supabaseApplyScript, isNot(contains(r'$optionalSqlFiles')));
      expect(
        supabaseApplyScript.indexOf("'content_seed_quran_ayahs.sql'"),
        lessThan(supabaseApplyScript.indexOf("'content_seed_duas.sql'")),
      );
      expect(
        supabaseApplyScript.indexOf("'content_seed_duas.sql'"),
        lessThan(supabaseApplyScript.indexOf("'seed.sql'")),
      );
    });

    test('release environment helper resolves .env and persisted scopes', () {
      final helper = File(
        'tool/import_release_environment.ps1',
      ).readAsStringSync();

      expect(helper, contains('.env.store'));
      expect(helper, contains('.env.release'));
      expect(helper, contains('.env.local'));
      expect(helper, contains(".env'"));
      expect(helper, contains("GetEnvironmentVariable(\$Name, 'Process')"));
      expect(helper, contains("GetEnvironmentVariable(\$Name, 'User')"));
      expect(helper, contains("GetEnvironmentVariable(\$Name, 'Machine')"));
      expect(
        helper,
        contains(r"SetEnvironmentVariable($name, $value, 'Process')"),
      );
      expect(helper, contains('export '));
    });

    test('Gradle release packaging refuses missing runtime dart-defines', () {
      final gradle = File('android/app/build.gradle.kts').readAsStringSync();

      expect(gradle, contains('requiredStoreDartDefines'));
      expect(gradle, contains('decodeDartDefines'));
      expect(gradle, contains('validateStoreReleaseRuntimeConfig'));
      expect(gradle, contains('Store release runtime config is missing'));
      expect(gradle, contains('SUPABASE_PUBLISHABLE_KEY'));
      expect(gradle, contains('QURAN_AUDIO_CLOUDFLARE_BASE_URL'));
      expect(gradle, contains('QURAN_AUDIO_GITHUB_URL_TEMPLATE'));
      expect(gradle, contains('QURAN_AUDIO_PATH_NAMESPACE'));
      expect(gradle, contains('verified audio_files.storage_path seed'));
      expect(gradle, contains('no public OpenStreetMap tile host'));
      expect(gradle, contains('must not use a public Overpass host'));
    });
  });
}
