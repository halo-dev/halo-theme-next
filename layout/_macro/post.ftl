<#macro post_template post>
<article class="post post-type-normal" itemscope="" itemtype="http://schema.org/Article">
    <div class="post-block">
        <link itemprop="mainEntityOfPage" href="${options.blog_url!}/archives/${post.postUrl}">
        <span hidden="" itemprop="author" itemscope="" itemtype="http://schema.org/Person">
            <meta itemprop="name" content="${user.userDisplayName!}">
            <meta itemprop="description" content="${post.postSummary!}">
            <meta itemprop="image" content="${user.userAvatar!}">
        </span>
        <span hidden="" itemprop="publisher" itemscope="" itemtype="http://schema.org/Organization">
            <meta itemprop="name" content="${options.blog_title!}">
        </span>
        <header class="post-header">
            <<#if (options.next_other_seo!'false')=='true'>h2<#else>h1</#if> class="post-title" itemprop="name headline">
                <a class="post-title-link" href="${options.blog_url!}/archives/${post.postUrl}" itemprop="url">${post.postTitle}</a>
            </<#if (options.next_other_seo!'false')=='true'>h2<#else>h1</#if>>
            <div class="post-meta">
                <span class="post-time">
                    <span class="post-meta-item-icon">
                        <i class="fa fa-calendar-o"></i>
                    </span>
                    <span class="post-meta-item-text">发表于</span>
                    <time title="创建于" itemprop="dateCreated datePublished" datetime="${post.postDate}">
                        ${post.postDate?string('yyyy-MM-dd')}
                    </time>
                </span>
                <span class="post-category">
                    <span class="post-meta-divider">|</span>
                    <span class="post-meta-item-icon">
                        <i class="fa fa-folder-o"></i>
                    </span>
                    <span class="post-meta-item-text">分类于</span>
                    <span itemprop="about" itemscope="" itemtype="http://schema.org/Thing">
                        <#if post.categories?? && post.categories?size gt 0>
                            <a href="${options.blog_url!}/categories/${post.categories[0].cateUrl}/" itemprop="url" rel="index">
                                <span itemprop="name">${post.categories[0].cateName}</span>
                            </a>
                        </#if>
                    </span>
                </span>
                <span class="post-comments-count">
                    <span class="post-meta-divider">|</span>
                    <span class="post-meta-item-icon">
                        <i class="fa fa-comment-o"></i>
                    </span>
                    <a href="${options.blog_url!}/archives/${post.postUrl}#comments" itemprop="discussionUrl">
                        <span class="valine-comment-count" data-xid="${options.blog_url!}/archives/${post.postUrl}/" itemprop="commentsCount">${post.comments?size}</span>
                    </a>
                    <span id="${options.blog_url!}/archives/${post.postUrl}/" class="leancloud_visitors" data-flag-title="${post.postTitle}">
                        <span class="post-meta-divider">|</span>
                        <span class="post-meta-item-icon">
                            <i class="fa fa-eye"></i>
                        </span>
                        <span class="post-meta-item-text">阅读次数 </span>
                        <span class="leancloud-visitors-count">${(post.postViews!0)?c}</span>
                    </span>
                </span>
            </div>
        </header>
        <div class="post-body" itemprop="articleBody">
            <#if is_index?? || is_search??>
                ${post.postSummary}
                <!--noindex-->
                <div class="post-button text-center">
                    <a class="btn" href="${options.blog_url!}/archives/${post.postUrl}/" rel="contents">
                        阅读全文 »
                    </a>
                </div>
                <!--/noindex-->
            <#else>
                ${post.postContent}
            </#if>
        </div>
        <#if (options.next_general_wechat_subscriber_enable!'false')=='true' && !is_index?? && !is_search??>
        <div>
            <#include "wechat-subscriber.ftl">
        </div>
        </#if>
        <#if (options.next_other_alipay?? || options.next_other_wechatpay?? || options.next_other_bitcoin??) && !is_index?? && !is_search??>
        <div>
            <#include "reward.ftl">
        </div>
        </#if>
        <#if (options.next_other_post_copyright!'true')=='true' && !is_index?? && !is_search??>
        <div>
            <#include "post-copyright.ftl">
        </div>
        </#if>
        <footer class="post-footer">
            <div class="post-tags">
                <#if !is_index?? && !is_search??>
                    <#if post.tags?size gt 0>
                    <#list post.tags as tag>
                    <a href="${options.blog_url!}/tags/${tag.tagUrl}" rel="tag"># ${tag.tagName}</a>
                    </#list>
                    </#if>
                </#if>
            </div>
            <#if (afterPost?? || beforePost??) && !is_index?? && !is_search??>
            <div class="post-nav">

                <div class="post-nav-next post-nav-item">
                    <#if beforePost??>
                    <a href="${options.blog_url!}/archives/${beforePost.postUrl}" rel="next" title="${beforePost.postTitle}">
                        <i class="fa fa-chevron-left"></i> ${beforePost.postTitle}
                    </a>
                    </#if>
                </div>

                <span class="post-nav-divider"></span>

                <div class="post-nav-prev post-nav-item">
                    <#if afterPost??>
                    <a href="${options.blog_url!}/archives/${afterPost.postUrl}" rel="prev" title="${afterPost.postTitle}">
                        ${afterPost.postTitle} <i class="fa fa-chevron-right"></i>
                    </a>
                    </#if>
                </div>
            </div>
            </#if>
            <#if is_index?? || is_search??>
            <div class="post-eof"></div>
            </#if>
        </footer>
    </div>
</article>
</#macro>

