<#include "layout/_layout.ftl">
<#include "layout/_macro/post-collapse.ftl">
<#include "layout/_macro/sidebar.ftl">
<@html title="归档 | ${blog_title!}" ogtype="website" url="${archives_url!}">page-archive</@html>

<@main>
<div id="content" class="content">
  <div class="post-block archive">
      <div id="posts" class="posts-collapse">
          <span class="archive-move-on"></span>
          <span class="archive-page-counter">
              <@postTag method = "count">
                  <#if count gt 210>
                        太棒了!
                  <#elseif count gt 130>
                        非常好!
                  <#elseif count gt 80>
                        很好!
                  <#elseif count gt 50>
                        好!
                  <#elseif count gt 30>
                        OK!
                  <#else>
                        嗯..
                  </#if> 目前共计 ${count} 篇日志。 继续努力。
              </@postTag>
          </span>
          <@postTag method="archiveYear">
              <#list archives as archive>
                  <div class="collection-title">
                      <<#if settings.seo!false>h2<#else>h1</#if> class="archive-year" id="archive-year-${archive.year?c}">${archive.year?c}</<#if settings.seo!false>h2<#else>h1</#if>>
                  </div>
                  <@post_collapase archive.posts></@post_collapase>
              </#list>
          </@postTag>
      </div>
  </div>
    <#if posts.totalPages gt 1>
        <nav class="pagination">
            <@paginationTag method="archives" page="${posts.number}" total="${posts.totalPages}" display="3">
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
