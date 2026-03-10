$ErrorActionPreference = "Stop"

$repoRoot = Split-Path -Parent $PSScriptRoot
$setupScript = Join-Path $PSScriptRoot "setup-jekyll-local.ps1"
$serveScript = Join-Path $PSScriptRoot "serve-jekyll-local.ps1"
$rubyExe = Join-Path $repoRoot ".tools\ruby\bin\ruby.exe"

if (-not (Test-Path $setupScript)) {
  throw "Missing setup script: $setupScript"
}

if (-not (Test-Path $serveScript)) {
  throw "Missing serve script: $serveScript"
}

if (-not (Test-Path $rubyExe)) {
  throw "Missing local Ruby runtime: $rubyExe"
}

Push-Location $repoRoot
try {
  & $rubyExe -v | Out-Null
  & $rubyExe -S bundle --version | Out-Null
  & $rubyExe -S bundle exec jekyll --version | Out-Null
  & $rubyExe -S bundle check | Out-Null
}
finally {
  Pop-Location
}

Write-Host "Local Jekyll preview environment is ready."
