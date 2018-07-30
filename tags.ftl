{% extends '_layout.swig' %}
<#include "layout/_layout.ftl">
{% import '_macro/post-collapse.swig' as post_template %}
{% import '_macro/sidebar.swig' as sidebar_template %}

<@html title='${options.blog_title?default("NexT")}'>

</@html>
<@main>
<div class="post-block tag">

    <div id="posts" class="posts-collapse">
        <div class="collection-title">
            <<#if options.next_other_seo?default('false')=='true'>h2<#else>h1</#if>>
                {{ page.tag }}
                <small>{{  __('title.tag')  }}</small>
            </<#if options.next_other_seo?default('false')=='true'>h2<#else>h1</#if>>
        </div>

        {% for post in page.posts %}
        {{ post_template.render(post) }}
        {% endfor %}
    </div>

</div>

  <#include "layout/_partials/pagination.ftl">
</@main>

<@sidebar>
    {% block sidebar %}
    {{ sidebar_template.render(false) }}
  {% endblock %}
</@sidebar>

<@footer>

</@footer>

<@button>

</@button>