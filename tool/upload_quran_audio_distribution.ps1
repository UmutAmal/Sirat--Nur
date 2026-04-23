param(
  [string]$Manifest = 'build/verified_quran_audio/manifest.json',
  [string]$PlanOutput = 'build/quran_audio_distribution_upload_plan.json',
  [string]$SummaryOutput = 'build/quran_audio_distribution_upload_summary.json',
  [string]$CloudflareBucket = $env:QURAN_AUDIO_CLOUDFLARE_BUCKET,
  [string]$GithubRepo = 'UmutAmal/Sirat--Nur',
  [string]$GithubReleaseTag = 'quran-audio-v1',
  [switch]$CreateGithubRelease,
  [switch]$DryRun
)

$ErrorActionPreference = 'Stop'

$repoRoot = Resolve-Path (Join-Path $PSScriptRoot '..')
$githubAssetStageDir = Join-Path $repoRoot 'build/github_quran_audio_release_assets'

. (Join-Path $PSScriptRoot 'import_release_environment.ps1')

$releaseEnvironment = Initialize-ReleaseEnvironment -RepoRoot $repoRoot -VariableNames @(
  'QURAN_AUDIO_CLOUDFLARE_BUCKET'
)
if ([string]::IsNullOrWhiteSpace($CloudflareBucket)) {
  $CloudflareBucket = [Environment]::GetEnvironmentVariable('QURAN_AUDIO_CLOUDFLARE_BUCKET')
}

function Require-Command {
  param(
    [Parameter(Mandatory = $true)][string]$Name,
    [Parameter(Mandatory = $true)][string]$InstallHint
  )

  if (-not (Get-Command $Name -ErrorAction SilentlyContinue)) {
    throw "$Name is required. $InstallHint"
  }
}

function Write-JsonFile {
  param(
    [Parameter(Mandatory = $true)]$Value,
    [Parameter(Mandatory = $true)][string]$Path
  )

  $fullPath = if ([System.IO.Path]::IsPathRooted($Path)) {
    $Path
  } else {
    Join-Path $repoRoot $Path
  }
  $parent = Split-Path -Parent $fullPath
  if (-not (Test-Path -LiteralPath $parent)) {
    New-Item -ItemType Directory -Path $parent -Force | Out-Null
  }
  $Value | ConvertTo-Json -Depth 8 | Set-Content -LiteralPath $fullPath -Encoding UTF8
}

function Assert-NativeSuccess {
  param(
    [Parameter(Mandatory = $true)][string]$Description
  )

  if ($LASTEXITCODE -ne 0) {
    throw "$Description failed (exit code $LASTEXITCODE)."
  }
}

function New-HardLinkedGithubAsset {
  param(
    [Parameter(Mandatory = $true)][string]$SourcePath,
    [Parameter(Mandatory = $true)][string]$AssetName
  )

  if (-not (Test-Path -LiteralPath $githubAssetStageDir)) {
    New-Item -ItemType Directory -Path $githubAssetStageDir -Force | Out-Null
  }

  $assetPath = Join-Path $githubAssetStageDir $AssetName
  if (Test-Path -LiteralPath $assetPath) {
    Remove-Item -LiteralPath $assetPath -Force
  }

  try {
    New-Item -ItemType HardLink -Path $assetPath -Target $SourcePath | Out-Null
  } catch {
    Copy-Item -LiteralPath $SourcePath -Destination $assetPath
  }

  return $assetPath
}

Push-Location $repoRoot
try {
  Require-Command -Name 'dart' -InstallHint 'Install Flutter/Dart and ensure dart is on PATH.'
  Require-Command -Name 'npx' -InstallHint 'Install Node.js so npx can run wrangler.'
  Require-Command -Name 'gh' -InstallHint 'Install GitHub CLI and authenticate with gh auth login.'
  if ($releaseEnvironment.LoadedFiles.Count -gt 0) {
    Write-Host "Loaded release environment file(s): $($releaseEnvironment.LoadedFiles -join ', ')"
  }

  $manifestPath = if ([System.IO.Path]::IsPathRooted($Manifest)) {
    $Manifest
  } else {
    Join-Path $repoRoot $Manifest
  }
  if (-not (Test-Path -LiteralPath $manifestPath)) {
    throw "Mirror manifest is missing: $manifestPath"
  }

  dart run tool/quran_audio_distribution_plan.dart --manifest="$manifestPath" --output="$PlanOutput"
  Assert-NativeSuccess -Description 'Quran audio distribution plan generation'
  $planPath = if ([System.IO.Path]::IsPathRooted($PlanOutput)) {
    $PlanOutput
  } else {
    Join-Path $repoRoot $PlanOutput
  }
  $plan = Get-Content -LiteralPath $planPath -Raw | ConvertFrom-Json
  if ($plan.validation_failures.Count -gt 0) {
    throw "Distribution plan has validation failures; see $planPath"
  }

  if ($DryRun) {
    $summary = [ordered]@{
      generated_at = (Get-Date).ToUniversalTime().ToString('o')
      dry_run = $true
      plan = $PlanOutput
      cloudflare = [ordered]@{
        bucket = $CloudflareBucket
        files = [int]$plan.cloudflare.files
        uploaded = 0
        bytes = [Int64]$plan.cloudflare.bytes
      }
      github = [ordered]@{
        repo = $GithubRepo
        release_tag = $GithubReleaseTag
        files = [int]$plan.github.files
        uploaded = 0
        bytes = [Int64]$plan.github.bytes
      }
    }
    Write-JsonFile -Value $summary -Path $SummaryOutput
    Write-Host "Dry-run complete: cloudflare=$($plan.cloudflare.files), github=$($plan.github.files), summary=$SummaryOutput"
    return
  }

  if ([string]::IsNullOrWhiteSpace($CloudflareBucket)) {
    throw 'QURAN_AUDIO_CLOUDFLARE_BUCKET env or -CloudflareBucket is required for real upload.'
  }

  gh auth status -h github.com | Out-Null
  Assert-NativeSuccess -Description 'GitHub CLI authentication check'
  npx --yes wrangler@latest whoami | Out-Null
  Assert-NativeSuccess -Description 'Cloudflare Wrangler authentication check'

  $releaseExists = $true
  try {
    gh release view $GithubReleaseTag --repo $GithubRepo | Out-Null
    if ($LASTEXITCODE -ne 0) {
      $releaseExists = $false
    }
  } catch {
    $releaseExists = $false
  }
  if (-not $releaseExists) {
    if (-not $CreateGithubRelease) {
      throw "GitHub release $GithubReleaseTag does not exist. Re-run with -CreateGithubRelease or create it manually."
    }
    gh release create $GithubReleaseTag --repo $GithubRepo --title $GithubReleaseTag --notes 'Verified Quran audio overflow assets for Sirat-i Nur.'
    Assert-NativeSuccess -Description 'GitHub release create'
  }

  $cloudflareUploaded = 0
  foreach ($object in $plan.cloudflare.objects) {
    $sourcePath = if ([System.IO.Path]::IsPathRooted($object.local_path)) {
      $object.local_path
    } else {
      Join-Path $repoRoot $object.local_path
    }
    npx --yes wrangler@latest r2 object put "$CloudflareBucket/$($object.object_path)" --file "$sourcePath" --content-type 'audio/mpeg' --cache-control 'public, max-age=31536000, immutable' --remote --force
    Assert-NativeSuccess -Description "Cloudflare Quran audio upload $($object.object_path)"
    $cloudflareUploaded += 1
  }

  $githubUploaded = 0
  foreach ($object in $plan.github.objects) {
    $sourcePath = if ([System.IO.Path]::IsPathRooted($object.local_path)) {
      $object.local_path
    } else {
      Join-Path $repoRoot $object.local_path
    }
    $assetPath = New-HardLinkedGithubAsset -SourcePath $sourcePath -AssetName $object.asset_name
    gh release upload $GithubReleaseTag "$assetPath" --repo $GithubRepo --clobber
    Assert-NativeSuccess -Description "GitHub Quran audio upload $($object.asset_name)"
    $githubUploaded += 1
  }

  $summary = [ordered]@{
    generated_at = (Get-Date).ToUniversalTime().ToString('o')
    dry_run = $false
    plan = $PlanOutput
    cloudflare = [ordered]@{
      bucket = $CloudflareBucket
      files = [int]$plan.cloudflare.files
      uploaded = $cloudflareUploaded
      bytes = [Int64]$plan.cloudflare.bytes
    }
    github = [ordered]@{
      repo = $GithubRepo
      release_tag = $GithubReleaseTag
      files = [int]$plan.github.files
      uploaded = $githubUploaded
      bytes = [Int64]$plan.github.bytes
    }
  }
  Write-JsonFile -Value $summary -Path $SummaryOutput
  Write-Host "Upload complete: cloudflare=$cloudflareUploaded/$($plan.cloudflare.files), github=$githubUploaded/$($plan.github.files), summary=$SummaryOutput"
} finally {
  Pop-Location
}
