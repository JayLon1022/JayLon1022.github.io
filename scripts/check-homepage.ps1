$ErrorActionPreference = "Stop"

$repoRoot = Split-Path -Parent $PSScriptRoot
$aboutPath = Join-Path $repoRoot "_pages/about.md"
$layoutPath = Join-Path $repoRoot "_layouts/home-landing.html"
$cssEntryPath = Join-Path $repoRoot "assets/css/main.scss"

function Require-Pattern {
  param(
    [string]$Content,
    [string]$Pattern,
    [string]$Message
  )

  if ($Content -notmatch $Pattern) {
    throw $Message
  }
}

if (-not (Test-Path $aboutPath)) {
  throw "Homepage source is missing: $aboutPath"
}

$aboutContent = Get-Content -Path $aboutPath -Raw

Require-Pattern -Content $aboutContent -Pattern "layout:\s*home-landing" -Message "Homepage does not use the home-landing layout."

$requiredSections = @(
  "home-hero",
  "projects-grid",
  "research-panel",
  "updates-timeline",
  "contact-strip"
)

foreach ($section in $requiredSections) {
  Require-Pattern -Content $aboutContent -Pattern $section -Message "Homepage is missing section marker: $section"
}

if (-not (Test-Path $layoutPath)) {
  throw "Homepage layout is missing: $layoutPath"
}

$layoutContent = Get-Content -Path $layoutPath -Raw
Require-Pattern -Content $layoutContent -Pattern 'class="home-landing"' -Message "Homepage layout is missing the home-landing wrapper."

if (-not (Test-Path $cssEntryPath)) {
  throw "Main stylesheet entry is missing: $cssEntryPath"
}

$cssEntryContent = Get-Content -Path $cssEntryPath -Raw
Require-Pattern -Content $cssEntryContent -Pattern 'layout/home-landing' -Message "Main stylesheet does not import the homepage styles."

Write-Host "Homepage source smoke test passed."
