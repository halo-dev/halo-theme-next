<#include "layout/_layout.ftl">
<#include "layout/_macro/post.ftl">
<#include "layout/_macro/sidebar.ftl">

<@html title='${options.blog_title?default("NexT")}'><#if posts??>page-home</#if></@html>

<@main useComment=false>
    <section id="posts" class="posts-expand">
        <#if posts??>
            <#list posts.content as post>
                <@post_template post,is_index,''></@post_template>
            </#list>
        </#if>
    </section>
  <#include "layout/_partials/pagination.ftl">
</@main>

<@sidebar>
<@sidebar_template is_post=false></@sidebar_template>
</@sidebar>

<@footer>

</@footer>

<@button>

</@button>
