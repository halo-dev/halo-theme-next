<div class="copyright">
    <#assign current="${.now}">
    &copy; <#if options.next_general_footer_since?if_exists!='' && options.next_general_footer_since?if_exists !=current?substring(0,4)>${options.next_general_footer_since?if_exists} &mdash;</#if>
    <span itemprop="copyrightYear">${current?substring(0,4)}</span>
    <span class="with-love">
    <i class="fa fa-${options.next_general_footer_icon?if_exists}"></i>
  </span>
    <span class="author" itemprop="copyrightHolder">{{ theme.footer.copyright || config.author }}</span>
    {% if theme.post_wordcount.totalcount %}
    <span class="post-meta-divider">|</span>
    <span class="post-meta-item-icon">
      <i class="fa fa-area-chart"></i>
    </span>
    {% if theme.post_wordcount.item_text %}
    <span class="post-meta-item-text">Site words total count&#58;</span>
    {% endif %}
    <span title="Site words total count">
        {{ totalcount(site, '0,0.0a') }}
    </span>
    {% endif %}
</div>

<#if options.next_general_footer_powered?default('true')=='true'>
  <div class="powered-by">
      由 <a class="theme-link" target="_blank" href="https://github.com/ruibaby/halo">Halo</a> 强力驱动
  </div>
</#if>

<#if options.next_general_footer_powered?default('true')=='true' && options.next_general_footer_theme_enable?default('true')=='true'>
    <span class="post-meta-divider">|</span>
</#if>

<#if options.next_general_footer_theme_enable?default('true')=='true'>
  <div class="theme-info">
      主题 -
      <a class="theme-link" target="_blank" href="https://github.com/iissnan/hexo-theme-next">
          NexT.${options.next_general_scheme?default("Muse")}
      </a><#if options.next_general_footer_theme_version?default('true')=='true'>
      v5.1.4</#if>
  </div>
</#if>

{% if theme.footer.custom_text %}
  <div class="footer-custom">
      {{ theme.footer.custom_text }}
  </div>
{% endif %}
