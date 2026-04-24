param(
  [string]$DbUrl = $env:SUPABASE_DB_URL,
  [string]$SummaryOutput = 'build/supabase_content_apply_summary.json',
  [switch]$DryRun
)

$ErrorActionPreference = 'Stop'

$repoRoot = Resolve-Path (Join-Path $PSScriptRoot '..')

. (Join-Path $PSScriptRoot 'import_release_environment.ps1')

$releaseEnvironment = Initialize-ReleaseEnvironment -RepoRoot $repoRoot -VariableNames @(
  'SUPABASE_DB_URL'
)
if ([string]::IsNullOrWhiteSpace($DbUrl)) {
  $DbUrl = [Environment]::GetEnvironmentVariable('SUPABASE_DB_URL')
}

$requiredSqlFiles = @(
  'content_schema.sql',
  'content_seed_quran_surahs.sql',
  'content_seed_quran_ayahs.sql',
  'content_seed_quran_audio_storage.sql',
  'content_seed_duas.sql',
  'content_seed_education.sql',
  'content_seed_asma_ul_husna.sql',
  'seed.sql',
  'content_seed_hadith.sql',
  'content_seed_tafsir.sql'
)

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

function Assert-SafeSqlFile {
  param([Parameter(Mandatory = $true)][string]$Path)

  $sql = Get-Content -LiteralPath $Path -Raw
  foreach ($blockedPattern in @(
      '(?im)^\s*drop\s+table\b',
      '(?im)^\s*truncate\b',
      '(?im)^\s*delete\s+from\b'
    )) {
    if ($sql -match $blockedPattern) {
      throw "Unsafe destructive SQL statement detected in $Path"
    }
  }
}

function Expand-GzipFile {
  param(
    [Parameter(Mandatory = $true)][string]$SourcePath,
    [Parameter(Mandatory = $true)][string]$DestinationPath
  )

  $destinationParent = Split-Path -Parent $DestinationPath
  if (-not (Test-Path -LiteralPath $destinationParent)) {
    New-Item -ItemType Directory -Path $destinationParent -Force | Out-Null
  }

  $sourceStream = [System.IO.File]::OpenRead($SourcePath)
  try {
    $gzipStream = [System.IO.Compression.GzipStream]::new(
      $sourceStream,
      [System.IO.Compression.CompressionMode]::Decompress
    )
    try {
      $destinationStream = [System.IO.File]::Create($DestinationPath)
      try {
        $gzipStream.CopyTo($destinationStream)
      } finally {
        $destinationStream.Dispose()
      }
    } finally {
      $gzipStream.Dispose()
    }
  } finally {
    $sourceStream.Dispose()
  }
}

function Resolve-RequiredSqlFile {
  param([Parameter(Mandatory = $true)][string]$RelativePath)

  $plainPath = Join-Path $repoRoot $RelativePath
  if (Test-Path -LiteralPath $plainPath) {
    return $plainPath
  }

  $gzipPath = "$plainPath.gz"
  if (-not (Test-Path -LiteralPath $gzipPath)) {
    throw "Required Supabase SQL file is missing: $RelativePath"
  }

  $expandedPath = Join-Path (Join-Path $repoRoot 'build/supabase_expanded_sql') $RelativePath
  Expand-GzipFile -SourcePath $gzipPath -DestinationPath $expandedPath
  return $expandedPath
}

function Ensure-NodePgRunner {
  Require-Command -Name 'node' -InstallHint 'Install Node.js so SQL files can be applied through the pg runner.'
  Require-Command -Name 'npm' -InstallHint 'Install npm so the pg runner dependency can be prepared under build/.'

  $runnerRoot = Join-Path $repoRoot 'build/supabase_pg_runner'
  $nodeModules = Join-Path $runnerRoot 'node_modules'
  $pgPackage = Join-Path $nodeModules 'pg/package.json'
  if (-not (Test-Path -LiteralPath $pgPackage)) {
    if (-not (Test-Path -LiteralPath $runnerRoot)) {
      New-Item -ItemType Directory -Path $runnerRoot -Force | Out-Null
    }
    npm install --prefix "$runnerRoot" pg@8.13.3 --no-save --no-audit --fund=false | Out-Null
    if ($LASTEXITCODE -ne 0) {
      throw "Failed to prepare Node pg runner under $runnerRoot (exit code $LASTEXITCODE)."
    }
  }

  return $nodeModules
}

function Invoke-SupabaseSqlFile {
  param(
    [Parameter(Mandatory = $true)][string]$DbUrl,
    [Parameter(Mandatory = $true)][string]$SqlFile,
    [Parameter(Mandatory = $true)][string]$RelativePath
  )

  $nodeModules = Ensure-NodePgRunner
  $runnerScript = Join-Path $repoRoot 'tool/apply_supabase_sql_file.cjs'
  $previousNodePath = [Environment]::GetEnvironmentVariable('NODE_PATH', 'Process')
  try {
    [Environment]::SetEnvironmentVariable('NODE_PATH', $nodeModules, 'Process')
    node "$runnerScript" "$DbUrl" "$SqlFile" | Out-Null
    if ($LASTEXITCODE -ne 0) {
      throw "Supabase SQL apply failed for $RelativePath (exit code $LASTEXITCODE)."
    }
  } finally {
    [Environment]::SetEnvironmentVariable('NODE_PATH', $previousNodePath, 'Process')
  }
}

Push-Location $repoRoot
try {
  if ($releaseEnvironment.LoadedFiles.Count -gt 0) {
    Write-Host "Loaded release environment file(s): $($releaseEnvironment.LoadedFiles -join ', ')"
  }

  $plannedFiles = New-Object System.Collections.Generic.List[string]
  $resolvedSqlFiles = @{}
  foreach ($relativePath in $requiredSqlFiles) {
    $fullPath = Resolve-RequiredSqlFile -RelativePath $relativePath
    Assert-SafeSqlFile -Path $fullPath
    $resolvedSqlFiles[$relativePath] = $fullPath
    $plannedFiles.Add($relativePath) | Out-Null
  }

  if ($DryRun) {
    $summary = [ordered]@{
      generated_at = (Get-Date).ToUniversalTime().ToString('o')
      dry_run = $true
      files_planned = @($plannedFiles)
      files_applied = @()
      missing_optional_files = @()
    }
    Write-JsonFile -Value $summary -Path $SummaryOutput
    Write-Host "Dry-run complete: planned=$($plannedFiles.Count), summary=$SummaryOutput"
    return
  }

  if ([string]::IsNullOrWhiteSpace($DbUrl)) {
    throw 'SUPABASE_DB_URL env or -DbUrl is required for real Supabase content apply.'
  }

  $appliedFiles = New-Object System.Collections.Generic.List[string]
  foreach ($relativePath in $plannedFiles) {
    $fullPath = $resolvedSqlFiles[$relativePath]
    Invoke-SupabaseSqlFile -DbUrl $DbUrl -SqlFile $fullPath -RelativePath $relativePath
    $appliedFiles.Add($relativePath) | Out-Null
  }

  $summary = [ordered]@{
    generated_at = (Get-Date).ToUniversalTime().ToString('o')
    dry_run = $false
    files_planned = @($plannedFiles)
    files_applied = @($appliedFiles)
    missing_optional_files = @()
  }
  Write-JsonFile -Value $summary -Path $SummaryOutput
  Write-Host "Supabase content apply complete: applied=$($appliedFiles.Count), summary=$SummaryOutput"
} finally {
  Pop-Location
}
