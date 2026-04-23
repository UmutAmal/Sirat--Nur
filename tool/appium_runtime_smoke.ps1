param(
  [string]$AppiumUrl = "http://127.0.0.1:4723",
  [string]$DeviceName = "emulator-5554",
  [string]$Package = "com.umutamal.sirat_i_nur",
  [string]$Activity = ".MainActivity",
  [string]$OutputDir = "build",
  [switch]$NoReset,
  [switch]$SkipLogcat
)

$ErrorActionPreference = "Stop"

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

New-Item -ItemType Directory -Force -Path $OutputDir | Out-Null

if (-not $SkipLogcat) {
  Require-Command -Name 'adb' -InstallHint 'Install Android platform-tools and ensure adb is on PATH, or pass -SkipLogcat explicitly.'
  adb -s $DeviceName logcat -c | Out-Null
  Assert-NativeSuccess -Description 'adb logcat clear'
}

$status = Get-AppiumValue (Invoke-AppiumJson -Method "GET" -Path "/status")
if (-not $status.ready) {
  throw "Appium server is not ready at $AppiumUrl"
}

$created = Invoke-AppiumJson -Method "POST" -Path "/session" -Body @{
  capabilities = @{
    alwaysMatch = @{
      platformName = "Android"
      "appium:automationName" = "UiAutomator2"
      "appium:deviceName" = $DeviceName
      "appium:appPackage" = $Package
      "appium:appActivity" = $Activity
      "appium:noReset" = [bool]$NoReset
      "appium:newCommandTimeout" = 120
      "appium:autoGrantPermissions" = $true
    }
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
  $summary.firstContainsWelcome = $firstXml.Contains("Welcome to Sirat") -or $firstXml.Contains("Sirat-")
  $summary.firstContainsAndroidSettings = $firstXml.Contains("Settings suggestions") -or $firstXml.Contains("Android Settings") -or $firstXml.Contains("Alarms & reminders")

  foreach ($label in @("Next", "Next", "Start", "Get Started")) {
    $clicked = (Click-DescriptionContains -SessionId $sessionId -Label $label) -or (Click-TextContains -SessionId $sessionId -Label $label)
    $summary.onboarding += [ordered]@{
      label = $label
      clicked = $clicked
    }
    if ($label -in @("Start", "Get Started") -and $clicked) {
      break
    }
  }

  $homeXml = Save-AppiumSource -SessionId $sessionId -Name "home"
  $summary.homeContainsDailyVerse = $homeXml.Contains("Daily Verse")
  $summary.homeContainsDailyVerseUnavailable = $homeXml.Contains("Daily verse unavailable")
  $summary.homeContainsNoInternetLegacy = $homeXml.Contains("No Internet Connection")

  $bottomNavLabels = @("Quran", "Qibla", "Zikr", "Calendar")
  foreach ($label in $bottomNavLabels) {
    $clicked = Click-DescriptionContains -SessionId $sessionId -Label $label
    $xml = Save-AppiumSource -SessionId $sessionId -Name "nav-$label"
    $summary.bottomNavResults += [ordered]@{
      label = $label
      clicked = $clicked
      containsLabel = $xml.Contains($label)
      containsAndroidSettings = $xml.Contains("Settings suggestions") -or $xml.Contains("Android Settings") -or $xml.Contains("Alarms & reminders")
    }
  }

  Click-DescriptionContains -SessionId $sessionId -Label "Home" | Out-Null
  $quickExpectations = [ordered]@{
    Places = @("Places", "Location required", "Nearby Mosques")
    Downloads = @("Offline Quran Audio Packs", "Offline Download Manager", "surahs downloaded")
    Analytics = @("Analytics", "Prayer Completion", "Streaks")
    Premium = @("Premium", "Unlimited", "subscription")
  }

  foreach ($label in $quickExpectations.Keys) {
    $clicked = Click-DescriptionContains -SessionId $sessionId -Label $label
    $xml = Save-AppiumSource -SessionId $sessionId -Name "quick-$label"
    $summary.quickAccessResults += [ordered]@{
      label = $label
      clicked = $clicked
      containsExpected = Test-ContainsAny -Source $xml -Needles $quickExpectations[$label]
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
