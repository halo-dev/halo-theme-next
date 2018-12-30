<#macro page_header title>
<header class="post-header">

	<<#if (options.next_other_seo!'false')=='true'>h2<#else>h1</#if> class="post-title" itemprop="name headline">${title}</<#if (options.next_other_seo!'false')=='true'>h2<#else>h1</#if>>

	<div class="post-meta">
		<div class="post-description"></div>
	</div>
</header>
</#macro>
