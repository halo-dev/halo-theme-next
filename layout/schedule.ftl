{% extends '_layout.swig' %}
{% import '_macro/sidebar.swig' as sidebar_template %}

{% block title %}日程表 | {{ config.title }}{% endblock %}

{% block page_class %}page-post-detail page-calendar{% endblock %}

{% block content %}
  <div class="post-block schedule">
    <div id="schedule">
      <ul id="event-list">
      </ul>
    </div>
  </div>
{% endblock %}

{% block sidebar %}
  {{ sidebar_template.render(false) }}
{% endblock %}
