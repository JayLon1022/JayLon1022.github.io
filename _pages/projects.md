---
layout: archive
title: "Projects"
permalink: /projects/
author_profile: true
redirect_from:
  - /projects.html
  - /portfolio/
  - /portfolio.html
---

{% include base_path %}

<ul>
{% for post in site.portfolio reversed %}
  {% include archive-single.html %}
{% endfor %}
</ul>
