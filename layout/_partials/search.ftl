<#if options.next_search_algolia_search_enable?default('false')=='true'>
    <#include "../_third-party/search/algolia-search/dom.ftl">
<#elseif options.next_search_swiftype?if_exists!=''>
    <#include "search/swiftype.ftl">
<#elseif options.next_search_local_search_enable?default('false')=='true'>
    <#include "search/localsearch.ftl">
</#if>
