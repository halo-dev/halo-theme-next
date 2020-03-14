<#include "layout/_layout.ftl">
<#include "layout/_macro/post-collapse.ftl">
<#include "layout/_macro/sidebar.ftl">

<@html title="标签: ${tag.name} | ${blog_title!}" ogtype="website" url="${tag.fullPath!}"></@html>
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
            <@paginationTag method="tagPosts" page="${posts.number}" total="${posts.totalPages}" display="3" slug="${tag.slug!}">
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
