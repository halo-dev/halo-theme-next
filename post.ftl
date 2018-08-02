<#--{% extends '_layout.swig' %}-->
<#include "layout/_layout.ftl">
{% import '_macro/post.swig' as post_template %}
{% import '_macro/sidebar.swig' as sidebar_template %}

<@html title='${options.blog_title?default("NexT")}'>
<#--TODO{% block page_class %}{% endblock %}-->
    <#if posts??>page-post-detail</#if>
</@html>
<@main useComment=true>
  <div id="posts" class="posts-expand">
      {{ post_template.render(page) }}
      <div class="post-spread">
          <#if options.next_other_jiathis_uid?if_exists !=''>
            <#include "layout/_partials/share/jiathis.ftl">
          <#elseif options.baidu_share_type?if_exists!=''>
            <#include "layout/_partials/share/baidushare.ftl">
          <#elseif options.next_other_add_this_id?if_exists!=''>
            <#include "layout/_partials/share/add-this.ftl">
          </#if>
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
