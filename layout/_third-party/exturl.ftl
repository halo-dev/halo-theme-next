{% if theme.exturl %}
  <script type="text/javascript" src="{{ url_for(theme.js) }}/src/exturl.js?v=${options.next-version!}"></script>
{% endif %}
