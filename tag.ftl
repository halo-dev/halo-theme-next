<#include "layout/_layout.ftl">
<#include "layout/_macro/post-collapse.ftl">
<#include "layout/_macro/sidebar.ftl">

<@html title=" 标签: ${tag.tagName} | ${options.blog_title?default('NexT')}" keywords="${options.seo_keywords?default('NexT')}" desc="${options.seo_desc?default('NexT')}" ogtype="website" url="${options.blog_url?if_exists}/tags/${tag.tagUrl?if_exists}">

</@html>
<@main useComment=false>
<div class="post-block tag">
    <div id="posts" class="posts-collapse">
        <div class="collection-title">
            <<#if options.next_other_seo?default('false')=='true'>h2<#else>h1</#if>>
                ${tag.tagName}
                <small>标签</small>
            </<#if options.next_other_seo?default('false')=='true'>h2<#else>h1</#if>>
        </div>
        <@post_collapase posts=posts.content></@post_collapase>
    </div>
</div>
<#if posts.totalPages gt 1>
    <nav class="pagination">
        <#if posts.hasPrevious()>
            <#if posts.number == 1>
                <a class="extend prev" rel="prev" href="/tags/${tag.tagUrl}">
                    <i class="fa fa-angle-left" aria-label="Previous page"></i>
                </a>
            <#else>
                <a class="extend prev" rel="prev" href="/tags/${tag.tagUrl}/page/${posts.number}">
                    <i class="fa fa-angle-left" aria-label="Previous page"></i>
                </a>
            </#if>
        </#if>
        <#list rainbow as r>
            <#if r == posts.number+1>
                <span class="page-number current">${posts.number+1}</span>
            <#else>
                <a class="page-number" href="/tags/${tag.tagUrl}/page/${r}">${r}</a>
            </#if>
        </#list>
        <#if posts.hasNext()>
            <a class="extend next" rel="next" href="/tags/${tag.tagUrl}/page/${posts.number+2}/">
                <i class="fa fa-angle-right" aria-label="Next page"></i>
            </a>
        </#if>
    </nav>
</#if>
</@main>

<@sidebar>
<@sidebar_template is_post=false></@sidebar_template>
</@sidebar>

<@footer>

</@footer>

<@button>

</@button>
