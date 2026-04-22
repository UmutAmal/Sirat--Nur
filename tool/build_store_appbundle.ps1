param(
  [switch]$NoBuild
)

$ErrorActionPreference = 'Stop'

$requiredEnvironment = @(
  'SUPABASE_URL',
  'PLACES_TILE_URL_TEMPLATE',
  'PLACES_OVERPASS_API_URL',
  'QURAN_AUDIO_CLOUDFLARE_BASE_URL',
  'QURAN_AUDIO_GITHUB_URL_TEMPLATE'
)

$missing = @()
foreach ($name in $requiredEnvironment) {
  if ([string]::IsNullOrWhiteSpace([Environment]::GetEnvironmentVariable($name))) {
    $missing += $name
  }
}

if ($missing.Count -gt 0) {
  throw "Missing store release environment variables: $($missing -join ', ')"
}

$supabaseClientKey = [Environment]::GetEnvironmentVariable('SUPABASE_PUBLISHABLE_KEY')
if ([string]::IsNullOrWhiteSpace($supabaseClientKey)) {
  $supabaseClientKey = [Environment]::GetEnvironmentVariable('SUPABASE_ANON_KEY')
}
if ([string]::IsNullOrWhiteSpace($supabaseClientKey)) {
  throw 'Missing store release environment variable: SUPABASE_PUBLISHABLE_KEY (or legacy SUPABASE_ANON_KEY).'
}

function Test-BlockedHost {
  param(
    [Parameter(Mandatory = $true)]
    [string]$HostName,
    [Parameter(Mandatory = $true)]
    [string[]]$BlockedHosts
  )

  $normalizedHost = $HostName.ToLowerInvariant()
  foreach ($blockedHost in $BlockedHosts) {
    if ($normalizedHost -eq $blockedHost -or $normalizedHost.EndsWith(".$blockedHost")) {
      return $true
    }
  }

  return $false
}

function Assert-CleanHttpsUrl {
  param(
    [Parameter(Mandatory = $true)]
    [string]$Name,
    [Parameter(Mandatory = $true)]
    [string]$Value,
    [switch]$DisallowPath
  )

  try {
    $uri = [System.Uri]$Value
  } catch {
    throw "$Name must be a valid HTTPS URL."
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
    throw "$Name must be a clean HTTPS URL without user info, query, fragment$(if ($DisallowPath) { ', or path' } else { '' })."
  }

  return $uri
}

Assert-CleanHttpsUrl -Name 'SUPABASE_URL' -Value $env:SUPABASE_URL -DisallowPath | Out-Null

Assert-CleanHttpsUrl -Name 'QURAN_AUDIO_CLOUDFLARE_BASE_URL' -Value $env:QURAN_AUDIO_CLOUDFLARE_BASE_URL | Out-Null

$githubTemplate = $env:QURAN_AUDIO_GITHUB_URL_TEMPLATE.Trim()
if (
  -not $githubTemplate.Contains('{reciter}') -or
  -not $githubTemplate.Contains('{surah}')
) {
  throw 'QURAN_AUDIO_GITHUB_URL_TEMPLATE must include {reciter} and {surah}.'
}
$githubProbe = $githubTemplate.Replace('{reciter}', 'abdul_basit_murattal').Replace('{surah}', '001').Replace('{file}', '001.mp3').Replace('{path}', 'abdul_basit_murattal/001.mp3')
Assert-CleanHttpsUrl -Name 'QURAN_AUDIO_GITHUB_URL_TEMPLATE' -Value $githubProbe | Out-Null

$tileTemplate = $env:PLACES_TILE_URL_TEMPLATE.Trim()
foreach ($token in @('{z}', '{x}', '{y}')) {
  if (-not $tileTemplate.Contains($token)) {
    throw "PLACES_TILE_URL_TEMPLATE must include $token."
  }
}

$tileProbe = $tileTemplate.Replace('{z}', '0').Replace('{x}', '0').Replace('{y}', '0').Replace('{s}', 'a')
$tileUri = Assert-CleanHttpsUrl -Name 'PLACES_TILE_URL_TEMPLATE' -Value $tileProbe
if (Test-BlockedHost -HostName $tileUri.Host -BlockedHosts @('tile.openstreetmap.org', 'tile.openstreetmap.de')) {
  throw 'PLACES_TILE_URL_TEMPLATE must not point at public OpenStreetMap tile hosts.'
}

$overpassUri = Assert-CleanHttpsUrl -Name 'PLACES_OVERPASS_API_URL' -Value $env:PLACES_OVERPASS_API_URL
if (Test-BlockedHost -HostName $overpassUri.Host -BlockedHosts @(
      'overpass-api.de',
      'overpass.kumi.systems',
      'overpass.openstreetmap.fr',
      'overpass.openstreetmap.ru',
      'overpass.osm.ch',
      'overpass.osm.rambler.ru'
    )) {
  throw 'PLACES_OVERPASS_API_URL must not point at public Overpass hosts; use an approved proxy or provider.'
}

$keyProperties = Join-Path $PSScriptRoot '..\android\key.properties'
if (-not (Test-Path -LiteralPath $keyProperties)) {
  throw 'Missing android/key.properties. Copy android/key.properties.example and point it at the upload keystore.'
}

$keyPropertiesContent = Get-Content -LiteralPath $keyProperties -Raw
foreach ($requiredKey in @('storeFile=', 'storePassword=', 'keyAlias=', 'keyPassword=')) {
  if (-not $keyPropertiesContent.Contains($requiredKey)) {
    throw "android/key.properties is missing $requiredKey"
  }
}

$quranAudioPathNamespace = [Environment]::GetEnvironmentVariable('QURAN_AUDIO_PATH_NAMESPACE')
if ([string]::IsNullOrWhiteSpace($quranAudioPathNamespace)) {
  $quranAudioPathNamespace = [Environment]::GetEnvironmentVariable('SUPABASE_QURAN_AUDIO_BUCKET')
}
if ([string]::IsNullOrWhiteSpace($quranAudioPathNamespace)) {
  $quranAudioPathNamespace = 'quran-audio'
}
if ($quranAudioPathNamespace -ne 'quran-audio') {
  throw 'QURAN_AUDIO_PATH_NAMESPACE must be quran-audio so it matches the verified audio_files.storage_path seed.'
}

if ($NoBuild) {
  Write-Host 'Store release configuration is present.'
  exit 0
}

flutter build appbundle --release `
  --dart-define=SUPABASE_URL="$env:SUPABASE_URL" `
  --dart-define=SUPABASE_PUBLISHABLE_KEY="$supabaseClientKey" `
  --dart-define=QURAN_AUDIO_PATH_NAMESPACE="$quranAudioPathNamespace" `
  --dart-define=PLACES_TILE_URL_TEMPLATE="$env:PLACES_TILE_URL_TEMPLATE" `
  --dart-define=PLACES_OVERPASS_API_URL="$env:PLACES_OVERPASS_API_URL" `
  --dart-define=QURAN_AUDIO_CLOUDFLARE_BASE_URL="$env:QURAN_AUDIO_CLOUDFLARE_BASE_URL" `
  --dart-define=QURAN_AUDIO_GITHUB_URL_TEMPLATE="$env:QURAN_AUDIO_GITHUB_URL_TEMPLATE" `
  --dart-define=GEMINI_API_KEY="$env:GEMINI_API_KEY"
