<#include "layout/_layout.ftl">
<#include "layout/_macro/sidebar.ftl">
<#include "layout/_partials/page-header.ftl">
<@html title="标签 | ${options.blog_title!'Next'}" keywords="${options.seo_keywords!'Next'}" desc="${options.seo_desc!'Next'}" ogtype="website" url="${options.blog_url!}/tags/"></@html>

<@main useComment=false>
<div id="posts" class="posts-expand">
    <div class="post-block page">
        <@page_header '标签'></@page_header>
        <div class="post-body<#if (options.next_plugins_han!'false')=='true'> han-init-context</#if>">
            <div class="tag-cloud">
                <div class="tag-cloud-title">
                    <@commonTag method="tags">
                    <#if tags?? && tags?size gt 0>
                        目前共计 ${tags?size} 个标签
                    <#else>
                        暂无标签
                    </#if>
                    </@commonTag>
                </div>
                <div class="tag-cloud-tags">
                    <@commonTag method="tags">
                    <#if tags?? && tags?size gt 0>
                        <#list tags as tag>
                            <#if (tag.posts?size gt 0 && tag.posts?size lt 3) || tag.posts?size == 0>
                                <a href="${options.blog_url!}/tags/${tag.tagUrl}/" style="font-size: 12px; color: #ccc">${tag.tagName}</a>
                            <#elseif tag.posts?size gt 3 && tag.posts?size lt 6>
                                <a href="${options.blog_url!}/tags/${tag.tagUrl}/" style="font-size: 13.5px; color: #bcbcbc">${tag.tagName}</a>
                            <#elseif tag.posts?size gt 6 && tag.posts?size lt 9>
                                <a href="${options.blog_url!}/tags/${tag.tagUrl}/" style="font-size: 18px; color: #8e8e8e">${tag.tagName}</a>
                            <#elseif tag.posts?size gt 9 && tag.posts?size lt 12>
                                <a href="${options.blog_url!}/tags/${tag.tagUrl}/" style="font-size: 19.5px; color: #7e7e7e">${tag.tagName}</a>
                            <#elseif tag.posts?size gt 12 && tag.posts?size lt 15>
                                <a href="${options.blog_url!}/tags/${tag.tagUrl}/" style="font-size: 22.5px; color: #5f5f5f">${tag.tagName}</a>
                            <#elseif tag.posts?size gt 15 && tag.posts?size lt 18>
                                <a href="${options.blog_url!}/tags/${tag.tagUrl}/" style="font-size: 24px; color: #4f4f4f">${tag.tagName}</a>
                            <#elseif tag.posts?size gt 18 && tag.posts?size lt 21>
                                <a href="${options.blog_url!}/tags/${tag.tagUrl}/" style="font-size: 25.5px; color: #404040">${tag.tagName}</a>
                            <#else>
                                <a href="${options.blog_url!}/tags/${tag.tagUrl}/" style="font-size: 30px; color: #111">${tag.tagName}</a>
                            </#if>
                        </#list>
                    </#if>
                    </@commonTag>
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
