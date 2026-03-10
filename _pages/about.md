---
permalink: /
title: "Hao Wu"
excerpt : "Research, projects, and technical notes."
author_profile: false
layout: home-landing
redirect_from: 
  - /about/
  - /about.html
---
{% assign featured_publications = site.publications | sort: "date" | reverse %}

<section class="home-hero">
  <div class="home-hero__content">
    <p class="section-eyebrow">Researcher / Builder / Open Source</p>
    <h1>Machine learning, cyber security, and technical work designed to ship.</h1>
    <p class="home-hero__lead">
      I build research prototypes, open-source tools, and applied machine learning systems across industrial security,
      artificial immune computing, and scientific workflows.
    </p>
    <p class="home-hero__support">
      This homepage is organized like a product launch page: concise, project-forward, and easy to scan for research,
      code, and recent output.
    </p>

    <div class="home-hero__actions">
      <a class="home-button home-button--primary" href="{{ '/cv/' | relative_url }}">View CV</a>
      <a class="home-button home-button--secondary" href="{{ '/publications/' | relative_url }}">Publications</a>
      <a class="home-button home-button--ghost" href="https://github.com/{{ site.author.github }}">GitHub</a>
      <a class="home-button home-button--ghost" href="mailto:{{ site.author.email }}">Email</a>
    </div>

    <div class="home-hero__topics">
      <span>Industrial Control Security</span>
      <span>Artificial Immune Systems</span>
      <span>Machine Learning for Science</span>
      <span>Research Software</span>
    </div>
  </div>

  <div class="home-hero__visual">
    <article class="hero-portrait-card">
      <span class="hero-chip">Based in {{ site.author.location }}</span>
      <img
        class="hero-portrait-card__image"
        src="{{ '/images/profile.png' | relative_url }}"
        alt="{{ site.author.name }}"
      >
      <div class="hero-portrait-card__meta">
        <p class="hero-portrait-card__label">{{ site.author.employer }}</p>
        <h2>{{ site.author.name }}</h2>
        <p>Building a technical portfolio at the intersection of research, security, and deployable tools.</p>
      </div>
    </article>

    <article class="hero-stat-card">
      <p class="hero-stat-card__label">Publications</p>
      <strong>{{ site.publications | size }}</strong>
      <span>peer-reviewed outputs listed on site</span>
    </article>

    <article class="hero-stat-card">
      <p class="hero-stat-card__label">Focus</p>
      <strong>ICS + ML</strong>
      <span>applied security and intelligent systems</span>
    </article>

    <article class="hero-stat-card hero-stat-card--wide">
      <p class="hero-stat-card__label">Current profile</p>
      <strong>Research, projects, and active updates in one place</strong>
      <span>Designed for advisors, collaborators, and technical teams.</span>
    </article>
  </div>
</section>

<section class="projects-grid" id="projects">
  <div class="section-intro">
    <p class="section-eyebrow">Selected Projects</p>
    <h2>Work that turns ideas into usable systems.</h2>
    <p>
      These featured projects balance research depth with implementation value. The goal is not to list everything,
      but to surface the pieces that best represent how I build.
    </p>
  </div>

  <div class="projects-grid__list">
    <article class="project-card project-card--featured">
      <div class="project-card__header">
        <span class="project-card__serial">01</span>
        <span class="project-card__state">Open source</span>
      </div>
      <div class="project-card__body">
        <p class="project-card__type">Python Package</p>
        <h3>mheatmap</h3>
        <p>
          Advanced heatmap visualization and matrix analysis tooling with support for proportional layouts,
          confusion-matrix post-processing, and spectral reordering.
        </p>
      </div>
      <div class="project-card__tags">
        <span>Python</span>
        <span>Visualization</span>
        <span>Scientific Computing</span>
        <span>Open Source</span>
      </div>
      <div class="project-card__actions">
        <a class="home-link" href="https://qqgjyx.com/mheatmap">Website</a>
        <a class="home-link" href="https://github.com/qqgjyx/mheatmap">GitHub</a>
      </div>
    </article>

    <article class="project-card">
      <div class="project-card__header">
        <span class="project-card__serial">02</span>
        <span class="project-card__state">Research build</span>
      </div>
      <div class="project-card__body">
        <p class="project-card__type">Traffic Analysis</p>
        <h3>GCN4ETD</h3>
        <p>
          A graph-convolution approach for encrypted traffic detection, built as a replication-oriented technical study
          around efficient malicious traffic classification.
        </p>
      </div>
      <div class="project-card__tags">
        <span>Graph Learning</span>
        <span>Cyber Security</span>
        <span>Encrypted Traffic</span>
      </div>
      <div class="project-card__actions">
        <a class="home-link" href="https://JayLon1022.com/GCN4ETD">Project Page</a>
        <a class="home-link" href="{{ '/projects/' | relative_url }}">More Projects</a>
      </div>
    </article>

    <article class="project-card project-card--wide">
      <div class="project-card__body">
        <p class="project-card__type">Few-shot Security Research</p>
        <h3>LLM-Based Immune Detection for Unknown ICS Attacks</h3>
        <p>
          A research system that combines artificial immune mechanisms with large language models to improve unknown
          attack detection in industrial control environments under few-shot conditions.
        </p>
      </div>
      <div class="project-card__wide-meta">
        <div class="project-card__tags">
          <span>Industrial Control Systems</span>
          <span>LLM</span>
          <span>Few-shot Learning</span>
          <span>Artificial Immune System</span>
        </div>
        <div class="project-card__actions">
          <a class="home-link" href="{{ '/files/LLM-Based_Immune_Detection_Method_for_Unknown_Network_Attacks_in_ICS_Under_Few-Shot_Conditions.pdf' | relative_url }}">Paper</a>
          <a class="home-link" href="{{ '/publications/' | relative_url }}">Publication List</a>
        </div>
      </div>
    </article>
  </div>
</section>

<section class="research-panel" id="research">
  <div class="research-panel__intro">
    <p class="section-eyebrow">Research & Publications</p>
    <h2>Applied machine learning with a security-first perspective.</h2>
    <p>
      My current work centers on computer immunology, industrial control security, and machine learning methods that
      remain useful outside ideal data conditions. I prefer systems that can be explained, tested, and deployed.
    </p>

    <div class="research-panel__topics">
      <span>Artificial Immune Computing</span>
      <span>ICS Security</span>
      <span>Few-shot Detection</span>
      <span>Scientific Machine Learning</span>
    </div>

    <a class="home-link home-link--accent" href="{{ '/publications/' | relative_url }}">Explore all publications</a>
  </div>

  <div class="research-panel__list">
    {% for post in featured_publications limit: 2 %}
      <article class="research-card">
        <p class="research-card__meta">{{ post.date | date: "%B %Y" }} / {{ post.venue }}</p>
        <h3><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h3>
        <div class="research-card__actions">
          <a class="home-link" href="{{ post.url | relative_url }}">Read Summary</a>
          {% if post.paperurl %}
            <a class="home-link" href="{{ post.paperurl }}">Download Paper</a>
          {% endif %}
        </div>
      </article>
    {% endfor %}
  </div>
</section>

<section class="updates-timeline" id="updates">
  <div class="section-intro section-intro--compact">
    <p class="section-eyebrow">Recent Updates</p>
    <h2>Small signals that the work is moving.</h2>
  </div>

  <div class="updates-timeline__list">
    <article class="update-card update-card--current">
      <p class="update-card__date">March 2026</p>
      <h3>Homepage refresh</h3>
      <p>A redesigned landing page focused on selected work, research visibility, and cleaner navigation.</p>
    </article>

    {% for post in featured_publications limit: 2 %}
      <article class="update-card">
        <p class="update-card__date">{{ post.date | date: "%B %Y" }}</p>
        <h3>{{ post.title }}</h3>
        <p>{{ post.venue }}</p>
      </article>
    {% endfor %}
  </div>
</section>

<section class="contact-strip" id="contact">
  <div class="contact-strip__copy">
    <p class="section-eyebrow section-eyebrow--light">Contact</p>
    <h2>Open to research collaboration, graduate opportunities, and technical conversations.</h2>
    <p>
      If you want a faster overview, start with the CV. If you want to understand how I work, start with the selected
      projects and publications above.
    </p>
  </div>

  <div class="contact-strip__actions">
    <a class="home-button home-button--light" href="mailto:{{ site.author.email }}">Email Me</a>
    <a class="home-button home-button--outline-light" href="{{ '/cv/' | relative_url }}">Open CV</a>
    <a class="home-button home-button--outline-light" href="https://github.com/{{ site.author.github }}">GitHub</a>
  </div>
</section>
