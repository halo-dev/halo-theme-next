<script type="text/javascript">
  if (Object.prototype.toString.call(window.Promise) !== '[object Function]') {
    window.Promise = null;
  }
</script>

<script type="text/javascript" src="/next/source/lib/jquery/index.js?v=2.1.3"></script>
<script type="text/javascript" src="/next/source/lib/fastclick/lib/fastclick.min.js?v=1.0.6"></script>
<script type="text/javascript" src="/next/source/lib/jquery_lazyload/jquery.lazyload.js?v=1.9.7"></script>
<script type="text/javascript" src="/next/source/lib/velocity/velocity.min.js?v=1.2.1"></script>
<script type="text/javascript" src="/next/source/lib/velocity/velocity.ui.min.js?v=1.2.1"></script>
<#if options.next_plugins_fancybox?default('true')=='true'>
<script type="text/javascript" src="/next/source/lib/fancybox/source/jquery.fancybox.pack.js?v=2.1.5"></script>
</#if>

<#if options.next_other_canvas_nest?default('false')=='true'>
<script type="text/javascript" src="/next/source/lib/canvas-nest/canvas-nest.min.js"></script>
</#if>

<#if options.next_other_three_waves?default('false')=='true'>
<script type="text/javascript" src="/next/source/lib/three/three.min.js"></script>
<script type="text/javascript" src="/next/source/lib/three/three-waves.min.js"></script>
</#if>

<#if options.next_other_canvas_lines?default('false')=='true'>
<script type="text/javascript" src="/next/source/lib/three/three.min.js"></script>
<script type="text/javascript" src="/next/source/lib/three/canvas_lines.min.js"></script>
</#if>

<#if options.next_other_canvas_sphere?default('false')=='true'>
<script type="text/javascript" src="/next/source/lib/three/three.min.js"></script>
<script type="text/javascript" src="/next/source/lib/three/canvas_sphere.min.js"></script>
</#if>

<#if options.next_other_canvas_ribbon_enable?default('false')=='true' && options.next_general_scheme?default('Muse')=='Pisces'>
<script id="ribbon" type="text/javascript" size="${options.next_other_canvas_ribbon_size?default('300')}" alpha="${options.next_other_canvas_ribbon_alpha?default('0.6')}"  zIndex="${options.next_other_canvas_ribbon_zindex?default('-1')}" src="/next/source/lib/canvas-ribbon/canvas-ribbon.js"></script>
</#if>

<#if is_post?? || is_page??>
<script type="text/javascript" src="/next/source/lib/jquery-toc/jquery.toc.min.js"></script>
<script type="text/javascript" src="/next/source/lib/jquery-toc/toc.min.js"></script>
<script>
    $('.post-toc-content').initTOC({
        selector: 'h1, h2, h3, h4, h5, h6',
        scope: '.post-body',
        overwrite: false,
        prefix: 'toc'
    });
</script>
</#if>
