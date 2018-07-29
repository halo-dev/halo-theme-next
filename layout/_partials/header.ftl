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
  {% set hasSearch = theme.swiftype_key || theme.algolia_search.enable || theme.tinysou_Key || theme.local_search.enable %}

  {% if theme.menu %}
    <ul id="menu" class="menu">
      {% for name, path in theme.menu %}
        {% set itemName = name.toLowerCase() %}
        <li class="menu-item menu-item-{{ itemName | replace(' ', '-') }}">
          <a href="{{ url_for(path.split('||')[0]) | trim }}" rel="section">
            {% if theme.menu_icons.enable %}
              <i class="menu-item-icon fa fa-fw fa-{{ path.split('||')[1] | trim | default('question-circle') }}"></i> <br />
            {% endif %}
            {{ __('menu.' + name) | replace('menu.', '') }}
          </a>
        </li>
      {% endfor %}

      {% if hasSearch %}
        <li class="menu-item menu-item-search">
          {% if theme.swiftype_key %}
            <a href="javascript:;" class="st-search-show-outputs">
          {% elseif theme.local_search.enable || theme.algolia_search.enable %}
            <a href="javascript:;" class="popup-trigger">
          {% endif %}
            {% if theme.menu_icons.enable %}
              <i class="menu-item-icon fa fa-search fa-fw"></i> <br />
            {% endif %}
            {{ __('menu.search') }}
          </a>
        </li>
      {% endif %}
    </ul>
  {% endif %}

  {% if hasSearch %}
    <div class="site-search">
      <#include "search.ftl">
    </div>
  {% endif %}
</nav>

<#include "../_custom/header.ftl">
