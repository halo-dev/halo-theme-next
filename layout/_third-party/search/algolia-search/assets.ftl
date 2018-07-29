{% if theme.algolia_search.enable %}
  {% set algolia_instant_css = url_for(theme.vendors._internal + '/algolia-instant-search/instantsearch.min.css') %}
  {% if theme.vendors.algolia_instant_css %}
    {% set algolia_instant_css = theme.vendors.algolia_instant_css %}
  {% endif %}
  <link rel="stylesheet" href="{{ algolia_instant_css }}">

  {% set algolia_instant_js = url_for(theme.vendors._internal + '/algolia-instant-search/instantsearch.min.js') %}
  {% if theme.vendors.algolia_instant_js %}
    {% set algolia_instant_js = theme.vendors.algolia_instant_js %}
  {% endif %}
  <script src="{{ algolia_instant_js }}"></script>

  <script src="/next/source/js/src/algolia-search.js?v=5.1.4"></script>
{% endif %}
