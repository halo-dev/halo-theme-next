<#macro post_collapase posts>
    <#if posts?? && posts?size gt 0>
    <#list posts as post>
        <article class="post post-type-normal" itemscope itemtype="http://schema.org/Article">
            <header class="post-header">
            <<#if (options.next_other_seo!'false')=='true'>h2<#else>h1</#if> class="post-title">
                <a class="post-title-link" href="${options.blog_url!}/archives/${post.postUrl}" itemprop="url">
                    <span itemprop="name">${post.postTitle}</span>
                </a>
            </<#if (options.next_other_seo!'false')=='true'>h2<#else>h1</#if>>
            <div class="post-meta">
                <time class="post-time" itemprop="dateCreated" datetime="${post.postDate}" content="${post.postDate?string("yyyy-MM-dd")}">
                ${post.postDate?string("MM-dd")}
                </time>
            </div>
            </header>
        </article>
    </#list>
    </#if>
</#macro>
