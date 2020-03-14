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
            <@tagTag method="list">
                <#if tags?? && tags?size gt 0>
                    <#list tags as tag>
                        <#if (tag.postCount gt 0 && tag.postCount lt 3) || tag.postCount == 0>
                            <a href="${tag.fullPath!}" style="font-size: 12px; color: #ccc">${tag.name}</a>
                        <#elseif tag.postCount gt 3 && tag.postCount lt 6>
                            <a href="${tag.fullPath!}" style="font-size: 13.5px; color: #bcbcbc">${tag.name}</a>
                        <#elseif tag.postCount gt 6 && tag.postCount lt 9>
                            <a href="${tag.fullPath!}" style="font-size: 18px; color: #8e8e8e">${tag.name}</a>
                        <#elseif tag.postCount gt 9 && tag.postCount lt 12>
                            <a href="${tag.fullPath!}" style="font-size: 19.5px; color: #7e7e7e">${tag.name}</a>
                        <#elseif tag.postCount gt 12 && tag.postCount lt 15>
                            <a href="${tag.fullPath!}" style="font-size: 22.5px; color: #5f5f5f">${tag.name}</a>
                        <#elseif tag.postCount gt 15 && tag.postCount lt 18>
                            <a href="${tag.fullPath!}" style="font-size: 24px; color: #4f4f4f">${tag.name}</a>
                        <#elseif tag.postCount gt 18 && tag.postCount lt 21>
                            <a href="${tag.fullPath!}" style="font-size: 25.5px; color: #404040">${tag.name}</a>
                        <#else>
                            <a href="${tag.fullPath!}" style="font-size: 30px; color: #111">${tag.name}</a>
                        </#if>
                    </#list>
                </#if>
            </@tagTag>
        </div>
    </div>
</div>
