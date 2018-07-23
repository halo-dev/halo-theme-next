<!DOCTYPE html>

{% set html_class = 'theme-next ' + theme.scheme %}
{% if theme.motion.enable %}
  {% set html_class = html_class + ' use-motion' %}
{% endif %}

<html class="{{ html_class | lower }}" lang="{{ config.language }}">
<head>
  <#include "_partials/head.ftl">
  <title>{% block title %}{% endblock %}</title>
  <#include "_third-party/analytics/index.ftl">
</head>

<body itemscope itemtype="http://schema.org/WebPage" lang="{{ page.lang || page.language || config.language }}">

  {% set container_class = "container " %}
  {% if theme.sidebar.position %}
    {% set container_class = container_class + 'sidebar-position-' + theme.sidebar.position %}
  {% endif %}

  <div class="{{ container_class }} {% block page_class %}{% endblock %}">
    <div class="headband"></div>

    <header id="header" class="header" itemscope itemtype="http://schema.org/WPHeader">
      <div class="header-inner"><#include "_partials/header.ftl"></div>
    </header>

    <main id="main" class="main">
      <div class="main-inner">
        <div class="content-wrap">
          <div id="content" class="content">
            {% block content %}{% endblock %}
          </div>
            <#include "_third-party/duoshuo-hot-articles.ftl">
            <#include "_partials/comments.ftl">
        </div>
        {% if theme.sidebar.display !== 'remove' %}
          {% block sidebar %}{% endblock %}
        {% endif %}
      </div>
    </main>

    <footer id="footer" class="footer">
      <div class="footer-inner">
          <#include "_partials/footer.ftl">
          <#include "_third-party/analytics/analytics-with-widget.ftl">
        {% block footer %}{% endblock %}
      </div>
    </footer>

    {% if not theme.sidebar.b2t %}
      <div class="back-to-top">
        <i class="fa fa-arrow-up"></i>
        {% if theme.sidebar.scrollpercent %}
          <span id="scrollpercent"><span>0</span>%</span>
        {% endif %}
      </div>
    {% endif %}

    {% if theme.needmoreshare2.enable and theme.needmoreshare2.float.enable %}
      <div id="needsharebutton-float">
        <span class="btn">
          <i class="fa fa-share-alt" aria-hidden="true"></i>
        </span>
      </div>
    {% endif %}

  </div>

  <#include "_scripts/vendors.ftl">
  <#include "_scripts/commons.ftl">

  {% set scheme_script = '_scripts/schemes/' + theme.scheme | lower + '.swig' %}
  {% include scheme_script %}

  {% block script_extra %}{% endblock %}

  <#include "_scripts/boostrap.ftl">

  <#include "_third-party/comments/index.ftl">
  <#include "_third-party/search/index.ftl">
  <#include "_third-party/analytics/lean-analytics.ftl">
  <#include "_third-party/analytics/firestore.ftl">
  <#include "_third-party/seo/baidu-push.ftl">
  <#include "_third-party/needsharebutton.ftl">
  <#include "_third-party/rating.ftl">
  <#include "_third-party/mathjax.ftl">
  <#include "_third-party/scroll-cookie.ftl">
  <#include "_third-party/exturl.ftl">
</body>
</html>
