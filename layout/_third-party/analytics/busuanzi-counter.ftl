<#if options.next_other_busuanzi_count_enable?default('false')=='true'>
<div class="busuanzi-count">
  <script async src="https://dn-lbstatics.qbox.me/busuanzi/2.3/busuanzi.pure.mini.js"></script>

  <#if options.next_other_busuanzi_count_site_uv?default('true')=='true'>
    <span class="site-uv">
      ${options.next_other_busuanzi_count_site_uv_header?default('<i class="fa fa-user"></i>')}
      <span class="busuanzi-value" id="busuanzi_value_site_uv"></span>
      ${options.next_other_busuanzi_count_site_uv_footer?if_exists}
    </span>
  </#if>

  <#if options.next_other_busuanzi_count_site_pv?default('true')=='true'>
    <span class="site-pv">
      {{ theme.busuanzi_count.site_pv_header }}
      ${options.next_other_busuanzi_count_site_pv_header?default('<i class="fa fa-eye"></i>')}
      <span class="busuanzi-value" id="busuanzi_value_site_pv"></span>
      ${options.next_other_busuanzi_count_site_pv_footer?if_exists}
    </span>
  </#if>
</div>
</#if>
