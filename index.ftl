<#include "layout/_layout.ftl">
{% import '_macro/post.swig' as post_template %}
<#include "layout/_macro/sidebar.ftl">

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
<@sidebar_template is_post=false></@sidebar_template>
</@sidebar>

<@footer>

</@footer>

<@button>

</@button>
