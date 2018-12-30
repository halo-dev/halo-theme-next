<#include "/common/macro/common_macro.ftl">
<#macro html title,keywords,desc,ogtype,url>
<!DOCTYPE html>

<html class="theme-next ${(options.next_general_scheme!'Muse')?lower_case} <#if (options.next_other_motion_enable!'true')=='true'>use-motion</#if>"
      lang="zh-Hans">
<head>
  <#include "_partials/head.ftl">
    <@head title,keywords,desc,ogtype,url></@head>
    <title>${title}</title>
</head>

<body itemscope itemtype="http://schema.org/WebPage" lang="zh-Hans">

  <div class="container sidebar-position-${options.next_style_sidebar_position!'left'} <#nested />">
    <div class="headband"></div>

    <header id="header" class="header" itemscope itemtype="http://schema.org/WPHeader">
        <div class="header-inner"><#include "_partials/header.ftl"></div>
    </header>
</#macro>

<#macro main useComment>
    <main id="main" class="main">
      <div class="main-inner">
        <div class="content-wrap">
            <div id="content" class="content">
            <#nested />
            </div>
            <#if useComment>
            <#include "_partials/comments.ftl">
            </#if>
        </div>
</#macro>
<#macro sidebar>
    <#if (options.next_style_sidebar_display!'post')!='remove'>
        <#nested />
    </#if>
      </div>
    </main>
</#macro>

<#macro footer>
    <footer id="footer" class="footer">
        <div class="footer-inner">
          <#include "_partials/footer.ftl">
            <@statistics></@statistics>
          <#nested />
        </div>
    </footer>
</#macro>

<#macro button>
    <#if (options.next_style_sidebar_b2t!'false')=='false'>
        <div class="back-to-top" style="width: initial">
            <i class="fa fa-arrow-up"></i>
          <#if (options.next_style_sidebar_scrollpercent!'false')=='true'>
          <span id="scrollpercent"><span>0</span>%</span>
          </#if>
        </div>
    </#if>

  </div>

    <#include "_scripts/vendors.ftl">
    <#include "_scripts/commons.ftl">

    <#include "../layout/_scripts/schemes/${(options.next_general_scheme!'Muse')?lower_case}.ftl">
    <#nested />
    <#include "_scripts/boostrap.ftl">
    <#include "_third-party/search/index.ftl">
    <#include "_third-party/seo/baidu-push.ftl">
    <#include "_third-party/scroll-cookie.ftl">
    <#include "_third-party/exturl.ftl">
</body>
</html>
</#macro>
