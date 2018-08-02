<#macro head keywords>
<meta charset="UTF-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
<meta name="theme-color" content="{{ theme.android_chrome_color }}">


<#if options.next_plugins_pace?default('false')=='true'>
  <script src="/next/source/lib/pace/pace.min.js?v=1.0.2"></script>
  <link href="/next/source/lib/pace/${options.next_plugins_pace_theme?default('pace-theme-minimal')}.min.css?v=1.0.2" rel="stylesheet">
</#if>

<#if options.next_plugins_han?default('false')=='true'>
  <link rel="stylesheet" media="all" href="/next/source/lib/Han/dist/han.min.css?v=3.3">
</#if>


<meta http-equiv="Cache-Control" content="no-transform" />
<meta http-equiv="Cache-Control" content="no-siteapp" />


<#if options.next_verification_google??>
  <meta name="google-site-verification" content="${options.next_verification_google}" />
</#if>

<#if options.next_verification_bing??>
  <meta name="msvalidate.01" content="${options.next_verification_bing}" />
</#if>

<#if options.next_verification_yandex??>
  <meta name="yandex-verification" content="${options.next_verification_yandex}" />
</#if>

<#if options.next_verification_baidu??>
  <meta name="baidu-site-verification" content="${options.next_verification_baidu}" />
</#if>

<#if options.next_verification_qihu??>
  <meta name="360-site-verification" content="${options.next_verification_qihu}" />
</#if>

<#if options.next_plugins_fancybox?default('true')=='true'>
  <link href="/next/source/lib/fancybox/source/jquery.fancybox.css?v=2.1.5" rel="stylesheet" type="text/css" />
</#if>

<#include "head/external-fonts.ftl">

<link href="/next/source/lib/font-awesome/css/font-awesome.min.css?v=4.6.2" rel="stylesheet" type="text/css" />

<#switch '${options.next_general_scheme?default("Muse")}'>
<#case 'Muse'>
<link href="/next/source/css/Muse.css?v=5.1.4" rel="stylesheet" type="text/css" />
<#break >
<#case 'Mist'>
<link href="/next/source/css/Mist.css?v=5.1.4" rel="stylesheet" type="text/css" />
<#break >
<#case 'Mist'>
<link href="/next/source/css/Pisces.css?v=5.1.4" rel="stylesheet" type="text/css" />
<#break >
<#case 'Mist'>
<link href="/next/source/css/Gemini.css?v=5.1.4" rel="stylesheet" type="text/css" />
<#break >
</#switch>

<#if options.next_general_apple_touch_icon?default('/next/source/images/apple-touch-icon-next.png') !=''>
  <link rel="apple-touch-icon" sizes="180x180" href="${options.next_general_apple_touch_icon?default('/next/source/images/apple-touch-icon-next.png')}?v=5.1.4">
</#if>
<#if options.next_general_favicon_medium?default('/next/source/images/favicon-32x32-next.png')!=''>
  <link rel="icon" type="image/png" sizes="32x32" href="${options.next_general_favicon_medium?default('/next/source/images/favicon-32x32-next.png')}?v=5.1.4">
</#if>
<#if options.next_general_favicon_small?default('/next/source/images/favicon-16x16-next.png')!=''>
  <link rel="icon" type="image/png" sizes="16x16" href="${options.next_general_favicon_small?default('/next/source/images/favicon-16x16-next.png')}v=5.1.4">
</#if>
<#if options.next_general_safari_pinned_tab?default('/next/source/images/logo.svg')!=''>
  <link rel="mask-icon" href="${options.next_general_safari_pinned_tab?default('/next/source/images/logo.svg')}?v=5.1.4" color="{{ theme.android_chrome_color }}">
</#if>

<#--{% if theme.favicon.android_manifest %}-->
  <#--<link rel="manifest" href="{{ url_for(theme.favicon.android_manifest) }}">-->
<#--{% endif %}-->
<#--{% if theme.favicon.ms_browserconfig %}-->
  <#--<meta name="msapplication-config" content="{{ url_for(theme.favicon.ms_browserconfig) }}" />-->
<#--{% endif %}-->

<meta name="keywords" content="${keywords}" />

<link rel="alternate" href="/feed.xml" title="${options.blog_title?default('NexT')}" type="application/atom+xml" />

<#if options.next_other_facebook_sdk_enable?default('false')=='true' && options.next_other_facebook_sdk_webmaster?default('true') =='true'>
<meta property="fb:admins" content="${options.next_other_facebook_sdk_fb_admin?if_exists}" />
<meta property="fb:app_id" content="${options.next_other_facebook_sdk_app_id?if_exists}" />
</#if>

<#--{{-->
  <#--open_graph({-->
    <#--twitter_id: theme.twitter,-->
    <#--google_plus: theme.google_plus,-->
    <#--fb_admins: theme.fb_admins,-->
    <#--fb_app_id: theme.fb_app_id-->
  <#--})-->
<#--}}-->

<script type="text/javascript" id="hexo.configurations">
  var NexT = window.NexT || {};
  var CONFIG = {
    root: '/',
    scheme: '${options.next_general_scheme?default('Muse')}',
    version: '5.1.4',
    sidebar: {"position":"${options.next_style_sidebar_position?default('left')}","display":"${options.next_style_sidebar_display?default('post')}","offset":${options.next_general_footer_offset?default('12')},"offset_float":0,"b2t":${options.next_style_sidebar_b2t?default('false')},"scrollpercent":${options.next_style_sidebar_scrollpercent?default('false')},"onmobile":${options.next_style_sidebar_onmobile?default('false')}},
    fancybox: ${options.next_plugins_fancybox?default('true')},
    tabs: true,
    motion: {"enable":${options.next_other_motion_enable?default('false')},"async":${options.next_other_motion_async?default('false')},"transition":{"post_block":"${options.next_other_motion_transition_post_block?default('fadeIn')}","post_header":"${options.next_other_motion_transition_post_header?default('slideDownIn')}","post_body":"${options.next_other_motion_transition_post_body?default('slideDownIn')}","coll_header":"${options.next_other_motion_transition_coll_header?default('slideLeftIn')}","sidebar":"${options.next_other_motion_transition_sidebar?default('slideUpIn')}"}},
    duoshuo: {
      userId: '0',
      author: '博主'
    },
    algolia: {
      applicationID: '0',
      apiKey: '0',
      indexName: '0',
      hits: {},
      labels: {}
    }
  };
</script>


<#if options.next_other_canonical?default('true')=='true'>
  <link rel="canonical" href="${options.blog_url?if_exists}"/>
</#if>

<#include "head/custom-head.ftl">
</#macro>
