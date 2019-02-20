<div class="popup search-popup local-search-popup" style="height: auto">
    <div class="local-search-header clearfix">
        <span class="search-icon">
            <i class="fa fa-search"></i>
        </span>
        <span class="popup-btn-close">
            <i class="fa fa-times-circle"></i>
        </span>
        <div class="local-search-input-wrapper">
            <input autocomplete="off" placeholder="请输入搜索关键字" spellcheck="false" type="text" id="local-search-input">
        </div>
    </div>
    <div id="local-search-result">
        <div class="tag-cloud-tags">
            <@commonTag method="tags">
                <#if tags?? && tags?size gt 0>
                    <#list tags as tag>
                        <#if (tag.posts?size gt 0 && tag.posts?size lt 3) || tag.posts?size == 0>
                            <a href="${options.blog_url!}/tags/${tag.tagUrl}/" style="font-size: 12px; color: #ccc">${tag.tagName}</a>
                        <#elseif tag.posts?size gt 3 && tag.posts?size lt 6>
                            <a href="${options.blog_url!}/tags/${tag.tagUrl}/" style="font-size: 13.5px; color: #bcbcbc">${tag.tagName}</a>
                        <#elseif tag.posts?size gt 6 && tag.posts?size lt 9>
                            <a href="${options.blog_url!}/tags/${tag.tagUrl}/" style="font-size: 18px; color: #8e8e8e">${tag.tagName}</a>
                        <#elseif tag.posts?size gt 9 && tag.posts?size lt 12>
                            <a href="${options.blog_url!}/tags/${tag.tagUrl}/" style="font-size: 19.5px; color: #7e7e7e">${tag.tagName}</a>
                        <#elseif tag.posts?size gt 12 && tag.posts?size lt 15>
                            <a href="${options.blog_url!}/tags/${tag.tagUrl}/" style="font-size: 22.5px; color: #5f5f5f">${tag.tagName}</a>
                        <#elseif tag.posts?size gt 15 && tag.posts?size lt 18>
                            <a href="${options.blog_url!}/tags/${tag.tagUrl}/" style="font-size: 24px; color: #4f4f4f">${tag.tagName}</a>
                        <#elseif tag.posts?size gt 18 && tag.posts?size lt 21>
                            <a href="${options.blog_url!}/tags/${tag.tagUrl}/" style="font-size: 25.5px; color: #404040">${tag.tagName}</a>
                        <#else>
                            <a href="${options.blog_url!}/tags/${tag.tagUrl}/" style="font-size: 30px; color: #111">${tag.tagName}</a>
                        </#if>
                    </#list>
                </#if>
            </@commonTag>
        </div>
    </div>
</div>
