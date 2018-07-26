{% extends '_layout.swig' %}
{% import '_macro/post.swig' as post_template %}
{% import '_macro/sidebar.swig' as sidebar_template %}


{% block title %}{{ page.title }} | {{ config.title }}{% endblock %}

{% block page_class %}page-post-detail{% endblock %}


{% block content %}

  <div id="posts" class="posts-expand">
    {{ post_template.render(page) }}

    <div class="post-spread">
      {% if theme.jiathis %}
        <#include "layout/_partials/share/jiathis.ftl">
      {% elseif theme.baidushare %}
        <#include "layout/_partials/share/baidushare.ftl">
      {% elseif theme.add_this_id %}
        <#include "layout/_partials/share/add-this.ftl">
      {% elseif theme.duoshuo_shortname and theme.duoshuo_share %}
        <#include "layout/_partials/share/duoshuo_share.ftl">
      {% endif %}
    </div>
  </div>

{% endblock %}

{% block sidebar %}
  {{ sidebar_template.render(true) }}
{% endblock %}

{% block script_extra %}
<#include "layout/_scripts/pages/post-details.ftl">
{% endblock %}
