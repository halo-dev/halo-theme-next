<#include "layout/_layout.ftl">
<#include "layout/_macro/post-collapse.ftl">
<#include "layout/_macro/sidebar.ftl">

<@html title=" 分类: ${category.cateName} | ${options.blog_title?default('NexT')}" keywords="${options.seo_keywords?default('NexT')}" desc="${options.seo_desc?default('NexT')}" ogtype="website" url="${options.blog_url?if_exists}/categories/${category.cateUrl?if_exists}">
</@html>

<@main useComment=false>
    <div class="post-block category">
        <div id="posts" class="posts-collapse">
            <div class="collection-title">
                <<#if options.next_other_seo?default('false')=='true'>h2<#else>h1</#if>>
                    ${category.cateName}
                    <small>分类</small>
                </<#if options.next_other_seo?default('false')=='true'>h2<#else>h1</#if>>
            </div>
            <@post_collapase posts=posts.content></@post_collapase>
        </div>
    </div>
    <#include "layout/_partials/pagination.ftl">
</@main>

<@sidebar>
<@sidebar_template is_post=false></@sidebar_template>
</@sidebar>

<@footer>

</@footer>

<@button>

</@button>
