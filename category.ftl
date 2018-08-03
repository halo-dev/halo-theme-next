<#include "layout/_layout.ftl">
<#include "layout/_macro/post-collapse.ftl">
{% import '_macro/sidebar.swig' as sidebar_template %}

<@html title='${options.blog_title?default("NexT")}'>

</@html>

<@main useComment=false>
  <div class="post-block category">

      <div id="posts" class="posts-collapse">
          <div class="collection-title">
              <<#if options.next_other_seo?default('false')=='true'>h2<#else>h1</#if>>
                  ${category.cateName}
                  <small>分类</small>
              </<#if options.next_other_seo?default('false')=='true'>h2<#else>h1</#if>>
          </div>
          <@post_collapase posts=posts.content></@post_collapase>
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
