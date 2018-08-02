<#--{% extends '_layout.swig' %}-->
<#include "layout/_layout.ftl">
{% import '_macro/post.swig' as post_template %}
{% import '_macro/sidebar.swig' as sidebar_template %}

<@html title='${options.blog_title?default("NexT")}'><#if posts??>page-home</#if></@html>

<@main useComment=false>
  <section id="posts" class="posts-expand">
      {% for post in page.posts %}
      {{ post_template.render(post, true) }}
      {% endfor %}
  </section>
  <#include "layout/_partials/pagination.ftl">
</@main>

<@sidebar>
    {% block sidebar %}
    {{ sidebar_template.render(false) }}
  {% endblock %}
</@sidebar>

<@footer>

</@footer>

<@button>

</@button>
