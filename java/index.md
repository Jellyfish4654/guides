---
layout: default
title: "Java Lessons"
up: ..
---

Days are mandatory, addendums are optional.

{% for lesson in site.data.java %}
 * [Day {{lesson.num}}](day{{lesson.num}}.html): {{lesson.title}}
 {%- for addendum in lesson.addendums %}
    * [Addendum {{addendum}}](day{{lesson.num}}-add{{addendum}}.html)
 {% endfor %}
{%- endfor %}