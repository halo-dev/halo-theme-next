<#macro post_template post>
<article class="post post-type-normal" itemscope="" itemtype="http://schema.org/Article">
    <div class="post-block">
        <link itemprop="mainEntityOfPage" href="${post.fullPath!}">
        <span hidden="" itemprop="author" itemscope="" itemtype="http://schema.org/Person">
            <meta itemprop="name" content="${user.nickname!}">
            <meta itemprop="description" content="${post.summary!}">
            <meta itemprop="image" content="${user.avatar!}">
        </span>
        <span hidden="" itemprop="publisher" itemscope="" itemtype="http://schema.org/Organization">
            <meta itemprop="name" content="${blog_title!}">
        </span>
        <header class="post-header">
            <<#if settings.seo!false>h2<#else>h1</#if> class="post-title" itemprop="name headline">
                <a class="post-title-link" href="${post.fullPath!}" itemprop="url">${post.title!}</a>
            </<#if settings.seo!false>h2<#else>h1</#if>>
            <div class="post-meta">
                <span class="post-time">
                    <span class="post-meta-item-icon">
                        <i class="fa fa-calendar-o"></i>
                    </span>
                    <span class="post-meta-item-text">发表于</span>
                    <time title="创建于" itemprop="dateCreated datePublished" datetime="${post.createTime}">
                        ${post.createTime?string('yyyy-MM-dd')}
                    </time>
                </span>
                <#if post.categories?? && post.categories?size gt 0>
                    <span class="post-category">
                        <span class="post-meta-divider">|</span>
                        <span class="post-meta-item-icon">
                            <i class="fa fa-folder-o"></i>
                        </span>
                        <span class="post-meta-item-text">分类于</span>
                        <span itemprop="about" itemscope="" itemtype="http://schema.org/Thing">
                            <a href="${post.categories[0].fullPath!}" itemprop="url" rel="index">
                                <span itemprop="name">${post.categories[0].name}</span>
                            </a>
                        </span>
                    </span>
                </#if>
                <span class="post-comments-count">
                    <span class="post-meta-divider">|</span>
                    <span class="post-meta-item-icon">
                        <i class="fa fa-comment-o"></i>
                    </span>
                    <a href="${post.fullPath!}#comments" itemprop="discussionUrl">
                        <span class="valine-comment-count" data-xid="${post.fullPath!}" itemprop="commentsCount">
                            ${post.commentCount!0}
                        </span>
                    </a>
                    <span id="${post.fullPath!}" class="leancloud_visitors" data-flag-title="${post.title!}">
                        <span class="post-meta-divider">|</span>
                        <span class="post-meta-item-icon">
                            <i class="fa fa-eye"></i>
                        </span>
                        <span class="post-meta-item-text">阅读次数 </span>
                        <span class="leancloud-visitors-count">${(post.visits!0)?c}</span>
                    </span>
                </span>
            </div>
        </header>
        <div class="post-body" itemprop="articleBody">
            <#if (is_index??) || (is_search??)>
                ${post.summary}
                <!--noindex-->
                <div class="post-button text-center">
                    <a class="btn" href="${post.fullPath!}" rel="contents">
                        阅读全文 »
                    </a>
                </div>
                <!--/noindex-->
            <#else>
                ${post.formatContent!}
            </#if>
        </div>
        <#if (settings.wechat_subscriber_enable!false) && (!is_index??) && (!is_search??)>
        <div>
            <#include "wechat-subscriber.ftl">
        </div>
        </#if>
        <#if (settings.alipay?? || settings.wechatpay?? || settings.bitcoin??) && (!is_index??) && (!is_search??)>
        <div>
            <#include "reward.ftl">
        </div>
        </#if>
        <#if (settings.post_copyright!true) && (!is_index??) && (!is_search??)>
        <div>
            <#include "post-copyright.ftl">
        </div>
        </#if>
        <footer class="post-footer">
            <div class="post-tags">
                <#if (!is_index??) && (!is_search??)>
                    <#if tags?size gt 0>
                    <#list tags as tag>
                    <a href="${tag.fullPath!}" rel="tag"># ${tag.name}</a>
                    </#list>
                    </#if>
                </#if>
            </div>
            <#if (nextPost?? || prevPost??) && (!is_index??) && (!is_search??)>
            <div class="post-nav">

                <div class="post-nav-next post-nav-item">
                    <#if nextPost??>
                        <a href="${nextPost.fullPath!}" rel="next" title="${nextPost.title}">
                            <i class="fa fa-chevron-left"></i> ${nextPost.title}
                        </a>
                    </#if>
                </div>

                <span class="post-nav-divider"></span>

                <div class="post-nav-prev post-nav-item">
                    <#if prevPost??>
                        <a href="${prevPost.fullPath!}" rel="prev" title="${prevPost.title}">
                            ${prevPost.title} <i class="fa fa-chevron-right"></i>
                        </a>
                    </#if>
                </div>
            </div>
            </#if>
            <#if (is_index??) || (is_search??)>
            <div class="post-eof"></div>
            </#if>
        </footer>
    </div>
</article>
</#macro>

