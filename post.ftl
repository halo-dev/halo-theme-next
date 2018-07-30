<#--{% extends '_layout.swig' %}-->
<#include "layout/_layout.ftl">
{% import '_macro/post.swig' as post_template %}
{% import '_macro/sidebar.swig' as sidebar_template %}

<@html title='${options.blog_title?default("NexT")}'>
<#--TODO{% block page_class %}{% endblock %}-->
    <#if posts??>page-post-detail</#if>
</@html>
<@main>
  <div id="posts" class="posts-expand">
      {{ post_template.render(page) }}

      <div class="post-spread">
          {% if theme.jiathis %}
        <#include "layout/_partials/share/jiathis.ftl">
          {% elseif theme.baidushare %}
        <#include "layout/_partials/share/baidushare.ftl">
          {% elseif theme.add_this_id %}
        <#include "layout/_partials/share/add-this.ftl">
          {% elseif theme.duoshuo_shortname and theme.duoshuo_share %}
        <#include "layout/_partials/share/duoshuo_share.ftl">
          {% endif %}
      </div>
  </div>
</@main>

<@sidebar>
    {% block sidebar %}
    {{ sidebar_template.render(false) }}
  {% endblock %}
</@sidebar>

<@footer>

</@footer>

<@button>
<#include "layout/_scripts/pages/post-details.ftl">
</@button>