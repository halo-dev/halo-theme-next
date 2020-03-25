<#include "layout/_layout.ftl">
<#include "layout/_macro/post.ftl">
<#include "layout/_macro/sidebar.ftl">

<@html title="搜索：${keyword} | ${blog_title!}" ogtype="website" url="${blog_url!}/search"></@html>

<@main>
<div id="content" class="content">
    <section id="posts" class="posts-expand">
        <#if posts??>
            <#list posts.content as post>
                <@post_template post></@post_template>
            </#list>
        </#if>
    </section>
    <#if posts.totalPages gt 1>
    <nav class="pagination">
        <@paginationTag method="search" page="${posts.number}" total="${posts.totalPages}" display="3" keyword="${keyword}">
            <#if pagination.hasPrev>
                <a class="extend prev" rel="prev" href="${pagination.prevPageFullPath!}">
                    <i class="fa fa-angle-left" aria-label="Previous page"></i>
                </a>
            </#if>
            <#list pagination.rainbowPages as number>
                <#if number.isCurrent>
                    <span class="page-number current">${number.page!}</span>
                <#else>
                    <a class="page-number" href="${number.fullPath!}">${number.page!}</a>
                </#if>
            </#list>
            <#if pagination.hasNext>
                <a class="extend next" rel="next" href="${pagination.nextPageFullPath!}">
                    <i class="fa fa-angle-right" aria-label="Next page"></i>
                </a>
            </#if>
        </@paginationTag>
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
