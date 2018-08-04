<#include "layout/_layout.ftl">
<#include "layout/_macro/sidebar.ftl">
<#include "layout/_partials/page-header.ftl">


<@html title='${options.blog_title?default("NexT")}'><#if posts??>page-post-detail</#if></@html>

<@main useComment=true>
<div id="posts" class="posts-expand">
    <div class="post-block page">
        <@page_header post.postTitle></@page_header>
        <div class="post-body{% if theme.han %} han-init-context{% endif %}{% if page.direction && page.direction.toLowerCase() === 'rtl' %} rtl{% endif %}">
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
