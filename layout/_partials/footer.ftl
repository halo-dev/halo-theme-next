<div class="copyright">{#
#}{% set current = date(Date.now(), "YYYY") %}{#
#}&copy; {% if theme.footer.since and theme.footer.since != current %}{{ theme.footer.since }} &mdash; {% endif %}{#
#}<span itemprop="copyrightYear">{{ current }}</span>
  <span class="with-love">
    <i class="fa fa-{{ theme.footer.icon }}"></i>
  </span>
  <span class="author" itemprop="copyrightHolder">{{ theme.footer.copyright || config.author }}</span>

  {% if theme.post_wordcount.totalcount %}
    <span class="post-meta-divider">|</span>
    <span class="post-meta-item-icon">
      <i class="fa fa-area-chart"></i>
    </span>
    {% if theme.post_wordcount.item_text %}
      <span class="post-meta-item-text">{{ __('post.totalcount') }}&#58;</span>
    {% endif %}
    <span title="{{ __('post.totalcount') }}">{#
    #}{{ totalcount(site, '0,0.0a') }}{#
  #}</span>
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
      </a><#if options.next_general_footer_theme_version?default('true')=='true'>v${options.next-version?default('5.1.4')}</#if>
  </div>
</#if>

{% if theme.footer.custom_text %}
  <div class="footer-custom">{#
  #}{{ theme.footer.custom_text }}{#
#}</div>
{% endif %}
