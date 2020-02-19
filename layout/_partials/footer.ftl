<div class="copyright">
    &copy; <#if settings.footer_since?? && (settings.footer_since!) !='${.now?string("yyyy")}'>${settings.footer_since!} &mdash;</#if>
    <span itemprop="copyrightYear">${.now?string("yyyy")}</span>
    <span class="with-love">
    <i class="fa fa-${settings.footer_icon!'user'}"></i>
    </span>
    <span class="author" itemprop="copyrightHolder">
    <#if settings.footer_copyright??>
        ${settings.footer_copyright}
    <#else>
    ${user.nickname!}
    </#if>
    </span>
</div>

<#if settings.footer_powered!true>
  <div class="powered-by">
      由 <a class="theme-link" target="_blank" href="https://halo.run">Halo</a> 强力驱动
  </div>
</#if>

<#if (settings.footer_powered!true) && (settings.footer_theme_enable!true)>
    <span class="post-meta-divider">|</span>
</#if>

<#if settings.footer_theme_enable!true>
  <div class="theme-info">
      主题 -
      <a class="theme-link" target="_blank" href="https://github.com/iissnan/hexo-theme-next">
          NexT.${settings.scheme!'Muse'}
      </a><#if settings.footer_theme_version!true>
      v5.1.4</#if>
  </div>
</#if>

<div class="footer-custom">
  <@global.footer />
</div>

