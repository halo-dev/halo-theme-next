<#macro head title,keywords,desc,ogtype,url>
<meta charset="UTF-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
<#if options.next_general_android_chrome_color??>
<meta name="theme-color" content="${options.next_general_android_chrome_color}">
</#if>

<#if options.next_plugins_pace?default('false')=='true'>
  <script src="/${themeName}/source/lib/pace/pace.min.js?v=1.0.2"></script>
  <link href="/${themeName}/source/lib/pace/${options.next_plugins_pace_theme?default('pace-theme-minimal')}.min.css?v=1.0.2" rel="stylesheet">
</#if>

<#if options.next_plugins_han?default('false')=='true'>
  <link rel="stylesheet" media="all" href="/${themeName}/source/lib/Han/dist/han.min.css?v=3.3">
</#if>


<meta http-equiv="Cache-Control" content="no-transform" />
<meta http-equiv="Cache-Control" content="no-siteapp" />

<@verification />

<#if options.next_plugins_fancybox?default('true')=='true'>
  <link href="/${themeName}/source/lib/fancybox/source/jquery.fancybox.css?v=2.1.5" rel="stylesheet" type="text/css" />
</#if>

<#include "head/external-fonts.ftl">

<link href="/${themeName}/source/lib/font-awesome/css/font-awesome.min.css?v=4.6.2" rel="stylesheet" type="text/css" />

<#switch '${options.next_general_scheme?default("Muse")}'>
<#case 'Muse'>
<link href="/${themeName}/source/css/Muse/main.css?v=5.1.4" rel="stylesheet" type="text/css" />
<#break >
<#case 'Mist'>
<link href="/${themeName}/source/css/Mist/main.css?v=5.1.4" rel="stylesheet" type="text/css" />
<#break >
<#case 'Pisces'>
<link href="/${themeName}/source/css/Pisces/main.css?v=5.1.4" rel="stylesheet" type="text/css" />
<#break >
<#case 'Gemini'>
<link href="/${themeName}/source/css/Gemini/main.css?v=5.1.4" rel="stylesheet" type="text/css" />
<#break >
</#switch>

<#if post??>
<link rel="stylesheet" type="text/css" href="/${themeName}/source/lib/prism/css/prism-${options.next_general_highlight!'Default'}.css" />
<script type="text/javascript" src="/${themeName}/source/lib/prism/js/prism.js"></script>
</#if>

<#if options.next_general_apple_touch_icon?default('/${themeName}/source/images/apple-touch-icon-next.png') !=''>
  <link rel="apple-touch-icon" sizes="180x180" href="${options.next_general_apple_touch_icon?default('/${themeName}/source/images/apple-touch-icon-next.png')}?v=5.1.4">
</#if>
<#if options.next_general_favicon_medium?default('/${themeName}/source/images/favicon-32x32-next.png')!=''>
  <link rel="icon" type="image/png" sizes="32x32" href="${options.next_general_favicon_medium?default('/${themeName}/source/images/favicon-32x32-next.png')}?v=5.1.4">
</#if>
<#if options.next_general_favicon_small?default('/${themeName}/source/images/favicon-16x16-next.png')!=''>
  <link rel="icon" type="image/png" sizes="16x16" href="${options.next_general_favicon_small?default('/${themeName}/source/images/favicon-16x16-next.png')}v=5.1.4">
</#if>
<#if options.next_general_safari_pinned_tab?default('/${themeName}/source/images/logo.svg')!=''>
  <link rel="mask-icon" href="${options.next_general_safari_pinned_tab?default('/${themeName}/source/images/logo.svg')}?v=5.1.4" color="{{ theme.android_chrome_color }}">
</#if>

<#--{% if theme.favicon.android_manifest %}-->
  <#--<link rel="manifest" href="{{ url_for(theme.favicon.android_manifest) }}">-->
<#--{% endif %}-->
<#--{% if theme.favicon.ms_browserconfig %}-->
  <#--<meta name="msapplication-config" content="{{ url_for(theme.favicon.ms_browserconfig) }}" />-->
<#--{% endif %}-->

<meta name="keywords" content="${keywords}" />

<link rel="alternate" href="/feed.xml" title="${options.blog_title?default('NexT')}" type="application/atom+xml" />

<meta name="description" content="${desc}">
<meta property="og:type" content="${ogtype}">
<meta property="og:title" content="${title}">
<meta property="og:url" content="${url}">
<meta property="og:site_name" content="${options.blog_title?default('NexT')}">
<meta property="og:description" content="${desc}">
<meta property="og:locale" content="zh-Hans">
<meta name="twitter:card" content="summary">
<meta name="twitter:title" content="${title}">
<meta name="twitter:description" content="${desc}">

<script type="text/javascript" id="hexo.configurations">
  var NexT = window.NexT || {};
  var CONFIG = {
    root: '/',
    scheme: '${options.next_general_scheme?default('Muse')}',
    version: '5.1.4',
    sidebar: {"position":"${options.next_style_sidebar_position?default('left')}","display":"${options.next_style_sidebar_display?default('post')}","offset":${options.next_general_footer_offset?default('12')},"offset_float":0,"b2t":${options.next_style_sidebar_b2t?default('false')},"scrollpercent":${options.next_style_sidebar_scrollpercent?default('false')},"onmobile":${options.next_style_sidebar_onmobile?default('false')}},
    fancybox: ${options.next_plugins_fancybox?default('true')},
    tabs: true,
    motion: {"enable":${options.next_other_motion_enable?default('true')},"async":${options.next_other_motion_async?default('false')},"transition":{"post_block":"${options.next_other_motion_transition_post_block?default('fadeIn')}","post_header":"${options.next_other_motion_transition_post_header?default('slideDownIn')}","post_body":"${options.next_other_motion_transition_post_body?default('slideDownIn')}","coll_header":"${options.next_other_motion_transition_coll_header?default('slideLeftIn')}","sidebar":"${options.next_other_motion_transition_sidebar?default('slideUpIn')}"}},
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
