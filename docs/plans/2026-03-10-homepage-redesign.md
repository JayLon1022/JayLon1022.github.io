# Homepage Redesign Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Goal:** Replace the current sidebar-driven homepage with a polished, Apple-inspired technical landing page that foregrounds featured projects, research, and contact actions while keeping the rest of the Jekyll site unchanged.

**Architecture:** Introduce a dedicated homepage layout that bypasses the default sidebar and gives the landing page full-width control. Keep homepage content in `_pages/about.md`, isolate styling in a new SCSS partial, and add a small smoke check that validates the generated homepage contains the expected section markers after build.

**Tech Stack:** Jekyll, Liquid templates, Markdown with embedded HTML, SCSS, PowerShell smoke test, `bundle exec jekyll build`

---

### Task 1: Add a homepage smoke check

**Files:**
- Create: `scripts/check-homepage.ps1`

**Step 1: Write the failing test**

Create a smoke check script that fails if the built homepage is missing the expected section markers.

```powershell
$html = Get-Content -Path "_site/index.html" -Raw
$required = @("home-hero", "projects-grid", "research-panel", "updates-timeline", "contact-strip")
foreach ($marker in $required) {
  if ($html -notmatch $marker) {
    throw "Missing homepage marker: $marker"
  }
}
```

**Step 2: Run test to verify it fails**

Run:

```bash
powershell -ExecutionPolicy Bypass -File scripts/check-homepage.ps1
```

Expected:
FAIL because `_site/index.html` does not yet contain the new homepage structure.

**Step 3: Write minimal implementation**

Add the script exactly as above with a small preflight guard for a missing build artifact.

**Step 4: Run test to verify it still fails for the right reason**

Run:

```bash
powershell -ExecutionPolicy Bypass -File scripts/check-homepage.ps1
```

Expected:
FAIL with either missing `_site/index.html` or a missing marker message.

**Step 5: Commit**

```bash
git add scripts/check-homepage.ps1
git commit -m "test: add homepage smoke check"
```

### Task 2: Create a dedicated homepage layout

**Files:**
- Create: `_layouts/home-landing.html`
- Modify: `_pages/about.md`

**Step 1: Write the failing test**

Define the target homepage wrapper classes in the smoke-check expectation and confirm the current homepage cannot satisfy them.

**Step 2: Run test to verify it fails**

Run:

```bash
bundle exec jekyll build
powershell -ExecutionPolicy Bypass -File scripts/check-homepage.ps1
```

Expected:
Build succeeds, smoke check fails because the new homepage markers are absent.

**Step 3: Write minimal implementation**

Create a homepage-specific layout that keeps the global masthead and footer but removes the default sidebar.

```liquid
---
layout: default
---

{% include base_path %}

<main id="main" class="home-landing" role="main">
  <article class="home-landing__page">
    {{ content }}
  </article>
</main>
```

Switch `_pages/about.md` to use:

```yaml
layout: home-landing
author_profile: false
classes: wide
```

**Step 4: Run test to verify it still fails only on missing content markers**

Run:

```bash
bundle exec jekyll build
powershell -ExecutionPolicy Bypass -File scripts/check-homepage.ps1
```

Expected:
Build succeeds, smoke check still fails because the page content has not yet been restructured.

**Step 5: Commit**

```bash
git add _layouts/home-landing.html _pages/about.md
git commit -m "feat: add dedicated homepage layout"
```

### Task 3: Rebuild homepage content into landing-page sections

**Files:**
- Modify: `_pages/about.md`

**Step 1: Write the failing test**

List the exact section wrappers the page must expose:

- `home-hero`
- `projects-grid`
- `research-panel`
- `updates-timeline`
- `contact-strip`

**Step 2: Run test to verify it fails**

Run:

```bash
bundle exec jekyll build
powershell -ExecutionPolicy Bypass -File scripts/check-homepage.ps1
```

Expected:
FAIL on the first missing section wrapper.

**Step 3: Write minimal implementation**

Rewrite `_pages/about.md` as structured HTML sections with editable content blocks.

```html
<section class="home-hero">
  <div class="home-hero__content">...</div>
  <div class="home-hero__visual">...</div>
</section>

<section class="projects-grid">
  <article class="project-card">...</article>
</section>

<section class="research-panel">...</section>
<section class="updates-timeline">...</section>
<section class="contact-strip">...</section>
```

Keep all user-editable copy inside this single file so future content refreshes stay simple.

**Step 4: Run test to verify it passes**

Run:

```bash
bundle exec jekyll build
powershell -ExecutionPolicy Bypass -File scripts/check-homepage.ps1
```

Expected:
PASS because the new structural markers are present in `_site/index.html`.

**Step 5: Commit**

```bash
git add _pages/about.md
git commit -m "feat: restructure homepage content"
```

### Task 4: Add homepage-specific visual styling

**Files:**
- Create: `_sass/layout/_home-landing.scss`
- Modify: `assets/css/main.scss`
- Modify: `_includes/head/custom.html`

**Step 1: Write the failing test**

Create a visual acceptance checklist before styling:

- Hero feels full-width and premium
- Project cards render in a responsive grid
- Buttons and pills have distinct states
- Mobile layout stacks cleanly
- Typography is no longer dominated by the default theme

**Step 2: Run test to verify the current page fails the checklist**

Run:

```bash
bundle exec jekyll build
```

Expected:
Build succeeds, but the rendered homepage still looks like the default theme with unstyled sections.

**Step 3: Write minimal implementation**

Add a new partial import in `assets/css/main.scss`:

```scss
@import
    "layout/page",
    "layout/archive",
    "layout/sidebar",
    "layout/home-landing",
```

Add a dedicated homepage stylesheet with:

- CSS custom properties for color and spacing
- Refined font pairing
- Hero layout and layered panels
- Project card grid and hover transitions
- Research, updates, and contact-strip styling
- Mobile-first responsive rules

Load any external font links in `_includes/head/custom.html` if required.

**Step 4: Run test to verify the page builds with the new styles**

Run:

```bash
bundle exec jekyll build
```

Expected:
PASS with no SCSS or Liquid errors.

**Step 5: Commit**

```bash
git add assets/css/main.scss _sass/layout/_home-landing.scss _includes/head/custom.html
git commit -m "feat: style homepage landing page"
```

### Task 5: Perform final verification and refinement

**Files:**
- Review only unless small fixes are required

**Step 1: Write the failing test**

Define the final verification checklist:

- `bundle exec jekyll build` succeeds
- `scripts/check-homepage.ps1` passes
- Homepage has no sidebar
- Hero, cards, and CTA render correctly at desktop and mobile widths
- Buttons link to valid internal routes or placeholder external URLs the user can update

**Step 2: Run test to verify any remaining issues**

Run:

```bash
bundle exec jekyll build
powershell -ExecutionPolicy Bypass -File scripts/check-homepage.ps1
```

Expected:
Any remaining failures are visual or link-level details only.

**Step 3: Write minimal implementation**

Apply only the smallest polish or bug fixes needed to satisfy the checklist. Avoid expanding scope into a full-site redesign.

**Step 4: Run test to verify it passes**

Run:

```bash
bundle exec jekyll build
powershell -ExecutionPolicy Bypass -File scripts/check-homepage.ps1
```

Expected:
PASS.

**Step 5: Commit**

```bash
git add _layouts/home-landing.html _pages/about.md _sass/layout/_home-landing.scss assets/css/main.scss _includes/head/custom.html scripts/check-homepage.ps1
git commit -m "feat: launch redesigned homepage"
```

## Notes for Execution

- Keep the homepage visually distinct, but do not redesign archive pages in this pass.
- Favor premium restraint over decorative excess.
- Reference Apple for spacing discipline, surface treatment, and CTA clarity, not for cloning their exact layout language.
- Keep homepage copy modular so the site owner can edit text later without touching layout code.
