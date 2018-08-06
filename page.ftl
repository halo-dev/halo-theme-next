<#include "layout/_layout.ftl">
<#include "layout/_macro/sidebar.ftl">
<#include "layout/_partials/page-header.ftl">

<@html title=" ${post.postTitle} | ${options.blog_title?default('NexT')}" keywords="${options.seo_keywords?default('NexT')}" desc="${options.seo_desc?default('NexT')}" ogtype="article" url="${options.blog_url?if_exists}/p/${post.postUrl?if_exists}"></@html>

<@main useComment=true>
<div id="posts" class="posts-expand">
    <div class="post-block page">
        <@page_header post.postTitle></@page_header>
        <div class="post-body<#if options.next_plugins_han?default('false')=='true'> han-init-context</#if>">
            ${post.postContent?if_exists}
        </div>
    </div>
</div>
</@main>

<@sidebar>
    <@sidebar_template is_post=false></@sidebar_template>
</@sidebar>

<@footer>

</@footer>

<@button>
<#include "layout/_scripts/pages/post-details.ftl">
</@button>
