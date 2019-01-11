<#include "layout/_layout.ftl">
<#include "layout/_macro/sidebar.ftl">
<#include "layout/_partials/page-header.ftl">

<@html title="${post.postTitle} | ${options.blog_title!'Next'}" keywords="${options.seo_keywords!'Next'}" desc="${options.seo_desc!'Next'}" ogtype="article" url="${options.blog_url!}/p/${post.postUrl!}"></@html>

<@main useComment=true>
<div id="posts" class="posts-expand">
    <div class="post-block page">
        <@page_header post.postTitle></@page_header>
        <div class="post-body<#if (options.next_plugins_han!'false')=='true'> han-init-context</#if>">
            ${post.postContent!}
        </div>
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
