<#include "layout/_layout.ftl">
<#include "layout/_macro/sidebar.ftl">
<#include "layout/_partials/page-header.ftl">


<@html title='${options.blog_title?default("NexT")}'><#if posts??>page-post-detail</#if></@html>

<@main useComment=false>
<div id="posts" class="posts-expand">
    <div class="post-block page">
        <@page_header '标签'></@page_header>
        <div class="post-body<#if options.next_plugins_han?default('false')=='true'> han-init-context</#if>">
            <div class="tag-cloud">
                <div class="tag-cloud-title">
                    <#if tags?? && tags?size gt 0>
                        目前共计 ${tags?size} 个标签
                    <#else>
                        暂无标签
                    </#if>
                </div>
                <div class="tag-cloud-tags">
                    {{ tagcloud({min_font: 12, max_font: 30, amount: 300, color: true, start_color: '#ccc', end_color: '#111'}) }}
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
