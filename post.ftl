<#include "layout/_layout.ftl">
<#include "layout/_macro/post.ftl">
<#include "layout/_macro/sidebar.ftl">

<@html title="${post.title!} | ${blog_title!}" ogtype="article" url="${post.fullPath!}"></@html>
<@main>
<div id="content" class="content">
    <div id="posts" class="posts-expand">
        <@post_template post></@post_template>
        <div class="post-spread">
            <#if settings.jiathis_uid??>
            <#include "layout/_partials/share/jiathis.ftl">
            <#elseif settings.baidu_share_type!=''>
            <#include "layout/_partials/share/baidushare.ftl">
            <#elseif settings.add_this_id??>
            <#include "layout/_partials/share/add-this.ftl">
            </#if>
        </div>
    </div>
    <#include "layout/_partials/comments.ftl">
    <@comment post,'post'/>
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
