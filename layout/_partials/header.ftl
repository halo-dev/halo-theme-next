<div class="site-brand-wrapper">
  <div class="site-meta <#if options.next_style_custom_logo_enable?default('false')=='true'>custom-logo</#if>">
    <#if options.next_style_custom_logo_enable?default('false')=='true' && options.next_general_scheme?default('Muse')=='Muse'>
      <div class="site-meta-headline">
        <a>
          <img class="custom-logo-image" src="${options.next_style_custom_logo_image?if_exists}"
               alt="${options.blog_title?if_exists}"/>
        </a>
      </div>
    </#if>

    <div class="custom-logo-site-title">
      <a href="/"  class="brand" rel="start">
        <span class="logo-line-before"><i></i></span>
        <span class="site-title">${options.blog_title?default("NexT Theme")}</span>
        <span class="logo-line-after"><i></i></span>
      </a>
    </div>
      <#if options.next_other_seo?default('false')=='true'>
        <h1 class="site-subtitle" itemprop="description">{{ config.subtitle }}</h1>
      <#else>
        <p class="site-subtitle">{{ config.subtitle }}</p>
      </#if>
  </div>

  <div class="site-nav-toggle">
    <button>
      <span class="btn-bar"></span>
      <span class="btn-bar"></span>
      <span class="btn-bar"></span>
    </button>
  </div>
</div>

<nav class="site-nav">
    <ul id="menu" class="menu">
      <@commonTag method="menus">
      <#list menus?sort_by('menuSort') as menu>
        <li class="menu-item menu-item-${menu.menuUrl}">
          <a href="${menu.menuUrl}" rel="section">
            <#if menu.menuIcon!=''>
              <i class="menu-item-icon fa fa-fw fa-${menu.menuIcon}"></i> <br />
            </#if>
            ${menu.menuName}
          </a>
        </li>
      </#list>
      </@commonTag>
        <#if options.next_search_swiftype?if_exists!='' || options.next_search_algolia_search_enable?default('false')=='true' || options.next_search_local_search_enable?default('false')=='true'>
        <li class="menu-item menu-item-search">
            <#if options.next_search_swiftype?if_exists!=''>
            <a href="javascript:;" class="st-search-show-outputs">
            <#elseif options.next_search_local_search_enable?default('false')=='true' || options.next_search_algolia_search_enable?default('false')=='true'>
            <a href="javascript:;" class="popup-trigger">
            </#if>
            <i class="menu-item-icon fa fa-search fa-fw"></i> <br />
            {{ __('menu.search') }}
          </a>
        </li>
        </#if>
    </ul>

<#if options.next_search_swiftype?if_exists!='' || options.next_search_algolia_search_enable?default('false')=='true' || options.next_search_local_search_enable?default('false')=='true'>
    <div class="site-search">
      <#include "search.ftl">
    </div>
</#if>
</nav>

<#include "../_custom/header.ftl">
