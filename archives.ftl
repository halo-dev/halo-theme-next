<#include "layout/_layout.ftl">
<#include "layout/_macro/post-collapse.ftl">
<#include "layout/_macro/sidebar.ftl">
<@html title="归档 | ${options.blog_title!'Next'}" keywords="${options.seo_keywords!'Next'}" desc="${options.seo_desc!'Next'}" ogtype="website" url="${options.blog_url!}/archives">page-archive</@html>

<@main useComment=false>
  <div class="post-block archive">
      <div id="posts" class="posts-collapse">
          <span class="archive-move-on"></span>
          <span class="archive-page-counter">
              <@articleTag method = "postsCount">
                  <#if postsCount gt 210>
                        太棒了!
                  <#elseif postsCount gt 130>
                        非常好!
                  <#elseif postsCount gt 80>
                        很好!
                  <#elseif postsCount gt 50>
                        好!
                  <#elseif postsCount gt 30>
                        OK!
                  <#else>
                        嗯..
                  </#if> 目前共计 ${postsCount} 篇日志。 继续努力。
              </@articleTag>
          </span>
      <@articleTag method="archivesLess">
          <#list archivesLess as archive>
              <div class="collection-title">
                  <<#if (options.next_other_seo!'false')=='true'>h2<#else>h1</#if> class="archive-year" id="archive-year-${archive.year}">${archive.year}</<#if (options.next_other_seo!'false')=='true'>h2<#else>h1</#if>>
              </div>
              <@post_collapase archive.posts></@post_collapase>
          </#list>
      </@articleTag>
  </div>
  </div>
    <#--<#include "layout/_partials/pagination.ftl">-->
</@main>

<@sidebar>
<@sidebar_template is_post=false></@sidebar_template>
</@sidebar>

<@footer>

</@footer>

<@button>

</@button>
