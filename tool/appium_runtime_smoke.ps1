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
  [switch]$SkipLogcat
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
    [object]$Body = $null
  )

  $uri = "$AppiumUrl$Path"
  if ($null -eq $Body) {
    return Invoke-RestMethod -Method $Method -Uri $uri -ContentType "application/json" -TimeoutSec 30
  }

  $json = $Body | ConvertTo-Json -Depth 20
  return Invoke-RestMethod -Method $Method -Uri $uri -Body $json -ContentType "application/json" -TimeoutSec 30
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

  $selector = "new UiSelector().descriptionContains(`"$Label`")"
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

function Get-SmokeTextBundle {
  param([Parameter(Mandatory = $true)][string]$LocaleTag)

  $messages = Read-ArbMessages -LocaleTag $LocaleTag
  return [ordered]@{
    locale = $LocaleTag
    next = Get-ArbString -Messages $messages -Key 'next' -Fallback 'Next'
    getStarted = Get-ArbString -Messages $messages -Key 'getStarted' -Fallback 'Get Started'
    onboarding1Title = Get-ArbString -Messages $messages -Key 'onboarding1Title' -Fallback 'Welcome to Sirat-ı Nur'
    home = Get-ArbString -Messages $messages -Key 'home' -Fallback 'Home'
    quran = Get-ArbString -Messages $messages -Key 'quran' -Fallback 'Quran'
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

New-Item -ItemType Directory -Force -Path $OutputDir | Out-Null

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
}

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
  bottomNavResults = @()
  quickAccessResults = @()
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
if ($summary.homeContainsNoInternetLegacy) {
  $failures += "Home showed legacy No Internet Connection copy."
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
