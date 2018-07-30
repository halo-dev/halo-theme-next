{% extends '_layout.swig' %}
<#include "layout/_layout.ftl">
<#include "layout/_macro/post-collapse.ftl">
{% import '_macro/sidebar.swig' as sidebar_template %}
<@html title='${options.blog_title?default("NexT | Archives")}'>
<#--TODO{% block page_class %}{% endblock %}-->
  page-archive
</@html>

<@main>
  <div class="post-block archive">
      <div id="posts" class="posts-collapse">
          <span class="archive-move-on"></span>
          <span class="archive-page-counter">
        {% set cheers %}
        {% set posts_length = site.posts.length %}
        {% if posts_length > 210 %} {% set cheers = 'excellent' %}
          {% elif posts_length > 130 %} {% set cheers = 'great' %}
          {% elif posts_length > 80 %} {% set cheers = 'good' %}
          {% elif posts_length > 50 %} {% set cheers = 'nice' %}
          {% elif posts_length > 30 %} {% set cheers = 'ok' %}
        {% else %}
          {% set cheers = 'um' %}
        {% endif %}
        {{ __('cheers.' + cheers) }}! {{ _p("counter.archive_posts", site.posts.length) }} {{ __('keep_on') }}
      </span>
      <@articleTag method="archivesLess">
          <#list archivesLess as archive>
              <div class="collection-title">
                  <<#if options.next_other_seo?default('false')=='true'>h2<#else>h1</#if> class="archive-year" id="archive-year-${archive.year}">${archive.year}</<#if options.next_other_seo?default('false')=='true'>h2<#else>h1</#if>>
              </div>
              <@post_collapase archive.posts></@post_collapase>
          </#list>
      </@articleTag>
  </div>
  </div>
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
