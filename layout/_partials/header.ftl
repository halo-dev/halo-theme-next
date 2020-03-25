<div class="site-brand-wrapper">
  <div class="site-meta <#if settings.custom_logo_enable!false>custom-logo</#if>">
    <#if (settings.custom_logo_enable!false) && (settings.scheme!'Muse')=='Muse'>
      <div class="site-meta-headline">
        <a>
          <img class="custom-logo-image" src="${settings.custom_logo_image!}"
               alt="${blog_title!}"/>
        </a>
      </div>
    </#if>

    <div class="custom-logo-site-title">
      <a href="${blog_url!}"  class="brand" rel="start">
        <span class="logo-line-before"><i></i></span>
        <span class="site-title">${blog_title!}</span>
        <span class="logo-line-after"><i></i></span>
      </a>
    </div>
      <#if settings.seo!false>
        <h1 class="site-subtitle" itemprop="description">${settings.subtitle!}</h1>
      <#else>
        <p class="site-subtitle">${settings.subtitle!}</p>
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
      <@menuTag method="list">
      <#if menus?? && menus?size gt 0>
          <#list menus?sort_by('priority') as menu>
            <li class="menu-item menu-item-${menu.url!}">
              <a href="${menu.url!}" rel="section">
                <#if (menu.icon!)!=''>
                  <i class="menu-item-icon fa fa-fw fa-${menu.icon!}"></i> <br />
                </#if>
                ${menu.name!}
              </a>
            </li>
          </#list>
      </#if>
      </@menuTag>
        <#if settings.local_search_enable!false>
        <li class="menu-item menu-item-search">
            <a href="javascript:;" class="popup-trigger">
            <i class="menu-item-icon fa fa-search fa-fw"></i> <br />
            搜索
          </a>
        </li>
        </#if>
    </ul>

<#if settings.local_search_enable!false>
    <div class="site-search">
      <#include "search.ftl">
    </div>
</#if>
</nav>

<#include "../_custom/header.ftl">
