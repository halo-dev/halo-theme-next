<#include "layout/_layout.ftl">
{% import '_macro/post.swig' as post_template %}
<#include "layout/_macro/sidebar.ftl">

<@html title='${options.blog_title?default("NexT")}'><#if posts??>page-post-detail</#if></@html>
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
<@sidebar_template is_post=true></@sidebar_template>
</@sidebar>

<@footer>

</@footer>

<@button>
<#include "layout/_scripts/pages/post-details.ftl">
</@button>
