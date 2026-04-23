function Import-ReleaseEnvironmentFiles {
  param(
    [Parameter(Mandatory = $true)][string]$RepoRoot
  )

  $candidateFiles = @(
    '.env.store',
    '.env.release',
    '.env.local',
    '.env'
  )
  $loadedFiles = New-Object System.Collections.Generic.List[string]
  $values = @{}

  foreach ($candidate in $candidateFiles) {
    $fullPath = Join-Path $RepoRoot $candidate
    if (-not (Test-Path -LiteralPath $fullPath -PathType Leaf)) {
      continue
    }

    $loadedFiles.Add($candidate) | Out-Null
    foreach ($line in (Get-Content -LiteralPath $fullPath)) {
      $trimmedLine = $line.Trim()
      if ([string]::IsNullOrWhiteSpace($trimmedLine) -or $trimmedLine.StartsWith('#')) {
        continue
      }

      if ($trimmedLine.StartsWith('export ')) {
        $trimmedLine = $trimmedLine.Substring(7).Trim()
      }

      $parts = $trimmedLine.Split('=', 2)
      if ($parts.Count -ne 2) {
        continue
      }

      $name = $parts[0].Trim()
      if ([string]::IsNullOrWhiteSpace($name) -or $values.ContainsKey($name)) {
        continue
      }

      $value = $parts[1].Trim()
      if (
        $value.Length -ge 2 -and
        (
          ($value.StartsWith('"') -and $value.EndsWith('"')) -or
          ($value.StartsWith("'") -and $value.EndsWith("'"))
        )
      ) {
        $value = $value.Substring(1, $value.Length - 2)
      }

      $values[$name] = $value
    }
  }

  return [pscustomobject]@{
    LoadedFiles = @($loadedFiles)
    Values = $values
  }
}

function Get-ReleaseEnvironmentValue {
  param(
    [Parameter(Mandatory = $true)][string]$Name,
    [Parameter(Mandatory = $true)]$ImportedValues
  )

  $processValue = [Environment]::GetEnvironmentVariable($Name, 'Process')
  if (-not [string]::IsNullOrWhiteSpace($processValue)) {
    return $processValue
  }

  if ($ImportedValues.Values.ContainsKey($Name)) {
    return [string]$ImportedValues.Values[$Name]
  }

  $userValue = [Environment]::GetEnvironmentVariable($Name, 'User')
  if (-not [string]::IsNullOrWhiteSpace($userValue)) {
    return $userValue
  }

  $machineValue = [Environment]::GetEnvironmentVariable($Name, 'Machine')
  if (-not [string]::IsNullOrWhiteSpace($machineValue)) {
    return $machineValue
  }

  return $null
}

function Initialize-ReleaseEnvironment {
  param(
    [Parameter(Mandatory = $true)][string]$RepoRoot,
    [Parameter(Mandatory = $true)][string[]]$VariableNames
  )

  $importedValues = Import-ReleaseEnvironmentFiles -RepoRoot $RepoRoot
  $resolvedValues = @{}

  foreach ($name in $VariableNames) {
    $value = Get-ReleaseEnvironmentValue -Name $name -ImportedValues $importedValues
    if ([string]::IsNullOrWhiteSpace($value)) {
      continue
    }

    [Environment]::SetEnvironmentVariable($name, $value, 'Process')
    $resolvedValues[$name] = $value
  }

  return [pscustomobject]@{
    LoadedFiles = $importedValues.LoadedFiles
    Values = $resolvedValues
  }
}
