<#include "layout/_layout.ftl">
<#include "layout/_macro/sidebar.ftl">
<#include "layout/_partials/page-header.ftl">

<@html title="分类 | ${blog_title!}" ogtype="website" url="${categories_url!}"></@html>

<@main>
<div id="content" class="content">
    <div id="posts" class="posts-expand">
        <div class="post-block page">
            <@page_header "分类"></@page_header>
            <div class="post-body<#if settings.han!false> han-init-context</#if>">
                <div class="category-all-page">
                    <div class="category-all-title">
                        <@categoryTag method="list">
                            <#if categories?? && categories?size gt 0>
                                目前共计 ${categories?size} 个分类
                            <#else>
                                暂无分类
                            </#if>
                        </@categoryTag>
                    </div>
                    <div class="category-all">
                        <ul class="category-list">
                            <@categoryTag method="list">
                                <#if categories?? && categories?size gt 0>
                                    <#list categories as category>
                                        <li class="category-list-item">
                                            <a class="category-list-link" href="${category.fullPath!}">${category.name}</a>
                                            <span class="category-list-count">${category.postCount!0}</span>
                                        </li>
                                    </#list>
                                </#if>
                            </@categoryTag>
                        </ul>
                    </div>
                </div>
            </div>
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
