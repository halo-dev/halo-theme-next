<#macro post_collapase posts>
    <#if posts?? && posts?size gt 0>
    <#list posts as post>
        <article class="post post-type-normal" itemscope itemtype="http://schema.org/Article">
            <header class="post-header">
            <<#if settings.seo!false>h2<#else>h1</#if> class="post-title">
                <a class="post-title-link" href="${post.fullPath!}" itemprop="url">
                    <span itemprop="name">${post.title!}</span>
                </a>
            </<#if settings.seo!false>h2<#else>h1</#if>>
            <div class="post-meta">
                <time class="post-time" itemprop="dateCreated" datetime="${post.createTime}" content="${post.createTime?string("yyyy-MM-dd")}">
                ${post.createTime?string("MM-dd")}
                </time>
            </div>
            </header>
        </article>
    </#list>
    </#if>
</#macro>
