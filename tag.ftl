<#include "layout/_layout.ftl">
<#include "layout/_macro/post-collapse.ftl">
<#include "layout/_macro/sidebar.ftl">

<@html title="标签: ${tag.name} | ${options.blog_title!'Next'}" keywords="${options.seo_keywords!'Next'}" desc="${options.seo_description!'Next'}" ogtype="website" url="${options.blog_url!}/tags/${tag.slugName!}">

</@html>
<@main>
<div id="content" class="content">
    <div class="post-block tag">
        <div id="posts" class="posts-collapse">
            <div class="collection-title">
                <<#if settings.seo!false>h2<#else>h1</#if>>
                    ${tag.name}
                    <small>标签</small>
                </<#if settings.seo!false>h2<#else>h1</#if>>
            </div>
            <@post_collapase posts=posts.content></@post_collapase>
        </div>
    </div>
    <#if posts.totalPages gt 1>
        <nav class="pagination">
            <#if posts.hasPrevious()>
                <#if posts.number == 1>
                    <a class="extend prev" rel="prev" href="${options.blog_url!}/tags/${tag.slugName}">
                        <i class="fa fa-angle-left" aria-label="Previous page"></i>
                    </a>
                <#else>
                    <a class="extend prev" rel="prev" href="${options.blog_url!}/tags/${tag.slugName}/page/${posts.number}">
                        <i class="fa fa-angle-left" aria-label="Previous page"></i>
                    </a>
                </#if>
            </#if>
            <#list rainbow as r>
                <#if r == posts.number+1>
                    <span class="page-number current">${posts.number+1}</span>
                <#else>
                    <a class="page-number" href="${options.blog_url!}/tags/${tag.slugName}/page/${r}">${r}</a>
                </#if>
            </#list>
            <#if posts.hasNext()>
                <a class="extend next" rel="next" href="${options.blog_url!}/tags/${tag.slugName}/page/${posts.number+2}/">
                    <i class="fa fa-angle-right" aria-label="Next page"></i>
                </a>
            </#if>
        </nav>
    </#if>
</div>
</@main>

<@sidebar>
<@sidebar_template is_post=false></@sidebar_template>
</@sidebar>

<@footer>

</@footer>

<@button>

</@button>
