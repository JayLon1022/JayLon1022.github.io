# Homepage Redesign Design

**Date:** 2026-03-10

**Scope:** Redesign the homepage at `/` for a more polished, project-forward personal brand while keeping the rest of the Jekyll site intact.

## Goal

Turn the current academic-template homepage into a refined technical portfolio landing page that still supports research credibility. The homepage should feel current, calm, and premium, with an Apple-inspired sense of restraint, spacing, and surface quality rather than a flashy startup aesthetic.

## Audience Priority

1. Potential advisors and graduate admissions readers
2. Technical hiring teams
3. Research collaborators and peers

## Approved Direction

Use a project-led homepage rather than a biography-led homepage. The first impression should be that the site belongs to someone who builds serious technical work, publishes research, and maintains an active profile.

The visual direction is:

- Minimal and product-like rather than blog-like
- Light theme with soft depth, not stark white
- Clean, precise, premium, and calm
- Apple-inspired in restraint and layout discipline, but not a literal imitation

## Memorable Design Idea

The homepage should be remembered for one thing: a polished product-launch style hero that introduces the person through work, with large project cards and compact metrics that make the page feel like a technical release page rather than a markdown profile.

## Information Architecture

The homepage will use a single long-form landing page with five sections.

### 1. Hero

Purpose:
Establish identity, value, and action in the first screen.

Content:

- Name
- One-sentence role statement
- Two to three short supporting lines
- Primary action buttons: CV, GitHub, Email, Publications
- Compact stat or tag rail such as papers, projects, research themes, open source
- Portrait integrated into the hero rather than isolated in the default sidebar

Layout:

- Asymmetric split layout
- Left column for copy and CTAs
- Right column for portrait, stat cards, and layered decorative panels

### 2. Selected Projects

Purpose:
Lead with capability and evidence of execution.

Content:

- Three featured projects only
- Each card includes project name, short value statement, tech tags, and two links

Layout:

- Large visual cards with generous spacing
- Slight stagger or asymmetry across rows
- Tags styled as compact pills instead of raw markdown lists

### 3. Research and Publications

Purpose:
Keep academic credibility visible without turning the homepage into a full publications archive.

Content:

- Two to three research themes
- One or two representative papers or research outputs
- Link to the full publications page

Layout:

- Editorial section with a quieter tone than the projects block
- Cards or panels should feel secondary to the featured projects, but still polished

### 4. Recent Updates

Purpose:
Show activity and recency.

Content:

- Up to three updates
- Examples: publication update, new project release, CV refresh, blog post

Layout:

- Thin timeline or compact stacked cards
- Clear dates, minimal copy

### 5. Contact Strip

Purpose:
Close with a clear invitation to connect.

Content:

- One concise statement about openness to research, internships, or collaboration
- Email, GitHub, CV links

Layout:

- Full-width band with high contrast but restrained styling

## Visual System

### Tone

Luxury-minimal technical portfolio.

### Color

- Background: warm off-white with subtle variation between sections
- Primary text: deep graphite or ink blue
- Accent: restrained teal or cool blue
- Secondary accent: muted metallic amber only for tiny emphasis

Color should support hierarchy, not decorate every surface.

### Typography

Typography should feel modern and deliberate, avoiding default system stacks as the primary identity.

Recommended pairing:

- Display: a precise, elegant sans or restrained serif-sans contrast for major headings
- Body: a highly readable modern sans

The exact choice should favor clarity and sophistication over novelty.

### Motion

- Gentle load-in reveal for hero content
- Card hover lift with subtle shadow and border transition
- No playful bounce or exaggerated transforms

Motion should communicate polish, not spectacle.

### Texture and Surfaces

- Soft gradients, glass-like panels, or faint radial highlights are allowed
- Avoid noisy backgrounds or heavy skeuomorphism
- Use depth through spacing, borders, and mild blur instead of large shadows

## Structural Decisions

- Do not reuse the default sidebar layout on the homepage
- Create a dedicated homepage layout so the landing page can span wider and own its own composition
- Keep the rest of the site on existing layouts unless later redesign work is requested
- Keep homepage content easy to edit in a single source file

## Content Rules

- Keep homepage copy short and modular
- Do not place the full CV or full publication list on the homepage
- Use short, high-signal summaries with clear outbound links
- Maintain a fixed number of featured slots where possible so future edits are simple

## Accessibility and Responsiveness

- Maintain strong contrast for text and interactive controls
- Preserve keyboard focus visibility
- Ensure hero and cards stack cleanly on mobile
- Avoid hover-only disclosure of critical information

## Implementation Outline

Likely implementation touches:

- Create a custom homepage layout
- Rewrite the homepage content into structured HTML sections
- Add a dedicated homepage SCSS partial
- Load or declare a refined font pairing
- Add a lightweight smoke check for homepage build output

## Non-Goals

- No full-site theme rewrite
- No redesign of publications, CV, or project archive pages in this pass
- No CMS or data-model migration
