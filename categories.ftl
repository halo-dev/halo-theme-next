<#include "layout/_layout.ftl">
<#include "layout/_macro/sidebar.ftl">
<#include "layout/_partials/page-header.ftl">

<@html title="分类 | ${options.blog_title!'Next'}" keywords="${options.seo_keywords!'Next'}" desc="${options.seo_desc!'Next'}" ogtype="website" url="${options.blog_url!}/categories"></@html>

<@main useComment=false>
<div id="posts" class="posts-expand">
    <div class="post-block page">
        <@page_header "分类"></@page_header>
        <div class="post-body<#if (options.next_plugins_han!'false')=='true'> han-init-context</#if>">
            <div class="category-all-page">
                <div class="category-all-title">
                    <#if categories?? && categories?size gt 0>
                        目前共计 ${categories?size} 个分类
                    <#else>
                        暂无分类
                    </#if>
                </div>
                <div class="category-all">
                    <ul class="category-list">
                        <#if categories?? && categories?size gt 0>
                            <#list categories as cate>
                                <li class="category-list-item">
                                    <a class="category-list-link" href="${options.blog_url!}/categories/${cate.cateUrl}/">${cate.cateName}</a>
                                    <span class="category-list-count">${cate.posts?size}</span>
                                </li>
                            </#list>
                        </#if>
                    </ul>
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
