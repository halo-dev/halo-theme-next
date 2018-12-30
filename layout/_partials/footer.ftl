<div class="copyright">
    <#assign current="${.now}">
    &copy; <#if options.next_general_footer_since?? && options.next_general_footer_since?if_exists !=current?substring(0,4)>${options.next_general_footer_since?if_exists} &mdash;</#if>
    <span itemprop="copyrightYear">${current?substring(0,4)}</span>
    <span class="with-love">
    <i class="fa fa-${options.next_general_footer_icon!'user'}"></i>
    </span>
    <span class="author" itemprop="copyrightHolder">
    <#if options.next_general_footer_copyright??>
        ${options.next_general_footer_copyright}
    <#else>
    ${user.userDisplayName!}
    </#if>
    </span>
</div>

<#if (options.next_general_footer_powered!'true')=='true'>
  <div class="powered-by">
      由 <a class="theme-link" target="_blank" href="https://github.com/ruibaby/halo">Halo</a> 强力驱动
  </div>
</#if>

<#if (options.next_general_footer_powered!'true')=='true' && (options.next_general_footer_theme_enable!'true')=='true'>
    <span class="post-meta-divider">|</span>
</#if>

<#if (options.next_general_footer_theme_enable!'true')=='true'>
  <div class="theme-info">
      主题 -
      <a class="theme-link" target="_blank" href="https://github.com/iissnan/hexo-theme-next">
          NexT.${options.next_general_scheme!'Muse'}
      </a><#if (options.next_general_footer_theme_version!'true')=='true'>
      v5.1.4</#if>
  </div>
</#if>

<div class="footer-custom">
  <@footer_info></@footer_info>
</div>

