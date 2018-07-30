<#--{% extends '_layout.swig' %}-->
<#include "layout/_layout.ftl">
{% import '_macro/sidebar.swig' as sidebar_template %}

<@html title='${options.blog_title?default("NexT")}'>
<#--TODO{% block page_class %}{% endblock %}-->
    <#if posts??>page-post-detail</#if>
</@html>

<@main>
<div id="posts" class="posts-expand">
    <div class="post-block page">
      <#include "layout/_partials/page-header.ftl">
        <div class="post-body{% if theme.han %} han-init-context{% endif %}{% if page.direction && page.direction.toLowerCase() === 'rtl' %} rtl{% endif %}">
            {% if page.type === "tags" %}
            <div class="tag-cloud">
                <div class="tag-cloud-title">
                    {{ _p('counter.tag_cloud', site.tags.length) }}
                </div>
                <div class="tag-cloud-tags">
                    {{ tagcloud({min_font: 12, max_font: 30, amount: 300, color: true, start_color: '#ccc', end_color: '#111'}) }}
                </div>
            </div>
            {% elif page.type === 'categories' %}
            <div class="category-all-page">
                <div class="category-all-title">
                    {{ _p('counter.categories', site.categories.length) }}
                </div>
                <div class="category-all">
                    {{ list_categories() }}
                </div>
            </div>
            {% else %}
            {{ page.content }}
            {% endif %}
        </div>
    </div>
</div>
</@main>

<@sidebar>
    {% block sidebar %}
    {{ sidebar_template.render(false) }}
  {% endblock %}
</@sidebar>

<@footer>

</@footer>

<@button>
<#include "layout/_scripts/pages/post-details.ftl">
</@button>
