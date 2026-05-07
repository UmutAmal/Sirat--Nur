param(
  [string]$AppiumUrl = "http://127.0.0.1:4723",
  [string]$DeviceName = "emulator-5554",
  [string]$Package = "com.umutamal.sirat_i_nur",
  [string]$Activity = ".MainActivity",
  [string]$OutputDir = "build",
  [ValidateSet("release", "debug")]
  [string]$BuildMode = "debug",
  [string]$SmokeLocale = "en",
  [switch]$SkipBuildInstall,
  [switch]$NoReset,
  [switch]$SkipLogcat,
  [switch]$NoStartAppium
)

$ErrorActionPreference = "Stop"

. (Join-Path $PSScriptRoot 'import_release_environment.ps1')

$releaseRuntimeVariableNames = @(
  'SUPABASE_URL',
  'SUPABASE_PUBLISHABLE_KEY',
  'SUPABASE_ANON_KEY',
  'PLACES_TILE_URL_TEMPLATE',
  'PLACES_OVERPASS_API_URL',
  'QURAN_AUDIO_CLOUDFLARE_BASE_URL',
  'QURAN_AUDIO_GITHUB_URL_TEMPLATE',
  'QURAN_AUDIO_PATH_NAMESPACE',
  'SUPABASE_QURAN_AUDIO_BUCKET',
  'GEMINI_API_KEY'
)

function Require-Command {
  param(
    [Parameter(Mandatory = $true)]
    [string]$Name,
    [Parameter(Mandatory = $true)]
    [string]$InstallHint
  )

  if (-not (Get-Command $Name -ErrorAction SilentlyContinue)) {
    throw "$Name is required. $InstallHint"
  }
}

function Assert-NativeSuccess {
  param(
    [Parameter(Mandatory = $true)]
    [string]$Description
  )

  if ($LASTEXITCODE -ne 0) {
    throw "$Description failed (exit code $LASTEXITCODE)."
  }
}

function Assert-AdbDeviceAvailable {
  param(
    [Parameter(Mandatory = $true)]
    [string]$DeviceName
  )

  $previousErrorActionPreference = $ErrorActionPreference
  $ErrorActionPreference = 'Continue'
  try {
    $deviceOutput = adb devices 2>&1
    $deviceExitCode = $LASTEXITCODE
  } finally {
    $ErrorActionPreference = $previousErrorActionPreference
  }

  if ($deviceExitCode -ne 0) {
    $deviceMessage = ($deviceOutput | Out-String).Trim()
    throw "adb devices failed before Appium smoke could start: $deviceMessage"
  }

  $readyPattern = "^\s*$([regex]::Escape($DeviceName))\s+device\s*$"
  foreach ($line in $deviceOutput) {
    if ([string]$line -match $readyPattern) {
      return
    }
  }

  $knownDevices = @()
  foreach ($line in $deviceOutput) {
    $trimmed = ([string]$line).Trim()
    if ([string]::IsNullOrWhiteSpace($trimmed) -or $trimmed -like 'List of devices attached*') {
      continue
    }

    $knownDevices += $trimmed
  }

  $knownDevicesText = if ($knownDevices.Count -gt 0) { $knownDevices -join '; ' } else { 'none' }
  throw "ADB device '$DeviceName' is not connected and ready. Start the emulator, authorize USB debugging, or pass -DeviceName with a ready adb device before running Appium smoke. Current adb devices: $knownDevicesText"
}

function Stop-AndroidGradleDaemons {
  $androidDir = Join-Path $PSScriptRoot '..\android'
  $gradleWrapper = Join-Path $androidDir 'gradlew.bat'
  if (-not (Test-Path $gradleWrapper)) {
    return
  }

  Push-Location $androidDir
  try {
    & .\gradlew.bat --stop | Out-Null
    Assert-NativeSuccess -Description 'gradle daemon stop before Appium release build'
  } finally {
    Pop-Location
  }
}

function Clear-AppiumReleaseLintCache {
  $releaseLintCache = Join-Path $PSScriptRoot '..\build\app\intermediates\lint-cache\lintVitalAnalyzeRelease'
  $lastError = $null
  for ($attempt = 1; $attempt -le 6; $attempt++) {
    if (-not (Test-Path $releaseLintCache)) {
      return
    }

    try {
      Remove-Item -LiteralPath $releaseLintCache -Recurse -Force -ErrorAction Stop
      return
    } catch {
      $lastError = $_
      if ($attempt -lt 6) {
        Start-Sleep -Seconds 2
      }
    }
  }

  throw "Appium release lint cache is still locked after Gradle daemon stop: $($lastError.Exception.Message)"
}

function Install-CurrentWorkspaceApk {
  param(
    [Parameter(Mandatory = $true)][string]$DeviceName,
    [Parameter(Mandatory = $true)][string]$Package,
    [Parameter(Mandatory = $true)][string]$ApkPath,
    [Parameter(Mandatory = $true)][bool]$NoReset
  )

  $previousErrorActionPreference = $ErrorActionPreference
  $ErrorActionPreference = 'Continue'
  try {
    $installOutput = adb -s $DeviceName install -r $ApkPath 2>&1
    $installExitCode = $LASTEXITCODE
  } finally {
    $ErrorActionPreference = $previousErrorActionPreference
  }

  if ($installExitCode -eq 0) {
    return $false
  }

  $installMessage = ($installOutput | Out-String).Trim()
  $normalizedInstallMessage = $installMessage -replace '\s+', ''
  if ($normalizedInstallMessage.Contains('INSTALL_FAILED_UPDATE_INCOMPATIBLE') -and -not $NoReset) {
    adb -s $DeviceName uninstall $Package | Out-Null
    Assert-NativeSuccess -Description "adb uninstall incompatible package $Package"

    $previousErrorActionPreference = $ErrorActionPreference
    $ErrorActionPreference = 'Continue'
    try {
      $retryOutput = adb -s $DeviceName install -r $ApkPath 2>&1
      $retryExitCode = $LASTEXITCODE
    } finally {
      $ErrorActionPreference = $previousErrorActionPreference
    }

    if ($retryExitCode -eq 0) {
      return $true
    }

    $retryMessage = ($retryOutput | Out-String).Trim()
    throw "adb install current APK failed after uninstall: $retryMessage"
  }

  throw "adb install current APK failed: $installMessage"
}

function Invoke-AppiumJson {
  param(
    [Parameter(Mandatory = $true)][string]$Method,
    [Parameter(Mandatory = $true)][string]$Path,
    [object]$Body = $null,
    [int]$TimeoutSec = 60
  )

  $uri = "$AppiumUrl$Path"
  if ($null -eq $Body) {
    return Invoke-RestMethod -Method $Method -Uri $uri -ContentType "application/json" -TimeoutSec $TimeoutSec
  }

  $json = $Body | ConvertTo-Json -Depth 20
  return Invoke-RestMethod -Method $Method -Uri $uri -Body $json -ContentType "application/json" -TimeoutSec $TimeoutSec
}

function Test-AppiumServerReady {
  try {
    $status = Get-AppiumValue (Invoke-AppiumJson -Method "GET" -Path "/status" -TimeoutSec 5)
    return [bool]$status.ready
  } catch {
    return $false
  }
}

function Test-LocalAppiumEndpoint {
  $uri = [Uri]$AppiumUrl
  return @('127.0.0.1', 'localhost', '::1').Contains($uri.Host)
}

function Resolve-AppiumCommand {
  $cmd = Get-Command 'appium.cmd' -ErrorAction SilentlyContinue
  if ($cmd) {
    return $cmd.Source
  }

  $cmd = Get-Command 'appium' -ErrorAction SilentlyContinue
  if ($cmd) {
    return $cmd.Source
  }

  throw 'Appium server is not running and the appium command is not on PATH. Install Appium or start the server manually before running runtime smoke.'
}

function Start-LocalAppiumServer {
  param([Parameter(Mandatory = $true)][string]$OutputDir)

  $uri = [Uri]$AppiumUrl
  $command = Resolve-AppiumCommand
  $stdout = Join-Path $OutputDir 'appium-server.out.log'
  $stderr = Join-Path $OutputDir 'appium-server.err.log'
  $arguments = @(
    '--address',
    $uri.Host,
    '--port',
    [string]$uri.Port,
    '--log-timestamp'
  )

  if (-not [string]::IsNullOrWhiteSpace($uri.AbsolutePath) -and $uri.AbsolutePath -ne '/') {
    $arguments += @('--base-path', $uri.AbsolutePath.TrimEnd('/'))
  }

  $process = Start-Process -FilePath $command -ArgumentList $arguments -WindowStyle Hidden -RedirectStandardOutput $stdout -RedirectStandardError $stderr -PassThru
  $deadline = (Get-Date).AddSeconds(75)
  do {
    if (Test-AppiumServerReady) {
      return $process
    }
    Start-Sleep -Seconds 2
  } while ((Get-Date) -lt $deadline)

  throw "Started local Appium process $($process.Id), but /status did not become ready at $AppiumUrl. See $stdout and $stderr."
}

function Get-AppiumValue {
  param([object]$Response)

  if ($null -ne $Response -and $Response.PSObject.Properties.Name -contains "value") {
    return $Response.value
  }

  return $Response
}

function Get-ElementId {
  param([object]$Element)

  if ($null -eq $Element) {
    return $null
  }

  $w3cId = $Element."element-6066-11e4-a52e-4f735466cecf"
  if ($w3cId) {
    return $w3cId
  }

  return $Element.ELEMENT
}

function Get-ReleaseDartDefineArguments {
  param([Parameter(Mandatory = $true)][string]$BuildMode)

  if ($BuildMode -ne 'release') {
    return @()
  }

  $repoRoot = Resolve-Path (Join-Path $PSScriptRoot '..')
  $releaseEnvironment = Initialize-ReleaseEnvironment -RepoRoot $repoRoot -VariableNames $releaseRuntimeVariableNames
  if ($releaseEnvironment.LoadedFiles.Count -gt 0) {
    Write-Host "Loaded release environment file(s): $($releaseEnvironment.LoadedFiles -join ', ')"
  }

  $supabaseClientKey = [Environment]::GetEnvironmentVariable('SUPABASE_PUBLISHABLE_KEY')
  if ([string]::IsNullOrWhiteSpace($supabaseClientKey)) {
    $supabaseClientKey = [Environment]::GetEnvironmentVariable('SUPABASE_ANON_KEY')
  }
  if ([string]::IsNullOrWhiteSpace($supabaseClientKey)) {
    throw 'SUPABASE_PUBLISHABLE_KEY or SUPABASE_ANON_KEY is required for release Appium smoke builds.'
  }

  $quranAudioPathNamespace = [Environment]::GetEnvironmentVariable('QURAN_AUDIO_PATH_NAMESPACE')
  if ([string]::IsNullOrWhiteSpace($quranAudioPathNamespace)) {
    $quranAudioPathNamespace = [Environment]::GetEnvironmentVariable('SUPABASE_QURAN_AUDIO_BUCKET')
  }
  if ([string]::IsNullOrWhiteSpace($quranAudioPathNamespace)) {
    throw 'QURAN_AUDIO_PATH_NAMESPACE or SUPABASE_QURAN_AUDIO_BUCKET is required for release Appium smoke builds.'
  }

  return @(
    "--dart-define=SUPABASE_URL=$([Environment]::GetEnvironmentVariable('SUPABASE_URL'))",
    "--dart-define=SUPABASE_PUBLISHABLE_KEY=$supabaseClientKey",
    "--dart-define=QURAN_AUDIO_PATH_NAMESPACE=$quranAudioPathNamespace",
    "--dart-define=PLACES_TILE_URL_TEMPLATE=$([Environment]::GetEnvironmentVariable('PLACES_TILE_URL_TEMPLATE'))",
    "--dart-define=PLACES_OVERPASS_API_URL=$([Environment]::GetEnvironmentVariable('PLACES_OVERPASS_API_URL'))",
    "--dart-define=QURAN_AUDIO_CLOUDFLARE_BASE_URL=$([Environment]::GetEnvironmentVariable('QURAN_AUDIO_CLOUDFLARE_BASE_URL'))",
    "--dart-define=QURAN_AUDIO_GITHUB_URL_TEMPLATE=$([Environment]::GetEnvironmentVariable('QURAN_AUDIO_GITHUB_URL_TEMPLATE'))",
    "--dart-define=GEMINI_API_KEY=$([Environment]::GetEnvironmentVariable('GEMINI_API_KEY'))"
  )
}

function Find-AppiumElement {
  param(
    [Parameter(Mandatory = $true)][string]$SessionId,
    [Parameter(Mandatory = $true)][string]$Using,
    [Parameter(Mandatory = $true)][string]$Selector
  )

  try {
    $response = Invoke-AppiumJson -Method "POST" -Path "/session/$SessionId/element" -Body @{
      using = $Using
      value = $Selector
    }
    return Get-AppiumValue $response
  } catch {
    return $null
  }
}

function Click-AppiumElement {
  param(
    [Parameter(Mandatory = $true)][string]$SessionId,
    [Parameter(Mandatory = $true)][object]$Element
  )

  $elementId = Get-ElementId $Element
  if (-not $elementId) {
    return $false
  }

  Invoke-AppiumJson -Method "POST" -Path "/session/$SessionId/element/$elementId/click" -Body @{} | Out-Null
  Start-Sleep -Milliseconds 900
  return $true
}

function Click-DescriptionContains {
  param(
    [Parameter(Mandatory = $true)][string]$SessionId,
    [Parameter(Mandatory = $true)][string]$Label
  )

  $selector = "new UiSelector().descriptionContains(`"$Label`").clickable(true)"
  $element = Find-AppiumElement -SessionId $SessionId -Using "-android uiautomator" -Selector $selector
  if ($null -eq $element) {
    return $false
  }

  return Click-AppiumElement -SessionId $SessionId -Element $element
}

function Click-TextContains {
  param(
    [Parameter(Mandatory = $true)][string]$SessionId,
    [Parameter(Mandatory = $true)][string]$Label
  )

  $selector = "new UiSelector().textContains(`"$Label`")"
  $element = Find-AppiumElement -SessionId $SessionId -Using "-android uiautomator" -Selector $selector
  if ($null -eq $element) {
    return $false
  }

  return Click-AppiumElement -SessionId $SessionId -Element $element
}

function Click-ScrollableTextContains {
  param(
    [Parameter(Mandatory = $true)][string]$SessionId,
    [Parameter(Mandatory = $true)][string]$Label
  )

  $selector = "new UiScrollable(new UiSelector().scrollable(true)).scrollIntoView(new UiSelector().textContains(`"$Label`"))"
  $element = Find-AppiumElement -SessionId $SessionId -Using "-android uiautomator" -Selector $selector
  if ($null -eq $element) {
    return $false
  }

  return Click-AppiumElement -SessionId $SessionId -Element $element
}

function Click-ScrollableDescriptionContains {
  param(
    [Parameter(Mandatory = $true)][string]$SessionId,
    [Parameter(Mandatory = $true)][string]$Label
  )

  $selector = "new UiScrollable(new UiSelector().scrollable(true)).scrollIntoView(new UiSelector().descriptionContains(`"$Label`"))"
  $element = Find-AppiumElement -SessionId $SessionId -Using "-android uiautomator" -Selector $selector
  if ($null -eq $element) {
    return $false
  }

  return Click-AppiumElement -SessionId $SessionId -Element $element
}

function Get-AppiumSource {
  param([Parameter(Mandatory = $true)][string]$SessionId)

  $response = Invoke-AppiumJson -Method "GET" -Path "/session/$SessionId/source"
  return [string](Get-AppiumValue $response)
}

function Save-AppiumSource {
  param(
    [Parameter(Mandatory = $true)][string]$SessionId,
    [Parameter(Mandatory = $true)][string]$Name
  )

  $safeName = $Name -replace "[^A-Za-z0-9_-]", "-"
  $source = Get-AppiumSource -SessionId $SessionId
  $path = Join-Path $OutputDir "appium-runtime-smoke-$safeName.xml"
  $source | Set-Content -Encoding UTF8 -Path $path
  return $source
}

function Test-ContainsAny {
  param(
    [Parameter(Mandatory = $true)][string]$Source,
    [Parameter(Mandatory = $true)][string[]]$Needles
  )

  foreach ($needle in $Needles) {
    if ($Source.Contains($needle)) {
      return $true
    }
  }

  return $false
}

function Select-NonEmptyUniqueStrings {
  param([string[]]$Values)

  $seen = @{}
  $result = @()
  foreach ($value in $Values) {
    if ([string]::IsNullOrWhiteSpace($value)) {
      continue
    }

    $trimmed = $value.Trim()
    if ($seen.ContainsKey($trimmed)) {
      continue
    }

    $seen[$trimmed] = $true
    $result += $trimmed
  }

  return [string[]]$result
}

function Resolve-SmokeLocaleTag {
  param([string]$Locale)

  if ([string]::IsNullOrWhiteSpace($Locale)) {
    return 'en'
  }

  $normalized = $Locale.Trim().Replace('-', '_')
  if ($normalized -notmatch '^[A-Za-z]{2,3}(_[A-Za-z]{2})?$') {
    throw "SmokeLocale must be a BCP-47-like language tag such as en, tr, ar, or zh_CN."
  }

  $parts = $normalized.Split('_')
  if ($parts.Count -eq 1) {
    return $parts[0].ToLowerInvariant()
  }

  return "$($parts[0].ToLowerInvariant())_$($parts[1].ToUpperInvariant())"
}

function Read-ArbMessages {
  param([Parameter(Mandatory = $true)][string]$LocaleTag)

  $repoRoot = Resolve-Path (Join-Path $PSScriptRoot '..')
  $l10nRoot = Join-Path $repoRoot 'lib\l10n'
  $candidatePaths = @(
    (Join-Path $l10nRoot "app_$LocaleTag.arb")
  )

  if ($LocaleTag.Contains('_')) {
    $languageOnly = $LocaleTag.Split('_')[0]
    $candidatePaths += (Join-Path $l10nRoot "app_$languageOnly.arb")
  }

  $candidatePaths += (Join-Path $l10nRoot 'app_en.arb')

  foreach ($path in $candidatePaths) {
    if (Test-Path $path) {
      return Get-Content -Raw -Path $path | ConvertFrom-Json
    }
  }

  throw 'No ARB localization file could be loaded for the Appium smoke script.'
}

function Get-ArbString {
  param(
    [Parameter(Mandatory = $true)]$Messages,
    [Parameter(Mandatory = $true)][string]$Key,
    [Parameter(Mandatory = $true)][string]$Fallback
  )

  $property = $Messages.PSObject.Properties[$Key]
  if ($null -eq $property -or [string]::IsNullOrWhiteSpace([string]$property.Value)) {
    return $Fallback
  }

  return [string]$property.Value
}

function Get-TemplatePrefix {
  param(
    [Parameter(Mandatory = $true)][string]$Template,
    [Parameter(Mandatory = $true)][string]$Placeholder
  )

  $index = $Template.IndexOf($Placeholder)
  if ($index -lt 0) {
    return $Template.Trim()
  }

  return $Template.Substring(0, $index).Trim()
}

function Get-SmokeTextBundle {
  param([Parameter(Mandatory = $true)][string]$LocaleTag)

  $messages = Read-ArbMessages -LocaleTag $LocaleTag
  $downloadCanceledForReciter = Get-ArbString -Messages $messages -Key 'downloadCanceledForReciter' -Fallback 'Download canceled for {reciter}.'
  return [ordered]@{
    locale = $LocaleTag
    next = Get-ArbString -Messages $messages -Key 'next' -Fallback 'Next'
    getStarted = Get-ArbString -Messages $messages -Key 'getStarted' -Fallback 'Get Started'
    onboarding1Title = Get-ArbString -Messages $messages -Key 'onboarding1Title' -Fallback 'Welcome to Sirat-ı Nur'
    home = Get-ArbString -Messages $messages -Key 'home' -Fallback 'Home'
    settings = Get-ArbString -Messages $messages -Key 'settings' -Fallback 'Settings'
    language = Get-ArbString -Messages $messages -Key 'language' -Fallback 'Language'
    selectLanguage = Get-ArbString -Messages $messages -Key 'selectLanguage' -Fallback 'Select Language'
    systemDefault = Get-ArbString -Messages $messages -Key 'systemDefault' -Fallback 'System Default'
    prayerCalculation = Get-ArbString -Messages $messages -Key 'prayerCalculation' -Fallback 'Prayer Calculation'
    method = Get-ArbString -Messages $messages -Key 'method' -Fallback 'Calculation Method'
    madhab = Get-ArbString -Messages $messages -Key 'madhab' -Fallback 'Asr Juristic Method'
    diagnosticsPrayerSource = Get-ArbString -Messages $messages -Key 'diagnosticsPrayerSource' -Fallback 'Prayer Authority'
    audioVoice = Get-ArbString -Messages $messages -Key 'audioVoice' -Fallback 'Audio Voice'
    location = Get-ArbString -Messages $messages -Key 'location' -Fallback 'Location'
    clearCache = Get-ArbString -Messages $messages -Key 'clearCache' -Fallback 'Clear Cache'
    cacheClearedSuccess = Get-ArbString -Messages $messages -Key 'cacheClearedSuccess' -Fallback 'Cache cleared successfully'
    diagnostics = Get-ArbString -Messages $messages -Key 'diagnostics' -Fallback 'Diagnostics'
    version = Get-ArbString -Messages $messages -Key 'version' -Fallback 'Version'
    diagnosticsPrayerProfile = Get-ArbString -Messages $messages -Key 'diagnosticsPrayerProfile' -Fallback 'Prayer Profile'
    diagnosticsQuranDataset = Get-ArbString -Messages $messages -Key 'diagnosticsQuranDataset' -Fallback 'Quran Dataset'
    diagnosticsLocalizationLocales = Get-ArbString -Messages $messages -Key 'diagnosticsLocalizationLocales' -Fallback 'Localization Locales'
    quran = Get-ArbString -Messages $messages -Key 'quran' -Fallback 'Quran'
    playSurahAudio = Get-ArbString -Messages $messages -Key 'playSurahAudio' -Fallback 'Play surah audio'
    pauseSurahAudio = Get-ArbString -Messages $messages -Key 'pauseSurahAudio' -Fallback 'Pause surah audio'
    quranAudioPlaybackErrorWithConnectionHint = Get-ArbString -Messages $messages -Key 'quranAudioPlaybackErrorWithConnectionHint' -Fallback 'Audio playback failed. Please check your connection.'
    audioPlayFailed = Get-ArbString -Messages $messages -Key 'audioPlayFailed' -Fallback 'Audio playback failed'
    qibla = Get-ArbString -Messages $messages -Key 'qibla' -Fallback 'Qibla'
    zikr = Get-ArbString -Messages $messages -Key 'zikr' -Fallback 'Zikr'
    calendar = Get-ArbString -Messages $messages -Key 'calendar' -Fallback 'Calendar'
    dailyVerse = Get-ArbString -Messages $messages -Key 'dailyVerse' -Fallback 'Daily Verse'
    dailyVerseUnavailableTitle = Get-ArbString -Messages $messages -Key 'dailyVerseUnavailableTitle' -Fallback 'Daily verse unavailable'
    noInternet = Get-ArbString -Messages $messages -Key 'noInternet' -Fallback 'No Internet Connection'
    places = Get-ArbString -Messages $messages -Key 'places' -Fallback 'Places'
    placesLocationRequiredTitle = Get-ArbString -Messages $messages -Key 'placesLocationRequiredTitle' -Fallback 'Location required'
    nearbyMosques = Get-ArbString -Messages $messages -Key 'nearbyMosques' -Fallback 'Nearby Mosques'
    downloads = Get-ArbString -Messages $messages -Key 'downloads' -Fallback 'Downloads'
    offlineQuranAudioPacks = Get-ArbString -Messages $messages -Key 'offlineQuranAudioPacks' -Fallback 'Offline Quran Audio Packs'
    offlineDownloadManager = Get-ArbString -Messages $messages -Key 'offlineDownloadManager' -Fallback 'Offline Download Manager'
    downloadAction = Get-ArbString -Messages $messages -Key 'downloadAction' -Fallback 'Download'
    cancelDownloadAction = Get-ArbString -Messages $messages -Key 'cancelDownloadAction' -Fallback 'Cancel download'
    downloadPreparing = Get-ArbString -Messages $messages -Key 'downloadPreparing' -Fallback 'Preparing download...'
    downloading = Get-ArbString -Messages $messages -Key 'downloading' -Fallback 'Downloading...'
    downloadCancelling = Get-ArbString -Messages $messages -Key 'downloadCancelling' -Fallback 'Cancelling...'
    downloadCanceledForReciterPrefix = Get-TemplatePrefix -Template $downloadCanceledForReciter -Placeholder '{reciter}'
    analytics = Get-ArbString -Messages $messages -Key 'analytics' -Fallback 'Analytics'
    prayerCompletion = Get-ArbString -Messages $messages -Key 'prayerCompletion' -Fallback 'Prayer Completion'
    streaks = Get-ArbString -Messages $messages -Key 'streaks' -Fallback 'Streaks'
    premium = Get-ArbString -Messages $messages -Key 'premium' -Fallback 'Premium'
    upgradeToPro = Get-ArbString -Messages $messages -Key 'upgradeToPro' -Fallback 'Upgrade to Pro'
  }
}

function Click-AnyDescriptionOrText {
  param(
    [Parameter(Mandatory = $true)][string]$SessionId,
    [Parameter(Mandatory = $true)][string[]]$Candidates
  )

  foreach ($candidate in $Candidates) {
    if ((Click-DescriptionContains -SessionId $SessionId -Label $candidate) -or
        (Click-TextContains -SessionId $SessionId -Label $candidate)) {
      return $true
    }
  }

  return $false
}

function Wait-ClickAnyDescriptionOrText {
  param(
    [Parameter(Mandatory = $true)][string]$SessionId,
    [Parameter(Mandatory = $true)][string[]]$Candidates,
    [int]$Attempts = 8,
    [int]$DelayMilliseconds = 700
  )

  for ($attempt = 0; $attempt -lt $Attempts; $attempt++) {
    if (Click-AnyDescriptionOrText -SessionId $SessionId -Candidates $Candidates) {
      return $true
    }
    Start-Sleep -Milliseconds $DelayMilliseconds
  }

  return $false
}

function Wait-ClickAnyScrollableText {
  param(
    [Parameter(Mandatory = $true)][string]$SessionId,
    [Parameter(Mandatory = $true)][string[]]$Candidates,
    [int]$Attempts = 5,
    [int]$DelayMilliseconds = 700
  )

  for ($attempt = 0; $attempt -lt $Attempts; $attempt++) {
    foreach ($candidate in $Candidates) {
      if ((Click-DescriptionContains -SessionId $SessionId -Label $candidate) -or
          (Click-TextContains -SessionId $SessionId -Label $candidate) -or
          (Click-ScrollableDescriptionContains -SessionId $SessionId -Label $candidate) -or
          (Click-ScrollableTextContains -SessionId $SessionId -Label $candidate)) {
        return $true
      }
    }
    Start-Sleep -Milliseconds $DelayMilliseconds
  }

  return $false
}

New-Item -ItemType Directory -Force -Path $OutputDir | Out-Null

$appiumServerAutoStarted = $false
if (-not (Test-AppiumServerReady)) {
  if ($NoStartAppium) {
    throw "Appium server is not ready at $AppiumUrl. Start Appium or rerun without -NoStartAppium to let this script start a local server."
  }

  if (-not (Test-LocalAppiumEndpoint)) {
    throw "Appium server is not ready at $AppiumUrl. Automatic startup is only supported for local Appium endpoints."
  }

  Start-LocalAppiumServer -OutputDir $OutputDir | Out-Null
  $appiumServerAutoStarted = $true
}

$normalizedSmokeLocale = Resolve-SmokeLocaleTag -Locale $SmokeLocale
$smokeText = Get-SmokeTextBundle -LocaleTag $normalizedSmokeLocale
$smokeLocaleParts = $normalizedSmokeLocale.Split('_')
$smokeLanguage = $smokeLocaleParts[0]
$smokeRegion = if ($smokeLocaleParts.Count -gt 1) { $smokeLocaleParts[1] } else { $null }

$apkPath = Join-Path "build\app\outputs\flutter-apk" "app-$BuildMode.apk"
$apkLastWriteTime = $null
$apkLength = $null
$apkPrepared = $false
$releaseDartDefinesApplied = $false
$apkReinstalledAfterSignatureMismatch = $false
$requiresLocalAdb = (-not $SkipBuildInstall) -or (-not $SkipLogcat)

if ($requiresLocalAdb) {
  Require-Command -Name 'adb' -InstallHint 'Install Android platform-tools and ensure adb is on PATH, or pass both -SkipBuildInstall and -SkipLogcat only when using a remote Appium device.'
  Assert-AdbDeviceAvailable -DeviceName $DeviceName
}

if (-not $SkipBuildInstall) {
  Require-Command -Name 'flutter' -InstallHint 'Install Flutter and ensure flutter is on PATH before running the Appium smoke script.'

  if ($BuildMode -eq 'release') {
    Stop-AndroidGradleDaemons
    Clear-AppiumReleaseLintCache
  }

  $flutterBuildArgs = @('build', 'apk', "--$BuildMode")
  $dartDefineArgs = Get-ReleaseDartDefineArguments -BuildMode $BuildMode
  if ($dartDefineArgs.Count -gt 0) {
    $releaseDartDefinesApplied = $true
    $flutterBuildArgs += $dartDefineArgs
  }
  flutter @flutterBuildArgs | Out-Null
  Assert-NativeSuccess -Description "flutter build apk --$BuildMode"

  if (-not (Test-Path $apkPath)) {
    throw "Current workspace APK was not produced at $apkPath."
  }

  $apkItem = Get-Item $apkPath
  $apkLastWriteTime = $apkItem.LastWriteTime.ToString('o')
  $apkLength = [int64]$apkItem.Length

  $apkReinstalledAfterSignatureMismatch = Install-CurrentWorkspaceApk -DeviceName $DeviceName -Package $Package -ApkPath $apkPath -NoReset ([bool]$NoReset)
  $apkPrepared = $true
}

if (-not $SkipLogcat) {
  adb -s $DeviceName logcat -c | Out-Null
  Assert-NativeSuccess -Description 'adb logcat clear'
}

$status = Get-AppiumValue (Invoke-AppiumJson -Method "GET" -Path "/status")
if (-not $status.ready) {
  throw "Appium server is not ready at $AppiumUrl"
}

$alwaysMatch = @{
  platformName = "Android"
  "appium:automationName" = "UiAutomator2"
  "appium:deviceName" = $DeviceName
  "appium:appPackage" = $Package
  "appium:appActivity" = $Activity
  "appium:noReset" = [bool]$NoReset
  "appium:newCommandTimeout" = 120
  "appium:uiautomator2ServerInstallTimeout" = 120000
  "appium:uiautomator2ServerLaunchTimeout" = 120000
  "appium:adbExecTimeout" = 120000
  "appium:autoGrantPermissions" = $true
  "appium:language" = $smokeLanguage
}

if (-not [string]::IsNullOrWhiteSpace($smokeRegion)) {
  $alwaysMatch["appium:locale"] = $smokeRegion
}

$created = Invoke-AppiumJson -Method "POST" -Path "/session" -Body @{
  capabilities = @{
    alwaysMatch = $alwaysMatch
  }
} -TimeoutSec 120

$sessionValue = Get-AppiumValue $created
$sessionId = $sessionValue.sessionId
if (-not $sessionId) {
  $sessionId = $created.sessionId
}
if (-not $sessionId) {
  throw "Appium did not return a sessionId."
}

$summary = [ordered]@{
  sessionId = $sessionId
  buildMode = $BuildMode
  smokeLocale = $normalizedSmokeLocale
  smokeLanguage = $smokeLanguage
  smokeRegion = $smokeRegion
  releaseDartDefinesApplied = $releaseDartDefinesApplied
  appiumServerAutoStarted = $appiumServerAutoStarted
  apkPath = $apkPath
  apkPrepared = $apkPrepared
  apkReinstalledAfterSignatureMismatch = $apkReinstalledAfterSignatureMismatch
  apkLastWriteTime = $apkLastWriteTime
  apkLength = $apkLength
  firstContainsWelcome = $false
  firstContainsAndroidSettings = $false
  onboarding = @()
  homeContainsDailyVerse = $false
  homeContainsDailyVerseUnavailable = $false
  homeContainsNoInternetLegacy = $false
  settingsRuntime = [ordered]@{
    clickedSettings = $false
    containsSettingsTitle = $false
    containsPrayerControls = $false
    containsSettingsDetail = $false
    clickedPrayerMethod = $false
    containsPrayerMethodOptions = $false
    selectedDefaultPrayerMethod = $false
    prayerMethodPickerClosed = $false
    clickedMadhab = $false
    containsMadhabOptions = $false
    selectedDefaultMadhab = $false
    madhabPickerClosed = $false
    clickedAudioVoice = $false
    containsAudioVoiceOptions = $false
    selectedDefaultAudioVoice = $false
    audioVoicePickerClosed = $false
    clickedLanguage = $false
    containsLanguagePickerTitle = $false
    containsLanguageOptions = $false
    selectedSystemDefaultLanguage = $false
    languagePickerClosed = $false
    clickedClearCache = $false
    containsCacheClearedMessage = $false
    clickedDiagnostics = $false
    containsDiagnosticsTitle = $false
    containsDiagnosticsRows = $false
    containsAndroidSettings = $false
  }
  bottomNavResults = @()
  quranPlayback = [ordered]@{
    clickedQuran = $false
    openedSurah = $false
    containsSurahHeader = $false
    clickedPlay = $false
    containsPauseControl = $false
    containsPlaybackError = $false
    logcatPlaybackFailure = $false
    containsAndroidSettings = $false
  }
  quickAccessResults = @()
  downloadRuntime = [ordered]@{
    clickedDownloadControl = $false
    startedDownload = $false
    showedActiveProgress = $false
    clickedCancel = $false
    showedCancellingState = $false
    containsCanceledMessage = $false
    containsAndroidSettings = $false
  }
  logcatCrashFree = $true
  logcatCaptured = $false
  logcatError = $null
  failures = @()
}

try {
  Start-Sleep -Seconds 4
  $firstXml = Save-AppiumSource -SessionId $sessionId -Name "first"
  $summary.firstContainsWelcome = Test-ContainsAny -Source $firstXml -Needles (Select-NonEmptyUniqueStrings @($smokeText.onboarding1Title, 'Welcome to Sirat', 'Sirat-'))
  $summary.firstContainsAndroidSettings = $firstXml.Contains("Settings suggestions") -or $firstXml.Contains("Android Settings") -or $firstXml.Contains("Alarms & reminders")

  $onboardingSteps = @(
    [ordered]@{ label = 'next-1'; candidates = Select-NonEmptyUniqueStrings @($smokeText.next, 'Next') },
    [ordered]@{ label = 'next-2'; candidates = Select-NonEmptyUniqueStrings @($smokeText.next, 'Next') },
    [ordered]@{ label = 'start'; candidates = Select-NonEmptyUniqueStrings @($smokeText.getStarted, 'Get Started', 'Start') }
  )

  foreach ($step in $onboardingSteps) {
    $clicked = Click-AnyDescriptionOrText -SessionId $sessionId -Candidates $step.candidates
    $summary.onboarding += [ordered]@{
      label = $step.label
      candidates = $step.candidates
      clicked = $clicked
    }
    if ($step.label -eq 'start' -and $clicked) {
      break
    }
  }

  $homeXml = Save-AppiumSource -SessionId $sessionId -Name "home"
  $summary.homeContainsDailyVerse = Test-ContainsAny -Source $homeXml -Needles (Select-NonEmptyUniqueStrings @($smokeText.dailyVerse, 'Daily Verse'))
  $summary.homeContainsDailyVerseUnavailable = Test-ContainsAny -Source $homeXml -Needles (Select-NonEmptyUniqueStrings @($smokeText.dailyVerseUnavailableTitle, 'Daily verse unavailable'))
  $summary.homeContainsNoInternetLegacy = Test-ContainsAny -Source $homeXml -Needles (Select-NonEmptyUniqueStrings @($smokeText.noInternet, 'No Internet Connection'))

  $settingsRuntime = [ordered]@{
    clickedSettings = $false
    containsSettingsTitle = $false
    containsPrayerControls = $false
    containsSettingsDetail = $false
    clickedPrayerMethod = $false
    containsPrayerMethodOptions = $false
    selectedDefaultPrayerMethod = $false
    prayerMethodPickerClosed = $false
    clickedMadhab = $false
    containsMadhabOptions = $false
    selectedDefaultMadhab = $false
    madhabPickerClosed = $false
    clickedAudioVoice = $false
    containsAudioVoiceOptions = $false
    selectedDefaultAudioVoice = $false
    audioVoicePickerClosed = $false
    clickedLanguage = $false
    containsLanguagePickerTitle = $false
    containsLanguageOptions = $false
    selectedSystemDefaultLanguage = $false
    languagePickerClosed = $false
    clickedClearCache = $false
    containsCacheClearedMessage = $false
    clickedDiagnostics = $false
    containsDiagnosticsTitle = $false
    containsDiagnosticsRows = $false
    containsAndroidSettings = $false
  }
  $settingsRuntime.clickedSettings = Wait-ClickAnyDescriptionOrText -SessionId $sessionId -Candidates (Select-NonEmptyUniqueStrings @($smokeText.settings, 'Settings')) -Attempts 6
  if ($settingsRuntime.clickedSettings) {
    Start-Sleep -Milliseconds 900
    $settingsXml = Save-AppiumSource -SessionId $sessionId -Name "settings"
    $settingsRuntime.containsSettingsTitle = Test-ContainsAny -Source $settingsXml -Needles (Select-NonEmptyUniqueStrings @($smokeText.settings, 'Settings'))
    $settingsRuntime.containsPrayerControls = Test-ContainsAny -Source $settingsXml -Needles (Select-NonEmptyUniqueStrings @($smokeText.prayerCalculation, $smokeText.method, $smokeText.madhab, 'Prayer Calculation', 'Calculation Method', 'Asr Juristic Method'))
    $settingsRuntime.containsSettingsDetail = Test-ContainsAny -Source $settingsXml -Needles (Select-NonEmptyUniqueStrings @($smokeText.diagnosticsPrayerSource, $smokeText.audioVoice, $smokeText.location, 'Prayer Authority', 'Audio Voice', 'Location'))
    $settingsRuntime.containsAndroidSettings = $settingsXml.Contains("Settings suggestions") -or $settingsXml.Contains("Android Settings") -or $settingsXml.Contains("Alarms & reminders")
    $settingsRuntime.clickedPrayerMethod = Wait-ClickAnyDescriptionOrText -SessionId $sessionId -Candidates (Select-NonEmptyUniqueStrings @($smokeText.method, 'Calculation Method')) -Attempts 4
    if ($settingsRuntime.clickedPrayerMethod) {
      Start-Sleep -Milliseconds 700
      $methodPickerXml = Save-AppiumSource -SessionId $sessionId -Name "settings-prayer-method-picker"
      $settingsRuntime.containsPrayerMethodOptions = (Test-ContainsAny -Source $methodPickerXml -Needles (Select-NonEmptyUniqueStrings @('Diyanet'))) -and
        (Test-ContainsAny -Source $methodPickerXml -Needles (Select-NonEmptyUniqueStrings @('Egyptian'))) -and
        (Test-ContainsAny -Source $methodPickerXml -Needles (Select-NonEmptyUniqueStrings @('Karachi')))
      $settingsRuntime.containsAndroidSettings = $settingsRuntime.containsAndroidSettings -or $methodPickerXml.Contains("Settings suggestions") -or $methodPickerXml.Contains("Android Settings") -or $methodPickerXml.Contains("Alarms & reminders")
      $settingsRuntime.selectedDefaultPrayerMethod = Wait-ClickAnyDescriptionOrText -SessionId $sessionId -Candidates (Select-NonEmptyUniqueStrings @('Diyanet')) -Attempts 4
      if ($settingsRuntime.selectedDefaultPrayerMethod) {
        for ($attempt = 0; $attempt -lt 8 -and -not $settingsRuntime.prayerMethodPickerClosed; $attempt++) {
          Start-Sleep -Milliseconds 500
          $methodAfterSelectXml = Get-AppiumSource -SessionId $sessionId
          $settingsRuntime.prayerMethodPickerClosed = (-not (Test-ContainsAny -Source $methodAfterSelectXml -Needles (Select-NonEmptyUniqueStrings @('Egyptian', 'Karachi')))) -and
            (Test-ContainsAny -Source $methodAfterSelectXml -Needles (Select-NonEmptyUniqueStrings @($smokeText.settings, 'Settings')))
          $settingsRuntime.containsAndroidSettings = $settingsRuntime.containsAndroidSettings -or $methodAfterSelectXml.Contains("Settings suggestions") -or $methodAfterSelectXml.Contains("Android Settings") -or $methodAfterSelectXml.Contains("Alarms & reminders")
        }
        Save-AppiumSource -SessionId $sessionId -Name "settings-prayer-method-after-select" | Out-Null
      }
    }
    $settingsRuntime.clickedMadhab = Wait-ClickAnyDescriptionOrText -SessionId $sessionId -Candidates (Select-NonEmptyUniqueStrings @($smokeText.madhab, 'Asr Juristic Method')) -Attempts 4
    if ($settingsRuntime.clickedMadhab) {
      Start-Sleep -Milliseconds 700
      $madhabPickerXml = Save-AppiumSource -SessionId $sessionId -Name "settings-madhab-picker"
      $settingsRuntime.containsMadhabOptions = (Test-ContainsAny -Source $madhabPickerXml -Needles (Select-NonEmptyUniqueStrings @('Hanafi'))) -and
        (Test-ContainsAny -Source $madhabPickerXml -Needles (Select-NonEmptyUniqueStrings @("Shafi'i"))) -and
        (Test-ContainsAny -Source $madhabPickerXml -Needles (Select-NonEmptyUniqueStrings @('Maliki')))
      $settingsRuntime.containsAndroidSettings = $settingsRuntime.containsAndroidSettings -or $madhabPickerXml.Contains("Settings suggestions") -or $madhabPickerXml.Contains("Android Settings") -or $madhabPickerXml.Contains("Alarms & reminders")
      $settingsRuntime.selectedDefaultMadhab = Wait-ClickAnyDescriptionOrText -SessionId $sessionId -Candidates (Select-NonEmptyUniqueStrings @('Hanafi')) -Attempts 4
      if ($settingsRuntime.selectedDefaultMadhab) {
        for ($attempt = 0; $attempt -lt 8 -and -not $settingsRuntime.madhabPickerClosed; $attempt++) {
          Start-Sleep -Milliseconds 500
          $madhabAfterSelectXml = Get-AppiumSource -SessionId $sessionId
          $settingsRuntime.madhabPickerClosed = (-not (Test-ContainsAny -Source $madhabAfterSelectXml -Needles (Select-NonEmptyUniqueStrings @("Shafi'i", 'Maliki')))) -and
            (Test-ContainsAny -Source $madhabAfterSelectXml -Needles (Select-NonEmptyUniqueStrings @($smokeText.settings, 'Settings')))
          $settingsRuntime.containsAndroidSettings = $settingsRuntime.containsAndroidSettings -or $madhabAfterSelectXml.Contains("Settings suggestions") -or $madhabAfterSelectXml.Contains("Android Settings") -or $madhabAfterSelectXml.Contains("Alarms & reminders")
        }
        Save-AppiumSource -SessionId $sessionId -Name "settings-madhab-after-select" | Out-Null
      }
    }
    $settingsRuntime.clickedAudioVoice = Wait-ClickAnyDescriptionOrText -SessionId $sessionId -Candidates (Select-NonEmptyUniqueStrings @($smokeText.audioVoice, 'Audio Voice')) -Attempts 4
    if ($settingsRuntime.clickedAudioVoice) {
      Start-Sleep -Milliseconds 700
      $audioVoicePickerXml = Save-AppiumSource -SessionId $sessionId -Name "settings-audio-voice-picker"
      $settingsRuntime.containsAudioVoiceOptions = (Test-ContainsAny -Source $audioVoicePickerXml -Needles (Select-NonEmptyUniqueStrings @('Mishary Rashid Alafasy', 'Mishary Alafasy'))) -and
        (Test-ContainsAny -Source $audioVoicePickerXml -Needles (Select-NonEmptyUniqueStrings @('Mahmoud Khalil Al-Husary', 'Al-Husary'))) -and
        (Test-ContainsAny -Source $audioVoicePickerXml -Needles (Select-NonEmptyUniqueStrings @('Abdul Basit (Murattal)', 'Abdul Basit')))
      $settingsRuntime.containsAndroidSettings = $settingsRuntime.containsAndroidSettings -or $audioVoicePickerXml.Contains("Settings suggestions") -or $audioVoicePickerXml.Contains("Android Settings") -or $audioVoicePickerXml.Contains("Alarms & reminders")
      $settingsRuntime.selectedDefaultAudioVoice = Wait-ClickAnyDescriptionOrText -SessionId $sessionId -Candidates (Select-NonEmptyUniqueStrings @('Mishary Rashid Alafasy', 'Mishary Alafasy')) -Attempts 4
      if ($settingsRuntime.selectedDefaultAudioVoice) {
        for ($attempt = 0; $attempt -lt 8 -and -not $settingsRuntime.audioVoicePickerClosed; $attempt++) {
          Start-Sleep -Milliseconds 500
          $audioVoiceAfterSelectXml = Get-AppiumSource -SessionId $sessionId
          $settingsRuntime.audioVoicePickerClosed = (-not (Test-ContainsAny -Source $audioVoiceAfterSelectXml -Needles (Select-NonEmptyUniqueStrings @('Mahmoud Khalil Al-Husary', 'Abdul Basit (Murattal)')))) -and
            (Test-ContainsAny -Source $audioVoiceAfterSelectXml -Needles (Select-NonEmptyUniqueStrings @($smokeText.settings, 'Settings')))
          $settingsRuntime.containsAndroidSettings = $settingsRuntime.containsAndroidSettings -or $audioVoiceAfterSelectXml.Contains("Settings suggestions") -or $audioVoiceAfterSelectXml.Contains("Android Settings") -or $audioVoiceAfterSelectXml.Contains("Alarms & reminders")
        }
        Save-AppiumSource -SessionId $sessionId -Name "settings-audio-voice-after-select" | Out-Null
      }
    }
    $settingsRuntime.clickedLanguage = Wait-ClickAnyScrollableText -SessionId $sessionId -Candidates (Select-NonEmptyUniqueStrings @($smokeText.language, 'Language')) -Attempts 4
    if ($settingsRuntime.clickedLanguage) {
      Start-Sleep -Milliseconds 700
      $languagePickerXml = Save-AppiumSource -SessionId $sessionId -Name "settings-language-picker"
      $settingsRuntime.containsLanguagePickerTitle = Test-ContainsAny -Source $languagePickerXml -Needles (Select-NonEmptyUniqueStrings @($smokeText.selectLanguage, 'Select Language'))
      $settingsRuntime.containsLanguageOptions = (Test-ContainsAny -Source $languagePickerXml -Needles (Select-NonEmptyUniqueStrings @($smokeText.systemDefault, 'System Default'))) -and
        (Test-ContainsAny -Source $languagePickerXml -Needles (Select-NonEmptyUniqueStrings @('English'))) -and
        (Test-ContainsAny -Source $languagePickerXml -Needles (Select-NonEmptyUniqueStrings @('Turkish')))
      $settingsRuntime.containsAndroidSettings = $settingsRuntime.containsAndroidSettings -or $languagePickerXml.Contains("Settings suggestions") -or $languagePickerXml.Contains("Android Settings") -or $languagePickerXml.Contains("Alarms & reminders")
      $settingsRuntime.selectedSystemDefaultLanguage = Wait-ClickAnyDescriptionOrText -SessionId $sessionId -Candidates (Select-NonEmptyUniqueStrings @($smokeText.systemDefault, 'System Default')) -Attempts 4
      if ($settingsRuntime.selectedSystemDefaultLanguage) {
        for ($attempt = 0; $attempt -lt 8 -and -not $settingsRuntime.languagePickerClosed; $attempt++) {
          Start-Sleep -Milliseconds 500
          $languageAfterSelectXml = Get-AppiumSource -SessionId $sessionId
          $settingsRuntime.languagePickerClosed = (-not (Test-ContainsAny -Source $languageAfterSelectXml -Needles (Select-NonEmptyUniqueStrings @($smokeText.selectLanguage, 'Select Language')))) -and
            (Test-ContainsAny -Source $languageAfterSelectXml -Needles (Select-NonEmptyUniqueStrings @($smokeText.settings, 'Settings')))
          $settingsRuntime.containsAndroidSettings = $settingsRuntime.containsAndroidSettings -or $languageAfterSelectXml.Contains("Settings suggestions") -or $languageAfterSelectXml.Contains("Android Settings") -or $languageAfterSelectXml.Contains("Alarms & reminders")
        }
        Save-AppiumSource -SessionId $sessionId -Name "settings-language-after-select" | Out-Null
      }
    }
    $settingsRuntime.clickedClearCache = Wait-ClickAnyScrollableText -SessionId $sessionId -Candidates (Select-NonEmptyUniqueStrings @($smokeText.clearCache, 'Clear Cache')) -Attempts 4
    if ($settingsRuntime.clickedClearCache) {
      $cacheClearedNeedles = Select-NonEmptyUniqueStrings @($smokeText.cacheClearedSuccess, 'Cache cleared successfully')
      for ($attempt = 0; $attempt -lt 6 -and -not $settingsRuntime.containsCacheClearedMessage; $attempt++) {
        Start-Sleep -Milliseconds 500
        $settingsActionXml = Get-AppiumSource -SessionId $sessionId
        $settingsRuntime.containsCacheClearedMessage = Test-ContainsAny -Source $settingsActionXml -Needles $cacheClearedNeedles
        $settingsRuntime.containsAndroidSettings = $settingsRuntime.containsAndroidSettings -or $settingsActionXml.Contains("Settings suggestions") -or $settingsActionXml.Contains("Android Settings") -or $settingsActionXml.Contains("Alarms & reminders")
      }
      Save-AppiumSource -SessionId $sessionId -Name "settings-clear-cache" | Out-Null
    }
    $settingsRuntime.clickedDiagnostics = Wait-ClickAnyScrollableText -SessionId $sessionId -Candidates (Select-NonEmptyUniqueStrings @($smokeText.diagnostics, 'Diagnostics')) -Attempts 4
    if ($settingsRuntime.clickedDiagnostics) {
      $diagnosticsTitleNeedles = Select-NonEmptyUniqueStrings @($smokeText.diagnostics, 'Diagnostics')
      $diagnosticsRowNeedles = Select-NonEmptyUniqueStrings @(
        $smokeText.version,
        $smokeText.diagnosticsPrayerProfile,
        $smokeText.diagnosticsPrayerSource,
        $smokeText.diagnosticsQuranDataset,
        $smokeText.diagnosticsLocalizationLocales,
        'Version',
        'Prayer Profile',
        'Prayer Authority',
        'Quran Dataset',
        'Localization Locales'
      )
      for ($attempt = 0; $attempt -lt 12 -and -not ($settingsRuntime.containsDiagnosticsTitle -and $settingsRuntime.containsDiagnosticsRows); $attempt++) {
        Start-Sleep -Milliseconds 750
        $diagnosticsXml = Get-AppiumSource -SessionId $sessionId
        $settingsRuntime.containsDiagnosticsTitle = Test-ContainsAny -Source $diagnosticsXml -Needles $diagnosticsTitleNeedles
        $settingsRuntime.containsDiagnosticsRows = Test-ContainsAny -Source $diagnosticsXml -Needles $diagnosticsRowNeedles
        $settingsRuntime.containsAndroidSettings = $settingsRuntime.containsAndroidSettings -or $diagnosticsXml.Contains("Settings suggestions") -or $diagnosticsXml.Contains("Android Settings") -or $diagnosticsXml.Contains("Alarms & reminders")
      }
      Save-AppiumSource -SessionId $sessionId -Name "settings-diagnostics" | Out-Null
      Invoke-AppiumJson -Method "POST" -Path "/session/$sessionId/back" -Body @{} | Out-Null
      Start-Sleep -Milliseconds 800
    }
    Invoke-AppiumJson -Method "POST" -Path "/session/$sessionId/back" -Body @{} | Out-Null
    Start-Sleep -Milliseconds 800
  }
  $summary.settingsRuntime = $settingsRuntime

  $bottomNavTargets = @(
    [ordered]@{ label = 'Quran'; candidates = Select-NonEmptyUniqueStrings @($smokeText.quran, 'Quran') },
    [ordered]@{ label = 'Qibla'; candidates = Select-NonEmptyUniqueStrings @($smokeText.qibla, 'Qibla') },
    [ordered]@{ label = 'Zikr'; candidates = Select-NonEmptyUniqueStrings @($smokeText.zikr, 'Zikr') },
    [ordered]@{ label = 'Calendar'; candidates = Select-NonEmptyUniqueStrings @($smokeText.calendar, 'Calendar') }
  )
  foreach ($target in $bottomNavTargets) {
    $clicked = Click-AnyDescriptionOrText -SessionId $sessionId -Candidates $target.candidates
    $xml = Save-AppiumSource -SessionId $sessionId -Name "nav-$($target.label)"
    $summary.bottomNavResults += [ordered]@{
      label = $target.label
      candidates = $target.candidates
      clicked = $clicked
      containsLabel = Test-ContainsAny -Source $xml -Needles $target.candidates
      containsAndroidSettings = $xml.Contains("Settings suggestions") -or $xml.Contains("Android Settings") -or $xml.Contains("Alarms & reminders")
    }
  }

  $quranPlayback = [ordered]@{
    clickedQuran = $false
    openedSurah = $false
    containsSurahHeader = $false
    clickedPlay = $false
    containsPauseControl = $false
    containsPlaybackError = $false
    logcatPlaybackFailure = $false
    containsAndroidSettings = $false
  }
  $quranPlayback.clickedQuran = Wait-ClickAnyDescriptionOrText -SessionId $sessionId -Candidates (Select-NonEmptyUniqueStrings @($smokeText.quran, 'Quran')) -Attempts 4
  if ($quranPlayback.clickedQuran) {
    Save-AppiumSource -SessionId $sessionId -Name "quran-playback-list" | Out-Null
    $quranPlayback.openedSurah = Wait-ClickAnyDescriptionOrText -SessionId $sessionId -Candidates (Select-NonEmptyUniqueStrings @('Al-Fatihah', 'The Opening', 'الفاتحة')) -Attempts 8
    Start-Sleep -Seconds 2
    $surahXml = Save-AppiumSource -SessionId $sessionId -Name "quran-playback-surah"
    $quranPlayback.containsSurahHeader = Test-ContainsAny -Source $surahXml -Needles (Select-NonEmptyUniqueStrings @('Al-Fatihah', 'The Opening', 'الفاتحة'))
    $quranPlayback.containsAndroidSettings = $surahXml.Contains("Settings suggestions") -or $surahXml.Contains("Android Settings") -or $surahXml.Contains("Alarms & reminders")
    if ($quranPlayback.openedSurah -and $quranPlayback.containsSurahHeader) {
      $quranPlayback.clickedPlay = Wait-ClickAnyDescriptionOrText -SessionId $sessionId -Candidates (Select-NonEmptyUniqueStrings @($smokeText.playSurahAudio, 'Play surah audio')) -Attempts 4
      $afterPlayXml = Save-AppiumSource -SessionId $sessionId -Name "quran-playback-after-play"
      $playbackErrorNeedles = Select-NonEmptyUniqueStrings @($smokeText.quranAudioPlaybackErrorWithConnectionHint, $smokeText.audioPlayFailed, 'Audio playback failed')
      $quranPlayback.containsPlaybackError = Test-ContainsAny -Source $afterPlayXml -Needles $playbackErrorNeedles
      for ($attempt = 0; $attempt -lt 16 -and -not $quranPlayback.containsPauseControl -and -not $quranPlayback.containsPlaybackError; $attempt++) {
        Start-Sleep -Seconds 1
        $currentXml = Get-AppiumSource -SessionId $sessionId
        $quranPlayback.containsPauseControl = Test-ContainsAny -Source $currentXml -Needles (Select-NonEmptyUniqueStrings @($smokeText.pauseSurahAudio, 'Pause surah audio'))
        $quranPlayback.containsPlaybackError = Test-ContainsAny -Source $currentXml -Needles $playbackErrorNeedles
      }
      Save-AppiumSource -SessionId $sessionId -Name "quran-playback-final" | Out-Null
      if ($quranPlayback.containsPauseControl) {
        Click-AnyDescriptionOrText -SessionId $sessionId -Candidates (Select-NonEmptyUniqueStrings @($smokeText.pauseSurahAudio, 'Pause surah audio')) | Out-Null
      }
    }
  }
  $summary.quranPlayback = $quranPlayback
  Invoke-AppiumJson -Method "POST" -Path "/session/$sessionId/back" -Body @{} | Out-Null
  Start-Sleep -Milliseconds 800

  Click-AnyDescriptionOrText -SessionId $sessionId -Candidates (Select-NonEmptyUniqueStrings @($smokeText.home, 'Home')) | Out-Null
  $quickExpectations = @(
    [ordered]@{
      label = 'Places'
      candidates = Select-NonEmptyUniqueStrings @($smokeText.places, 'Places')
      expected = Select-NonEmptyUniqueStrings @($smokeText.places, $smokeText.placesLocationRequiredTitle, $smokeText.nearbyMosques, 'Places', 'Location required', 'Nearby Mosques')
    },
    [ordered]@{
      label = 'Downloads'
      candidates = Select-NonEmptyUniqueStrings @($smokeText.downloads, 'Downloads')
      expected = Select-NonEmptyUniqueStrings @($smokeText.offlineQuranAudioPacks, $smokeText.offlineDownloadManager, 'Offline Quran Audio Packs', 'Offline Download Manager')
    },
    [ordered]@{
      label = 'Analytics'
      candidates = Select-NonEmptyUniqueStrings @($smokeText.analytics, 'Analytics')
      expected = Select-NonEmptyUniqueStrings @($smokeText.analytics, $smokeText.prayerCompletion, $smokeText.streaks, 'Analytics', 'Prayer Completion', 'Streaks')
    },
    [ordered]@{
      label = 'Premium'
      candidates = Select-NonEmptyUniqueStrings @($smokeText.premium, 'Premium')
      expected = Select-NonEmptyUniqueStrings @($smokeText.premium, $smokeText.upgradeToPro, 'Premium', 'Upgrade to Pro', 'subscription')
    }
  )

  foreach ($target in $quickExpectations) {
    $clicked = Click-AnyDescriptionOrText -SessionId $sessionId -Candidates $target.candidates
    $xml = Save-AppiumSource -SessionId $sessionId -Name "quick-$($target.label)"
    $summary.quickAccessResults += [ordered]@{
      label = $target.label
      candidates = $target.candidates
      expected = $target.expected
      clicked = $clicked
      containsExpected = Test-ContainsAny -Source $xml -Needles $target.expected
      containsAndroidSettings = $xml.Contains("Settings suggestions") -or $xml.Contains("Android Settings") -or $xml.Contains("Alarms & reminders")
    }
    if ($target.label -eq 'Downloads' -and $clicked) {
      $downloadRuntime = [ordered]@{
        clickedDownloadControl = $false
        startedDownload = $false
        showedActiveProgress = $false
        clickedCancel = $false
        showedCancellingState = $false
        containsCanceledMessage = $false
        containsAndroidSettings = $false
      }

      $downloadRuntime.clickedDownloadControl = Wait-ClickAnyDescriptionOrText -SessionId $sessionId -Candidates (Select-NonEmptyUniqueStrings @($smokeText.downloadAction, 'Download')) -Attempts 6
      $downloadRuntime.startedDownload = $downloadRuntime.clickedDownloadControl
      if ($downloadRuntime.startedDownload) {
          $activeNeedles = Select-NonEmptyUniqueStrings @(
            $smokeText.cancelDownloadAction,
            $smokeText.downloadPreparing,
            $smokeText.downloading,
            'Cancel download',
            'Preparing download',
            'Downloading surah',
            '0%',
            '1%'
          )
          for ($attempt = 0; $attempt -lt 12 -and -not $downloadRuntime.showedActiveProgress; $attempt++) {
            Start-Sleep -Milliseconds 750
            $downloadXml = Get-AppiumSource -SessionId $sessionId
            $downloadRuntime.showedActiveProgress = Test-ContainsAny -Source $downloadXml -Needles $activeNeedles
            $downloadRuntime.containsAndroidSettings = $downloadRuntime.containsAndroidSettings -or $downloadXml.Contains("Settings suggestions") -or $downloadXml.Contains("Android Settings") -or $downloadXml.Contains("Alarms & reminders")
          }
          Save-AppiumSource -SessionId $sessionId -Name "downloads-active" | Out-Null

          $downloadRuntime.clickedCancel = Wait-ClickAnyDescriptionOrText -SessionId $sessionId -Candidates (Select-NonEmptyUniqueStrings @($smokeText.cancelDownloadAction, 'Cancel download')) -Attempts 8
          if ($downloadRuntime.clickedCancel) {
            Start-Sleep -Milliseconds 600
            $afterCancelXml = Save-AppiumSource -SessionId $sessionId -Name "downloads-after-cancel"
            $downloadRuntime.showedCancellingState = Test-ContainsAny -Source $afterCancelXml -Needles (Select-NonEmptyUniqueStrings @($smokeText.downloadCancelling, 'Cancelling'))
            $downloadRuntime.containsCanceledMessage = Test-ContainsAny -Source $afterCancelXml -Needles (Select-NonEmptyUniqueStrings @($smokeText.downloadCanceledForReciterPrefix, 'Download canceled'))
            $downloadRuntime.containsAndroidSettings = $downloadRuntime.containsAndroidSettings -or $afterCancelXml.Contains("Settings suggestions") -or $afterCancelXml.Contains("Android Settings") -or $afterCancelXml.Contains("Alarms & reminders")
          }
      }
      $summary.downloadRuntime = $downloadRuntime
    }
    Invoke-AppiumJson -Method "POST" -Path "/session/$sessionId/back" -Body @{} | Out-Null
    Start-Sleep -Milliseconds 800
  }
} finally {
  try {
    Invoke-AppiumJson -Method "DELETE" -Path "/session/$sessionId" | Out-Null
  } catch {
    Write-Warning "Appium session cleanup failed for $sessionId"
  }
}

if (-not $SkipLogcat) {
  try {
    $logcat = adb -s $DeviceName logcat -d -v time 2>$null
    Assert-NativeSuccess -Description 'adb logcat read'
    $logcatPath = Join-Path $OutputDir "appium-runtime-smoke-logcat.txt"
    $logcat | Set-Content -Encoding UTF8 -Path $logcatPath
    $logcatText = [string]::Join("`n", $logcat)
    $summary.logcatCaptured = $true
    $summary.logcatCrashFree = -not ($logcatText -match "FATAL EXCEPTION|E/flutter|Unhandled Exception")
    $summary.quranPlayback.logcatPlaybackFailure = $logcatText -match "Audio playback failed for all verified sources"
  } catch {
    $summary.logcatCrashFree = $false
    $summary.logcatError = "adb logcat read failed: $($_.Exception.Message)"
  }
}

$failures = @()
if (-not $summary.firstContainsWelcome) {
  $failures += "First launch did not show onboarding/welcome copy."
}
if ($summary.firstContainsAndroidSettings) {
  $failures += "First launch opened Android Settings instead of the app."
}
if (-not $summary.homeContainsDailyVerse) {
  $failures += "Home did not show Daily Verse after onboarding."
}
if ($summary.homeContainsDailyVerseUnavailable) {
  $failures += "Home showed Daily Verse unavailable instead of verified cloud or cached content."
}
if ($summary.homeContainsNoInternetLegacy) {
  $failures += "Home showed legacy No Internet Connection copy."
}
if (-not $summary.settingsRuntime.clickedSettings) {
  $failures += "Settings runtime smoke could not click the localized settings action."
}
if (-not $summary.settingsRuntime.containsSettingsTitle) {
  $failures += "Settings runtime smoke did not render the settings title after opening."
}
if (-not $summary.settingsRuntime.containsPrayerControls) {
  $failures += "Settings runtime smoke did not render localized prayer calculation controls."
}
if (-not $summary.settingsRuntime.containsSettingsDetail) {
  $failures += "Settings runtime smoke did not render localized settings detail rows."
}
if (-not $summary.settingsRuntime.clickedPrayerMethod) {
  $failures += "Settings runtime smoke could not click the localized prayer method action."
}
if (-not $summary.settingsRuntime.containsPrayerMethodOptions) {
  $failures += "Settings runtime smoke did not render expected prayer method options."
}
if (-not $summary.settingsRuntime.selectedDefaultPrayerMethod) {
  $failures += "Settings runtime smoke could not select the default Diyanet prayer method."
}
if (-not $summary.settingsRuntime.prayerMethodPickerClosed) {
  $failures += "Settings runtime smoke did not close the prayer method picker after selecting Diyanet."
}
if (-not $summary.settingsRuntime.clickedMadhab) {
  $failures += "Settings runtime smoke could not click the localized madhab action."
}
if (-not $summary.settingsRuntime.containsMadhabOptions) {
  $failures += "Settings runtime smoke did not render expected madhab options."
}
if (-not $summary.settingsRuntime.selectedDefaultMadhab) {
  $failures += "Settings runtime smoke could not select the default Hanafi madhab."
}
if (-not $summary.settingsRuntime.madhabPickerClosed) {
  $failures += "Settings runtime smoke did not close the madhab picker after selecting Hanafi."
}
if (-not $summary.settingsRuntime.clickedAudioVoice) {
  $failures += "Settings runtime smoke could not click the localized audio voice action."
}
if (-not $summary.settingsRuntime.containsAudioVoiceOptions) {
  $failures += "Settings runtime smoke did not render expected Quran audio voice options."
}
if (-not $summary.settingsRuntime.selectedDefaultAudioVoice) {
  $failures += "Settings runtime smoke could not select the default Mishary Rashid Alafasy audio voice."
}
if (-not $summary.settingsRuntime.audioVoicePickerClosed) {
  $failures += "Settings runtime smoke did not close the audio voice picker after selecting Mishary Rashid Alafasy."
}
if (-not $summary.settingsRuntime.clickedLanguage) {
  $failures += "Settings runtime smoke could not click the localized language action."
}
if (-not $summary.settingsRuntime.containsLanguagePickerTitle) {
  $failures += "Settings runtime smoke did not render the localized language picker title."
}
if (-not $summary.settingsRuntime.containsLanguageOptions) {
  $failures += "Settings runtime smoke did not render expected language picker options."
}
if (-not $summary.settingsRuntime.selectedSystemDefaultLanguage) {
  $failures += "Settings runtime smoke could not select the localized system default language option."
}
if (-not $summary.settingsRuntime.languagePickerClosed) {
  $failures += "Settings runtime smoke did not close the language picker after selecting system default."
}
if (-not $summary.settingsRuntime.clickedClearCache) {
  $failures += "Settings runtime smoke could not click the localized clear cache action."
}
if (-not $summary.settingsRuntime.containsCacheClearedMessage) {
  $failures += "Settings runtime smoke did not show the localized cache cleared completion message."
}
if (-not $summary.settingsRuntime.clickedDiagnostics) {
  $failures += "Settings runtime smoke could not click the localized diagnostics action."
}
if (-not $summary.settingsRuntime.containsDiagnosticsTitle) {
  $failures += "Settings runtime smoke did not render the diagnostics title after opening."
}
if (-not $summary.settingsRuntime.containsDiagnosticsRows) {
  $failures += "Settings runtime smoke did not render expected diagnostics rows."
}
if ($summary.settingsRuntime.containsAndroidSettings) {
  $failures += "Settings runtime smoke opened Android Settings."
}
foreach ($item in $summary.bottomNavResults) {
  if (-not $item.clicked) {
    $failures += "Bottom nav '$($item.label)' was not clickable."
  }
  if (-not $item.containsLabel) {
    $failures += "Bottom nav '$($item.label)' did not render its expected page."
  }
  if ($item.containsAndroidSettings) {
    $failures += "Bottom nav '$($item.label)' opened Android Settings."
  }
}
if (-not $summary.quranPlayback.clickedQuran) {
  $failures += "Quran playback smoke could not reopen the Quran tab."
}
if (-not $summary.quranPlayback.openedSurah -or -not $summary.quranPlayback.containsSurahHeader) {
  $failures += "Quran playback smoke could not open Al-Fatihah reading page."
}
if (-not $summary.quranPlayback.clickedPlay) {
  $failures += "Quran playback smoke could not click the localized play audio control."
}
if ($summary.quranPlayback.containsPlaybackError) {
  $failures += "Quran playback smoke showed an audio playback error."
}
if ($summary.quranPlayback.logcatPlaybackFailure) {
  $failures += "Logcat contains Quran audio playback failure marker."
}
if (-not $summary.quranPlayback.containsPauseControl) {
  $failures += "Quran playback smoke did not expose the pause control after starting audio."
}
if ($summary.quranPlayback.containsAndroidSettings) {
  $failures += "Quran playback smoke opened Android Settings."
}
if (-not $summary.downloadRuntime.clickedDownloadControl) {
  $failures += "Download runtime smoke could not click the first reciter localized download control."
}
if (-not $summary.downloadRuntime.startedDownload) {
  $failures += "Download runtime smoke could not start the first reciter download action."
}
if (-not $summary.downloadRuntime.showedActiveProgress) {
  $failures += "Download runtime smoke did not show active download progress or cancel affordance."
}
if (-not $summary.downloadRuntime.clickedCancel) {
  $failures += "Download runtime smoke could not click the localized cancel download control."
}
if (-not $summary.downloadRuntime.showedCancellingState -and -not $summary.downloadRuntime.containsCanceledMessage) {
  $failures += "Download runtime smoke did not show the cancelling or canceled state after cancel was requested."
}
if ($summary.downloadRuntime.containsAndroidSettings) {
  $failures += "Download runtime smoke opened Android Settings."
}
foreach ($item in $summary.quickAccessResults) {
  if (-not $item.clicked) {
    $failures += "Quick access '$($item.label)' was not clickable."
  }
  if (-not $item.containsExpected) {
    $failures += "Quick access '$($item.label)' did not render expected content."
  }
  if ($item.containsAndroidSettings) {
    $failures += "Quick access '$($item.label)' opened Android Settings."
  }
}
if ($summary.logcatCaptured -and -not $summary.logcatCrashFree) {
  $failures += "Logcat contains crash markers: FATAL EXCEPTION, E/flutter, or Unhandled Exception."
}
if (-not $SkipLogcat -and -not $summary.logcatCaptured) {
  $failures += "Logcat could not be captured: $($summary.logcatError)"
}

$summary.failures = $failures
$summaryPath = Join-Path $OutputDir "appium-runtime-smoke-summary.json"
$summary | ConvertTo-Json -Depth 12 | Set-Content -Encoding UTF8 -Path $summaryPath
$summary | ConvertTo-Json -Depth 12

if ($failures.Count -gt 0) {
  throw "Appium runtime smoke failed with $($failures.Count) issue(s). See $summaryPath"
}
