# Sync Audari skills/* → %USERPROFILE%\.cursor\skills\
# Overwrites kit-owned skill folders only. Leaves third-party skills alone.
$ErrorActionPreference = "Stop"
$kitRoot = Resolve-Path (Join-Path $PSScriptRoot "..")
$srcRoot = Join-Path $kitRoot "skills"
$destRoot = Join-Path $env:USERPROFILE ".cursor\skills"

if (-not (Test-Path $srcRoot)) { throw "Missing $srcRoot" }
New-Item -ItemType Directory -Force -Path $destRoot | Out-Null

$copied = @()
Get-ChildItem $srcRoot -Directory | ForEach-Object {
  $dest = Join-Path $destRoot $_.Name
  if (Test-Path $dest) { Remove-Item -Recurse -Force $dest }
  Copy-Item -Recurse $_.FullName $dest
  $copied += $_.Name
}

Write-Host "Synced $($copied.Count) skill(s) → $destRoot"
$copied | ForEach-Object { Write-Host "  - $_" }
Write-Host "Start a new Cursor agent session to reload skills."
