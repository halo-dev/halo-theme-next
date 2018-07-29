<header class="post-header">

	<<#if options.next_other_seo?default('false')=='true'>h2<#else>h1</#if> class="post-title" itemprop="name headline">{{ page.title }}</<#if options.next_other_seo?default('false')=='true'>h2<#else>h1</#if>>

{% if page.description %}
	<div class="post-meta">
		<div class="post-description">{{ page.description }}</div>
	</div>
{% endif %}

</header>
