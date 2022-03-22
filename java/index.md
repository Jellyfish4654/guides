---
layout: default
title: "Java Lessons"
up: ..
---

Days are mandatory, addendums are optional.

{% for lesson in site.data.java %}
 {%-if lesson == null %}{%continue%}{%endif%}
 * [Day {{forloop.index0}}](day{{forloop.index0}}.html): {{lesson.title}}
 {%- for addendum in lesson.addendums %}
    * [Addendum {{addendum}}](day{{forloop.index0}}-add{{addendum}}.html)
 {%- endfor %}
 {%- if lesson.exercises %}
    * [Exercises](day{{forloop.index0}}-exercises.html)
 {%endif%}
{%- endfor %}