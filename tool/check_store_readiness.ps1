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
    'SUPABASE_ANON_KEY',
    'PLACES_TILE_URL_TEMPLATE',
    'PLACES_OVERPASS_API_URL'
  )
  foreach ($name in $requiredEnvironment) {
    if ([string]::IsNullOrWhiteSpace([Environment]::GetEnvironmentVariable($name))) {
      Add-Failure "$name is missing; store builds must inject production runtime config."
    } else {
      Add-Pass "$name is set."
    }
  }

  $supabaseUrl = [Environment]::GetEnvironmentVariable('SUPABASE_URL')
  if (-not [string]::IsNullOrWhiteSpace($supabaseUrl)) {
    Test-CleanHttpsUrl -Name 'SUPABASE_URL' -Value $supabaseUrl -DisallowPath | Out-Null
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

  if ([string]::IsNullOrWhiteSpace([Environment]::GetEnvironmentVariable('SUPABASE_SERVICE_ROLE_KEY'))) {
    Add-Failure 'SUPABASE_SERVICE_ROLE_KEY is missing; Quran audio cannot be uploaded to Supabase Storage from this machine.'
  } else {
    Add-Pass 'SUPABASE_SERVICE_ROLE_KEY is set for storage upload.'
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
    } catch {
      Add-Failure 'Verified Quran audio mirror manifest is not valid JSON.'
    }
  } else {
    Add-Failure 'Verified Quran audio mirror manifest is missing; run dart run tool/download_verified_quran_audio.dart before storage upload.'
  }

  if (-not $SkipNetwork) {
    try {
      $privacyUrl = 'https://raw.githubusercontent.com/UmutAmal/Sirat--Nur/master/docs/privacy_policy.md'
      $response = Invoke-WebRequest -Uri $privacyUrl -Method Head -TimeoutSec 30
      if ($response.StatusCode -eq 200) {
        Add-Pass 'Remote privacy policy URL returns HTTP 200.'
      } else {
        Add-Failure "Remote privacy policy URL returned HTTP $($response.StatusCode)."
      }
    } catch {
      Add-Failure "Remote privacy policy URL is not reachable: $($_.Exception.Message)"
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
