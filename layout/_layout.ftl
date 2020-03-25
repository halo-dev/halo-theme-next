<#include "/common/macro/common_macro.ftl">
<#macro html title,ogtype,url>
<!DOCTYPE html>

<html class="theme-next ${(settings.scheme!'Muse')?lower_case} <#if settings.motion_enable!true>use-motion</#if>" lang="zh-Hans">
<head>
  <#include "_partials/head.ftl">
    <@head title,ogtype,url></@head>
    <title>${title}</title>
</head>

<body itemscope itemtype="http://schema.org/WebPage" lang="zh-Hans">

  <div class="container sidebar-position-${settings.sidebar_position!'left'} <#nested />">
    <div class="headband"></div>

    <header id="header" class="header" itemscope itemtype="http://schema.org/WPHeader">
        <div class="header-inner"><#include "_partials/header.ftl"></div>
    </header>
</#macro>

<#macro main>
    <main id="main" class="main">
      <div class="main-inner">
        <div class="content-wrap">
            <#nested />
        </div>
</#macro>
<#macro sidebar>
    <#if (settings.sidebar_display!'post')!='remove'>
        <#nested />
    </#if>
      </div>
    </main>
</#macro>

<#macro footer>
    <footer id="footer" class="footer">
        <div class="footer-inner">
          <#include "_partials/footer.ftl">
          <#nested />
        </div>
    </footer>
</#macro>

<#macro button>
    <#if !settings.sidebar_b2t!false>
        <div class="back-to-top" style="width: initial">
            <i class="fa fa-arrow-up"></i>
          <#if settings.sidebar_scrollpercent!false>
          <span id="scrollpercent"><span>0</span>%</span>
          </#if>
        </div>
    </#if>

  </div>

    <#include "_scripts/vendors.ftl">
    <#include "_scripts/commons.ftl">

    <#include "../layout/_scripts/schemes/${(settings.scheme!'Muse')?lower_case}.ftl">
    <#nested />
    <#include "_scripts/boostrap.ftl">
    <#include "_third-party/search/index.ftl">
    <#include "_third-party/seo/baidu-push.ftl">
    <#include "_third-party/scroll-cookie.ftl">
    <#include "_third-party/exturl.ftl">
</body>
</html>
</#macro>
