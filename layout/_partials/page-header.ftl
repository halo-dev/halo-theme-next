<#macro page_header title>
<header class="post-header">

	<<#if settings.seo!false>h2<#else>h1</#if> class="post-title" itemprop="name headline">${title}</<#if settings.seo!false>h2<#else>h1</#if>>

	<div class="post-meta">
		<div class="post-description"></div>
	</div>
</header>
</#macro>
