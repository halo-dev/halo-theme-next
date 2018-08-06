<#macro html title,keywords,desc,ogtype,url>
<!DOCTYPE html>

<html class="theme-next ${options.next_general_scheme?default('Muse')?lower_case} <#if options.next_other_motion_enable?default('true')=='true'>use-motion</#if>"
      lang="zh-Hans">
<head>
  <#include "_partials/head.ftl">
    <@head title,keywords,desc,ogtype,url></@head>
    <title>${title}</title>
  <#include "_third-party/analytics/index.ftl">
</head>

<body itemscope itemtype="http://schema.org/WebPage" lang="zh-Hans">

  <div class="container sidebar-position-${options.next_style_sidebar_position?default('left')} <#nested />">
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
            <#include "_third-party/duoshuo-hot-articles.ftl">
            <#if useComment>
            <#include "_partials/comments.ftl">
            </#if>
        </div>
</#macro>
<#macro sidebar>
    <#if options.next_style_sidebar_display?default('post')!='remove'>
        <#nested />
    </#if>
      </div>
    </main>
</#macro>

<#macro footer>
    <footer id="footer" class="footer">
        <div class="footer-inner">
          <#include "_partials/footer.ftl">
          <#include "_third-party/analytics/analytics-with-widget.ftl">
          <#nested />
        </div>
    </footer>
</#macro>

<#macro button>
    <#if options.next_style_sidebar_b2t?default('false')=='false'>
        <div class="back-to-top">
            <i class="fa fa-arrow-up"></i>
          <#if options.next_style_sidebar_scrollpercent?default('false')=='true'>
          <span id="scrollpercent"><span>0</span>%</span>
          </#if>
        </div>
    </#if>

    <#--{% if theme.needmoreshare2.enable and theme.needmoreshare2.float.enable %}-->
      <#--<div id="needsharebutton-float">-->
        <#--<span class="btn">-->
          <#--<i class="fa fa-share-alt" aria-hidden="true"></i>-->
        <#--</span>-->
      <#--</div>-->
    <#--{% endif %}-->

  </div>

    <#include "_scripts/vendors.ftl">
    <#include "_scripts/commons.ftl">

    <#include "../layout/_scripts/schemes/${options.next_general_scheme?default('Muse')?lower_case}.ftl">

<#--{% block script_extra %}{% endblock %}-->
    <#nested />
    <#include "_scripts/boostrap.ftl">

    <#include "_third-party/search/index.ftl">
    <#include "_third-party/analytics/lean-analytics.ftl">
    <#--<#include "_third-party/analytics/firestore.ftl">-->
    <#include "_third-party/seo/baidu-push.ftl">
    <#--<#include "_third-party/needsharebutton.ftl">-->
    <#--<#include "_third-party/rating.ftl">-->
    <#--<#include "_third-party/mathjax.ftl">-->
    <#include "_third-party/scroll-cookie.ftl">
    <#include "_third-party/exturl.ftl">
</body>
</html>
</#macro>
