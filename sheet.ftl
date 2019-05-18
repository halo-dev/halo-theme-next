<#include "layout/_layout.ftl">
<#include "layout/_macro/sidebar.ftl">
<#include "layout/_partials/page-header.ftl">

<@html title="${post.title} | ${options.blog_title!'Next'}" keywords="${options.seo_keywords!'Next'}" desc="${options.seo_description!'Next'}" ogtype="article" url="${ctx!}/p/${post.url!}"></@html>

<@main>
<div id="content" class="content">
    <div id="posts" class="posts-expand">
        <div class="post-block page">
            <@page_header post.title></@page_header>
            <div class="post-body<#if settings.han!false> han-init-context</#if>">
                ${post.formatContent!}
            </div>
        </div>
    </div>
    <#include "layout/_partials/comments.ftl">
    <@comment sheet,'sheet'/>
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
