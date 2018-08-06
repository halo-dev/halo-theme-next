<#include "layout/_layout.ftl">
<#include "layout/_macro/post.ftl">
<#include "layout/_macro/sidebar.ftl">

<@html title=" ${post.postTitle} | ${options.blog_title?default('NexT')}" keywords="${tagWords}" desc="${post.postSummary?if_exists}" ogtype="article" url="${options.blog_url?if_exists}/archives/${post.postUrl?if_exists}"></@html>
<@main useComment=true>
    <div id="posts" class="posts-expand">
        <@post_template post,is_index??,''></@post_template>
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
