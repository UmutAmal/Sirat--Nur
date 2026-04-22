param(
  [string]$DbUrl = $env:SUPABASE_DB_URL,
  [string]$SummaryOutput = 'build/supabase_content_apply_summary.json',
  [switch]$DryRun
)

$ErrorActionPreference = 'Stop'

$repoRoot = Resolve-Path (Join-Path $PSScriptRoot '..')

$requiredSqlFiles = @(
  'content_schema.sql',
  'content_seed_quran_surahs.sql',
  'content_seed_quran_ayahs.sql',
  'content_seed_quran_audio_storage.sql',
  'content_seed_duas.sql',
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

Push-Location $repoRoot
try {
  Require-Command -Name 'npx' -InstallHint 'Install Node.js so npx can run the Supabase CLI.'

  $plannedFiles = New-Object System.Collections.Generic.List[string]
  foreach ($relativePath in $requiredSqlFiles) {
    $fullPath = Join-Path $repoRoot $relativePath
    if (-not (Test-Path -LiteralPath $fullPath)) {
      throw "Required Supabase SQL file is missing: $relativePath"
    }
    Assert-SafeSqlFile -Path $fullPath
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
    $fullPath = Join-Path $repoRoot $relativePath
    npx --yes supabase db query --db-url "$DbUrl" --file "$fullPath" --output json --agent=no | Out-Null
    if ($LASTEXITCODE -ne 0) {
      throw "Supabase SQL apply failed for $relativePath (exit code $LASTEXITCODE)."
    }
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
