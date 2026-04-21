param(
  [switch]$SkipNetwork,
  [switch]$SkipFlutterValidation
)

$ErrorActionPreference = 'Stop'

$repoRoot = Resolve-Path (Join-Path $PSScriptRoot '..')
$failures = New-Object System.Collections.Generic.List[string]

function Add-Failure {
  param([Parameter(Mandatory = $true)][string]$Message)
  $failures.Add($Message) | Out-Null
  Write-Host "[FAIL] $Message"
}

function Add-Pass {
  param([Parameter(Mandatory = $true)][string]$Message)
  Write-Host "[ OK ] $Message"
}

function Test-BlockedHost {
  param(
    [Parameter(Mandatory = $true)][string]$HostName,
    [Parameter(Mandatory = $true)][string[]]$BlockedHosts
  )

  $normalizedHost = $HostName.ToLowerInvariant()
  foreach ($blockedHost in $BlockedHosts) {
    if ($normalizedHost -eq $blockedHost -or $normalizedHost.EndsWith(".$blockedHost")) {
      return $true
    }
  }

  return $false
}

function Test-CleanHttpsUrl {
  param(
    [Parameter(Mandatory = $true)][string]$Name,
    [Parameter(Mandatory = $true)][string]$Value,
    [switch]$DisallowPath
  )

  try {
    $uri = [System.Uri]$Value
  } catch {
    Add-Failure "$Name must be a valid HTTPS URL."
    return $null
  }

  $hasPath = -not [string]::IsNullOrWhiteSpace($uri.AbsolutePath) -and $uri.AbsolutePath -ne '/'
  if (
    $uri.Scheme -ne 'https' -or
    [string]::IsNullOrWhiteSpace($uri.Host) -or
    -not [string]::IsNullOrEmpty($uri.UserInfo) -or
    -not [string]::IsNullOrEmpty($uri.Query) -or
    -not [string]::IsNullOrEmpty($uri.Fragment) -or
    ($DisallowPath -and $hasPath)
  ) {
    Add-Failure "$Name must be a clean HTTPS URL without user info, query, fragment$(if ($DisallowPath) { ', or path' } else { '' })."
    return $null
  }

  return $uri
}

function Require-File {
  param(
    [Parameter(Mandatory = $true)][string]$Path,
    [Parameter(Mandatory = $true)][string]$Description
  )

  $fullPath = Join-Path $repoRoot $Path
  if (Test-Path -LiteralPath $fullPath) {
    Add-Pass "$Description exists: $Path"
    return $true
  }

  Add-Failure "$Description is missing: $Path"
  return $false
}

function Get-SupabaseRestCount {
  param(
    [Parameter(Mandatory = $true)][string]$SupabaseUrl,
    [Parameter(Mandatory = $true)][string]$ClientKey,
    [Parameter(Mandatory = $true)][string]$TableName,
    [string]$FilterQuery = ''
  )

  $supabaseHeaders = @{
    apikey = $ClientKey
    Authorization = "Bearer $ClientKey"
    Prefer = 'count=exact'
  }
  $queryParts = New-Object System.Collections.Generic.List[string]
  $queryParts.Add('select=id') | Out-Null
  if (-not [string]::IsNullOrWhiteSpace($FilterQuery)) {
    foreach ($part in $FilterQuery.Split('&')) {
      if (-not [string]::IsNullOrWhiteSpace($part)) {
        $queryParts.Add($part) | Out-Null
      }
    }
  }
  $queryParts.Add('limit=1') | Out-Null
  $tableUri = "$SupabaseUrl/rest/v1/$TableName`?$($queryParts -join '&')"
  $tableResponse = Invoke-WebRequest -UseBasicParsing -Uri $tableUri -Headers $supabaseHeaders -Method Get -TimeoutSec 30
  if ($tableResponse.StatusCode -ne 200 -and $tableResponse.StatusCode -ne 206) {
    throw "HTTP $($tableResponse.StatusCode)"
  }

  $contentRange = $tableResponse.Headers['Content-Range']
  if ($contentRange -is [array]) {
    $contentRange = $contentRange[0]
  }
  if ($contentRange -and $contentRange.ToString() -match '/(?<total>\d+)$') {
    return [int]$Matches.total
  }

  $rows = @()
  if (-not [string]::IsNullOrWhiteSpace($tableResponse.Content)) {
    $decoded = $tableResponse.Content | ConvertFrom-Json
    $rows = @($decoded)
  }
  return $rows.Count
}

function Assert-SupabaseTableMinimumCount {
  param(
    [Parameter(Mandatory = $true)][string]$SupabaseUrl,
    [Parameter(Mandatory = $true)][string]$ClientKey,
    [Parameter(Mandatory = $true)][string]$TableName,
    [Parameter(Mandatory = $true)][int]$MinimumCount,
    [Parameter(Mandatory = $true)][string]$Description,
    [string]$FilterQuery = ''
  )

  try {
    $actualCount = Get-SupabaseRestCount -SupabaseUrl $SupabaseUrl -ClientKey $ClientKey -TableName $TableName -FilterQuery $FilterQuery
    if ($actualCount -ge $MinimumCount) {
      Add-Pass "Supabase public table has required rows: $Description ($actualCount/$MinimumCount)."
    } else {
      Add-Failure "Supabase public table has insufficient rows: $Description ($actualCount/$MinimumCount)."
    }
  } catch {
    $errorDetail = $_.ErrorDetails.Message
    if ([string]::IsNullOrWhiteSpace($errorDetail) -and $_.Exception.Response -and $_.Exception.Response.Content) {
      try {
        $errorDetail = $_.Exception.Response.Content.ReadAsStringAsync().GetAwaiter().GetResult()
      } catch {
        $errorDetail = ''
      }
    }
    if (-not [string]::IsNullOrWhiteSpace($errorDetail)) {
      $errorDetail = ($errorDetail -replace '\s+', ' ').Trim()
    }
    $response = $_.Exception.Response
    if ($response -and $response.StatusCode) {
      $message = "Supabase public table count check failed: $TableName returned HTTP $([int]$response.StatusCode)"
      if (-not [string]::IsNullOrWhiteSpace($errorDetail)) {
        $message = "${message}: $errorDetail"
      }
      Add-Failure $message
    } else {
      $message = "Supabase public table count check failed: $TableName ($($_.Exception.Message))"
      if (-not [string]::IsNullOrWhiteSpace($errorDetail)) {
        $message = "${message}: $errorDetail"
      }
      Add-Failure $message
    }
  }
}

Push-Location $repoRoot
try {
  Write-Host 'Sirat-i Nur store readiness check'
  Write-Host "Repository: $repoRoot"

  $trackedDocs = @(
    @('docs/privacy_policy.md', 'Privacy policy'),
    @('store/play/data_safety.md', 'Play Data safety worksheet'),
    @('store/play/exact_alarm_declaration.md', 'Play exact alarm declaration'),
    @('store/play/billing_test_plan.md', 'Play billing test plan'),
    @('store/appstore/app_privacy.md', 'App Store privacy worksheet'),
    @('store/release_checklist.md', 'Store release checklist'),
    @('android/key.properties.example', 'Release signing template')
  )
  foreach ($doc in $trackedDocs) {
    Require-File -Path $doc[0] -Description $doc[1] | Out-Null
  }

  $manifestPath = Join-Path $repoRoot 'android/app/src/main/AndroidManifest.xml'
  $manifest = Get-Content -LiteralPath $manifestPath -Raw
  if ($manifest.Contains('android.permission.SCHEDULE_EXACT_ALARM')) {
    Add-Pass 'Android manifest declares SCHEDULE_EXACT_ALARM for the revocable permission flow.'
  } else {
    Add-Failure 'Android manifest must declare SCHEDULE_EXACT_ALARM for prayer reminders.'
  }
  if ($manifest.Contains('android.permission.USE_EXACT_ALARM')) {
    Add-Failure 'Android manifest must not declare USE_EXACT_ALARM unless the app qualifies for the restricted Play policy use case.'
  } else {
    Add-Pass 'Android manifest does not request USE_EXACT_ALARM.'
  }

  $keyPropertiesPath = Join-Path $repoRoot 'android/key.properties'
  if (Test-Path -LiteralPath $keyPropertiesPath) {
    $keyProperties = Get-Content -LiteralPath $keyPropertiesPath -Raw
    foreach ($requiredKey in @('storeFile=', 'storePassword=', 'keyAlias=', 'keyPassword=')) {
      if ($keyProperties.Contains($requiredKey)) {
        Add-Pass "android/key.properties contains $requiredKey"
      } else {
        Add-Failure "android/key.properties is missing $requiredKey"
      }
    }

    $storeFileLine = ($keyProperties -split "`r?`n" | Where-Object { $_.Trim().StartsWith('storeFile=') } | Select-Object -First 1)
    if ($storeFileLine) {
      $storeFile = $storeFileLine.Substring('storeFile='.Length).Trim()
      $storePath = if ([System.IO.Path]::IsPathRooted($storeFile)) {
        $storeFile
      } else {
        Join-Path (Join-Path $repoRoot 'android') $storeFile
      }
      if (Test-Path -LiteralPath $storePath) {
        Add-Pass 'Release upload keystore file exists.'
      } else {
        Add-Failure "Release upload keystore file does not exist: $storePath"
      }
    }
  } else {
    Add-Failure 'android/key.properties is missing; release upload signing is not configured on this machine.'
  }

  $requiredEnvironment = @(
    'SUPABASE_URL',
    'PLACES_TILE_URL_TEMPLATE',
    'PLACES_OVERPASS_API_URL',
    'QURAN_AUDIO_CLOUDFLARE_BASE_URL',
    'QURAN_AUDIO_GITHUB_URL_TEMPLATE'
  )
  foreach ($name in $requiredEnvironment) {
    if ([string]::IsNullOrWhiteSpace([Environment]::GetEnvironmentVariable($name))) {
      Add-Failure "$name is missing; store builds must inject production runtime config."
    } else {
      Add-Pass "$name is set."
    }
  }

  $supabaseClientKey = [Environment]::GetEnvironmentVariable('SUPABASE_PUBLISHABLE_KEY')
  if ([string]::IsNullOrWhiteSpace($supabaseClientKey)) {
    $supabaseClientKey = [Environment]::GetEnvironmentVariable('SUPABASE_ANON_KEY')
  }
  if ([string]::IsNullOrWhiteSpace($supabaseClientKey)) {
    Add-Failure 'SUPABASE_PUBLISHABLE_KEY or legacy SUPABASE_ANON_KEY is missing; store builds must inject a client-side Supabase key.'
  } else {
    Add-Pass 'Supabase client key is set.'
  }

  $supabaseUrl = [Environment]::GetEnvironmentVariable('SUPABASE_URL')
  if (-not [string]::IsNullOrWhiteSpace($supabaseUrl)) {
    Test-CleanHttpsUrl -Name 'SUPABASE_URL' -Value $supabaseUrl -DisallowPath | Out-Null
  }

  $quranCloudflareBaseUrl = [Environment]::GetEnvironmentVariable('QURAN_AUDIO_CLOUDFLARE_BASE_URL')
  if (-not [string]::IsNullOrWhiteSpace($quranCloudflareBaseUrl)) {
    Test-CleanHttpsUrl -Name 'QURAN_AUDIO_CLOUDFLARE_BASE_URL' -Value $quranCloudflareBaseUrl | Out-Null
  }

  $quranGithubTemplate = [Environment]::GetEnvironmentVariable('QURAN_AUDIO_GITHUB_URL_TEMPLATE')
  if (-not [string]::IsNullOrWhiteSpace($quranGithubTemplate)) {
    if (-not $quranGithubTemplate.Contains('{reciter}') -or -not $quranGithubTemplate.Contains('{surah}')) {
      Add-Failure 'QURAN_AUDIO_GITHUB_URL_TEMPLATE must include {reciter} and {surah}.'
    }
    $githubProbe = $quranGithubTemplate.Replace('{reciter}', 'abdul_basit_murattal').Replace('{surah}', '001').Replace('{file}', '001.mp3').Replace('{path}', 'abdul_basit_murattal/001.mp3')
    Test-CleanHttpsUrl -Name 'QURAN_AUDIO_GITHUB_URL_TEMPLATE' -Value $githubProbe | Out-Null
  }

  $tileTemplate = [Environment]::GetEnvironmentVariable('PLACES_TILE_URL_TEMPLATE')
  if (-not [string]::IsNullOrWhiteSpace($tileTemplate)) {
    foreach ($token in @('{z}', '{x}', '{y}')) {
      if (-not $tileTemplate.Contains($token)) {
        Add-Failure "PLACES_TILE_URL_TEMPLATE must include $token."
      }
    }
    $tileProbe = $tileTemplate.Replace('{z}', '0').Replace('{x}', '0').Replace('{y}', '0').Replace('{s}', 'a')
    $tileUri = Test-CleanHttpsUrl -Name 'PLACES_TILE_URL_TEMPLATE' -Value $tileProbe
    if ($tileUri -and (Test-BlockedHost -HostName $tileUri.Host -BlockedHosts @('tile.openstreetmap.org', 'tile.openstreetmap.de'))) {
      Add-Failure 'PLACES_TILE_URL_TEMPLATE must not point at public OpenStreetMap tile hosts.'
    }
  }

  $overpassUrl = [Environment]::GetEnvironmentVariable('PLACES_OVERPASS_API_URL')
  if (-not [string]::IsNullOrWhiteSpace($overpassUrl)) {
    $overpassUri = Test-CleanHttpsUrl -Name 'PLACES_OVERPASS_API_URL' -Value $overpassUrl
    if ($overpassUri -and (Test-BlockedHost -HostName $overpassUri.Host -BlockedHosts @(
          'overpass-api.de',
          'overpass.kumi.systems',
          'overpass.openstreetmap.fr',
          'overpass.openstreetmap.ru',
          'overpass.osm.ch',
          'overpass.osm.rambler.ru'
        ))) {
      Add-Failure 'PLACES_OVERPASS_API_URL must not point at public Overpass hosts; use an approved proxy or provider.'
    }
  }

  $audioManifestPath = Join-Path $repoRoot 'build/verified_quran_audio/manifest.json'
  if (Test-Path -LiteralPath $audioManifestPath) {
    try {
      $audioManifest = Get-Content -LiteralPath $audioManifestPath -Raw | ConvertFrom-Json
      if ($audioManifest.requested -eq 684 -and $audioManifest.files.Count -eq 684 -and $audioManifest.failed.Count -eq 0) {
        Add-Pass 'Verified Quran audio mirror manifest is complete: 684/684 files, no failures.'
      } else {
        Add-Failure "Verified Quran audio mirror manifest is incomplete: requested=$($audioManifest.requested), files=$($audioManifest.files.Count), failed=$($audioManifest.failed.Count)."
      }

      $cloudflareAudioBytes = [int64]0
      $githubMurattalRows = 0
      foreach ($file in $audioManifest.files) {
        if ($file.reciter -eq 'abdul_basit_murattal') {
          $githubMurattalRows += 1
        } else {
          $cloudflareAudioBytes += [int64]$file.size_bytes
        }
      }
      $tenGbBytes = [int64]10 * 1024 * 1024 * 1024
      if ($githubMurattalRows -eq 114) {
        Add-Pass 'GitHub overflow partition is complete: abdul_basit_murattal has 114 files.'
      } else {
        Add-Failure "GitHub overflow partition is incomplete: abdul_basit_murattal files=$githubMurattalRows."
      }
      if ($cloudflareAudioBytes -lt $tenGbBytes) {
        Add-Pass "Cloudflare Quran audio partition is below 10 GB: $([math]::Round($cloudflareAudioBytes / 1GB, 2)) GB."
      } else {
        Add-Failure "Cloudflare Quran audio partition exceeds 10 GB: $([math]::Round($cloudflareAudioBytes / 1GB, 2)) GB."
      }
    } catch {
      Add-Failure 'Verified Quran audio mirror manifest is not valid JSON.'
    }
  } else {
    Add-Failure 'Verified Quran audio mirror manifest is missing; run dart run tool/download_verified_quran_audio.dart before storage upload.'
  }

  $audioStorageSeedPath = Join-Path $repoRoot 'content_seed_quran_audio_storage.sql'
  if (Test-Path -LiteralPath $audioStorageSeedPath) {
    $audioStorageSeed = Get-Content -LiteralPath $audioStorageSeedPath -Raw
    $insertCount = ([regex]::Matches($audioStorageSeed, 'INSERT INTO public\.audio_files')).Count
    $conflictCount = ([regex]::Matches($audioStorageSeed, 'ON CONFLICT \(type, reciter, surah_number\) DO UPDATE SET')).Count
    $storagePathValueCount = ([regex]::Matches($audioStorageSeed, "NULL, '[A-Za-z0-9_-]+/[0-9]{3}\.mp3'")).Count
    if (
      $insertCount -eq 684 -and
      $conflictCount -eq 684 -and
      $storagePathValueCount -eq 684 -and
      -not $audioStorageSeed.Contains('download.quranicaudio.com')
    ) {
      Add-Pass 'Quran audio path seed is complete: 684 provider-neutral storage_path upserts.'
    } else {
      Add-Failure "Quran audio path seed is incomplete or not provider-neutral: inserts=$insertCount, conflicts=$conflictCount, storage_paths=$storagePathValueCount."
    }
  } else {
    Add-Failure 'Quran audio path seed is missing; run dart run tool/generate_quran_audio_storage_seed.dart after mirroring audio.'
  }

  $distributionSummaryPath = Join-Path $repoRoot 'build/quran_audio_distribution_upload_summary.json'
  if (Test-Path -LiteralPath $distributionSummaryPath) {
    try {
      $distributionSummary = Get-Content -LiteralPath $distributionSummaryPath -Raw | ConvertFrom-Json
      if ($distributionSummary.dry_run -eq $true) {
        Add-Failure 'Quran audio distribution upload summary is a dry-run; run tool/upload_quran_audio_distribution.ps1 without -DryRun after real provider uploads.'
      } elseif (
        $distributionSummary.cloudflare.files -eq 570 -and
        $distributionSummary.cloudflare.uploaded -eq 570 -and
        $distributionSummary.github.files -eq 114 -and
        $distributionSummary.github.uploaded -eq 114
      ) {
        Add-Pass 'Quran audio distribution upload summary is complete: Cloudflare 570 files, GitHub 114 files.'
      } else {
        Add-Failure "Quran audio distribution upload summary is incomplete: Cloudflare $($distributionSummary.cloudflare.uploaded)/$($distributionSummary.cloudflare.files), GitHub $($distributionSummary.github.uploaded)/$($distributionSummary.github.files)."
      }
    } catch {
      Add-Failure 'Quran audio distribution upload summary is not valid JSON.'
    }
  } else {
    Add-Failure 'Quran audio distribution upload summary is missing; run tool/upload_quran_audio_distribution.ps1 after Cloudflare/GitHub uploads.'
  }

  $supabaseApplySummaryPath = Join-Path $repoRoot 'build/supabase_content_apply_summary.json'
  if (Test-Path -LiteralPath $supabaseApplySummaryPath) {
    try {
      $supabaseApplySummary = Get-Content -LiteralPath $supabaseApplySummaryPath -Raw | ConvertFrom-Json
      $requiredSupabaseFiles = @(
        'content_schema.sql',
        'content_seed_quran_surahs.sql',
        'content_seed_quran_ayahs.sql',
        'content_seed_quran_audio_storage.sql',
        'seed.sql',
        'content_seed_hadith.sql',
        'content_seed_tafsir.sql'
      )
      $appliedFiles = @($supabaseApplySummary.files_applied)
      $missingAppliedFiles = @(
        $requiredSupabaseFiles | Where-Object { $appliedFiles -notcontains $_ }
      )
      $lastAppliedIndex = -1
      $appliedOrderIsValid = $true
      foreach ($requiredFile in $requiredSupabaseFiles) {
        $currentIndex = [array]::IndexOf($appliedFiles, $requiredFile)
        if ($currentIndex -lt 0) {
          continue
        }
        if ($currentIndex -lt $lastAppliedIndex) {
          $appliedOrderIsValid = $false
          break
        }
        $lastAppliedIndex = $currentIndex
      }
      $missingOptionalFiles = @($supabaseApplySummary.missing_optional_files)
      if ($missingOptionalFiles.Count -gt 0) {
        Add-Failure "Supabase content apply summary still marks production seed files as optional/missing: $($missingOptionalFiles -join ', ')."
      }
      if ($supabaseApplySummary.dry_run -eq $true) {
        Add-Failure 'Supabase content apply summary is a dry-run; run tool/apply_supabase_content_bundle.ps1 without -DryRun after applying production SQL.'
      } elseif (-not $appliedOrderIsValid) {
        Add-Failure 'Supabase content apply summary order is invalid; schema, Quran surah/ayah seed, Quran audio seed, core seed, hadith seed, and tafsir seed must be applied in order.'
      } elseif ($missingAppliedFiles.Count -eq 0) {
        Add-Pass 'Supabase content apply summary includes schema, Quran surah/ayah seed, Quran audio seed, core seed, hadith seed, and tafsir seed.'
      } else {
        Add-Failure "Supabase content apply summary is missing required applied files: $($missingAppliedFiles -join ', ')."
      }
    } catch {
      Add-Failure 'Supabase content apply summary is not valid JSON.'
    }
  } else {
    Add-Failure 'Supabase content apply summary is missing; run tool/apply_supabase_content_bundle.ps1 after applying production SQL.'
  }

  if (-not $SkipNetwork) {
    try {
      $privacyUrl = 'https://raw.githubusercontent.com/UmutAmal/Sirat--Nur/master/docs/privacy_policy.md'
      $response = Invoke-WebRequest -UseBasicParsing -Uri $privacyUrl -Method Head -TimeoutSec 30
      if ($response.StatusCode -eq 200) {
        Add-Pass 'Remote privacy policy URL returns HTTP 200.'
      } else {
        Add-Failure "Remote privacy policy URL returned HTTP $($response.StatusCode)."
      }
    } catch {
      Add-Failure "Remote privacy policy URL is not reachable: $($_.Exception.Message)"
    }

    if (
      -not [string]::IsNullOrWhiteSpace($supabaseUrl) -and
      -not [string]::IsNullOrWhiteSpace($supabaseClientKey)
    ) {
      $supabaseTableChecks = @(
        @{ table = 'daily_content'; minimum = 8; description = 'verified daily ayat seed'; filter = 'content_type=eq.ayat&verified_at=not.is.null' },
        @{ table = 'live_tv_channels'; minimum = 2; description = 'Makkah/Madinah live TV channels'; filter = 'title=not.is.null' },
        @{ table = 'education_categories'; minimum = 1; description = 'verified education categories'; filter = 'source=not.is.null&verified_at=not.is.null' },
        @{ table = 'education_topics'; minimum = 1; description = 'verified education topics'; filter = 'source=not.is.null&verified_at=not.is.null' },
        @{ table = 'audio_files'; minimum = 684; description = 'verified Quran audio storage paths'; filter = 'type=eq.quran_surah&reciter=not.is.null&surah_number=not.is.null&storage_path=not.is.null&verified_at=not.is.null' },
        @{ table = 'duas'; minimum = 1; description = 'verified duas'; filter = 'source=not.is.null&verified_at=not.is.null' },
        @{ table = 'asma_ul_husna'; minimum = 99; description = 'verified Asma-ul-Husna names'; filter = 'source=not.is.null&verified_at=not.is.null' },
        @{ table = 'quran_surahs'; minimum = 114; description = 'verified Quran surahs'; filter = 'source=not.is.null&verified_at=not.is.null' },
        @{ table = 'quran_ayahs'; minimum = 6236; description = 'verified Quran ayahs'; filter = 'source=not.is.null&verified_at=not.is.null' },
        @{ table = 'tafsir_entries'; minimum = 6236; description = 'complete verified tafsir catalog'; filter = 'source=not.is.null&source_license=not.is.null&verified_at=not.is.null' },
        @{ table = 'hadiths'; minimum = 600; description = 'verified hadith catalog minimum'; filter = 'source=not.is.null&source_license=not.is.null&verified_at=not.is.null' }
      )
      foreach ($check in $supabaseTableChecks) {
        Assert-SupabaseTableMinimumCount `
          -SupabaseUrl $supabaseUrl `
          -ClientKey $supabaseClientKey `
          -TableName $check.table `
          -MinimumCount $check.minimum `
          -Description $check.description `
          -FilterQuery $check.filter
      }
    }
  }

  if (-not $SkipFlutterValidation) {
    & flutter analyze
    if ($LASTEXITCODE -eq 0) {
      Add-Pass 'flutter analyze passed.'
    } else {
      Add-Failure 'flutter analyze failed.'
    }

    & flutter test --reporter compact
    if ($LASTEXITCODE -eq 0) {
      Add-Pass 'flutter test passed.'
    } else {
      Add-Failure 'flutter test failed.'
    }
  }

  if ($failures.Count -gt 0) {
    Write-Host ''
    Write-Host "Store readiness check failed with $($failures.Count) blocking item(s)."
    exit 1
  }

  Write-Host ''
  Write-Host 'Store readiness check passed. The app is ready to build a production store artifact on this machine.'
} finally {
  Pop-Location
}
