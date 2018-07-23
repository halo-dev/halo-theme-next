{% if theme.algolia_search.enable %}
  <#include "../_third-party/search/algolia-search/dom.ftl">
{% elseif theme.swiftype_key %}
  <#include "search/swiftype.ftl">
{% elseif theme.tinysou_Key %}
  <#include "search/tinysou.ftl">
{% elseif theme.local_search.enable %}
  <#include "search/localsearch.ftl">
{% endif %}
