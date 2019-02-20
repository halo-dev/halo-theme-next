<#macro sidebar_template is_post>
  <div class="sidebar-toggle">
      <div class="sidebar-toggle-line-wrap">
          <span class="sidebar-toggle-line sidebar-toggle-line-first"></span>
          <span class="sidebar-toggle-line sidebar-toggle-line-middle"></span>
          <span class="sidebar-toggle-line sidebar-toggle-line-last"></span>
      </div>
  </div>

  <aside id="sidebar" class="sidebar">
      <#if (options.next_style_sidebar_onmobile!'false')=='true'>
      <div id="sidebar-dimmer"></div>
      </#if>
      <div class="sidebar-inner">

          <#if is_post && (options.next_style_toc_enable!'true')=='true'>
          <ul class="sidebar-nav motion-element">
              <li class="sidebar-nav-toc sidebar-nav-active" data-target="post-toc-wrap">
                  文章目录
              </li>
              <li class="sidebar-nav-overview" data-target="site-overview-wrap">
                  站点概览
              </li>
          </ul>
          </#if>

          <section class="site-overview-wrap sidebar-panel <#if !is_post || (options.next_style_toc_enable!'true')=='false'>sidebar-panel-active</#if>">
              <div class="site-overview">
                  <div class="site-author motion-element" itemprop="author" itemscope
                       itemtype="http://schema.org/Person">
                      <#if user.userAvatar??>
                      <img class="site-author-image" itemprop="image"
                           src="${user.userAvatar!'/${themeName}/source/images/avatar.gif'}"
                           alt="${user.userDisplayName!}"/>
                      </#if>
                      <p class="site-author-name" itemprop="name">${user.userDisplayName!}</p>
                      <p class="site-description motion-element" itemprop="description">
                          ${user.userDesc!}
                      </p>
                  </div>

                    <nav class="site-state motion-element">
                        <div class="site-state-item site-state-posts">
                            <a href="${options.blog_url!}/archives/">
                            <span class="site-state-item-count"><@articleTag method="postsCount">${postsCount!0}</@articleTag></span>
                            <span class="site-state-item-name">日志</span>
                            </a>
                        </div>

                        <div class="site-state-item site-state-categories">
                            <a href="${options.blog_url!}/categories/">
                            <span class="site-state-item-count"><@commonTag method="categories">${categories?size}</@commonTag></span>
                            <span class="site-state-item-name">分类</span>
                            </a>
                        </div>

                        <div class="site-state-item site-state-tags">
                            <a href="${options.blog_url!}/tags/">
                            <span class="site-state-item-count"><@commonTag method="tags">${tags?size}</@commonTag></span>
                            <span class="site-state-item-name">标签</span>
                            </a>
                        </div>

                    </nav>

                  <#if (options.next_style_rss!'true') == 'true'>
                  <div class="feed-link motion-element">
                      <a href="${options.blog_url!}/feed.xml" rel="alternate">
                          <i class="fa fa-rss"></i>
                          RSS
                      </a>
                  </div>
                  </#if>

                  <#if (options.next_social_enable!'false')=='true'>
                      <div class="links-of-author motion-element">
                          <#if options.next_social_github??>
                            <span class="links-of-author-item">
                                <a href="${options.next_social_github!}" target="_blank" title="Github">
                                <#if (options.next_social_icon_enable!'true')=='true'>
                                    <i class="fa fa-fw fa-${options.next_social_github_icon!'globe'}"></i>
                                </#if>
                                <#if (options.next_social_icon_only!'false')=='false'>
                                    Github
                                </#if>
                                </a>
                            </span>
                          </#if>
                          <#if options.next_social_email??>
                            <span class="links-of-author-item">
                                <a href="${options.next_social_email}" target="_blank" title="E-mail">
                                <#if options.next_social_icon_enable!'true'=='true'>
                                    <i class="fa fa-fw fa-${options.next_social_email_icon!'globe'}"></i>
                                </#if>
                                <#if (options.next_social_icon_only!'false')=='false'>
                                    E-mail
                                </#if>
                                </a>
                            </span>
                          </#if>
                          <#if options.next_social_google??>
                            <span class="links-of-author-item">
                                <a href="${options.next_social_google}" target="_blank" title="Google Plus">
                                <#if (options.next_social_icon_enable!'true')=='true'>
                                    <i class="fa fa-fw fa-${options.next_social_google_icon!'globe'}"></i>
                                </#if>
                                <#if (options.next_social_icon_only!'false')=='false'>
                                    Google+
                                </#if>
                                </a>
                            </span>
                          </#if>
                          <#if options.next_social_twitter??>
                            <span class="links-of-author-item">
                                <a href="${options.next_social_twitter}" target="_blank" title="Twitter">
                                <#if (options.next_social_icon_enable!'true')=='true'>
                                    <i class="fa fa-fw fa-${options.next_social_twitter_icon!'globe'}"></i>
                                </#if>
                                <#if (options.next_social_icon_only!'false')=='false'>
                                    Twitter
                                </#if>
                                </a>
                            </span>
                          </#if>
                          <#if options.next_social_fb_pager??>
                            <span class="links-of-author-item">
                                <a href="${options.next_social_fb_pager}" target="_blank" title="Facebook Page">
                                <#if (options.next_social_icon_enable!'true')=='true'>
                                    <i class="fa fa-fw fa-${options.next_social_fb_pager_icon!'globe'}"></i>
                                </#if>
                                <#if (options.next_social_icon_only!'false')=='false'>
                                    Facebook
                                </#if>
                                </a>
                            </span>
                          </#if>
                          <#if options.next_social_vk_group??>
                            <span class="links-of-author-item">
                                <a href="${options.next_social_vk_group}" target="_blank" title="VK Group">
                                <#if (options.next_social_icon_enable!'true')=='true'>
                                    <i class="fa fa-fw fa-${options.next_social_vk_group_icon!'globe'}"></i>
                                </#if>
                                <#if (options.next_social_icon_only!'false')=='false'>
                                    VK Group
                                </#if>
                                </a>
                            </span>
                          </#if>
                          <#if options.next_social_stack_over_flow??>
                            <span class="links-of-author-item">
                                <a href="${options.next_social_stack_over_flow}" target="_blank" title="StackOverflow">
                                <#if (options.next_social_icon_enable!'true')=='true'>
                                    <i class="fa fa-fw fa-${options.next_social_stack_over_flow_icon!'globe'}"></i>
                                </#if>
                                <#if (options.next_social_icon_only!'false')=='false'>
                                    StackOverflow
                                </#if>
                                </a>
                            </span>
                          </#if>
                          <#if options.next_social_you_tube??>
                            <span class="links-of-author-item">
                                <a href="${options.next_social_you_tube}" target="_blank" title="YouTube">
                                <#if (options.next_social_icon_enable!'true')=='true'>
                                    <i class="fa fa-fw fa-${options.next_social_you_tube_icon!'globe'}"></i>
                                </#if>
                                <#if (options.next_social_icon_only!'false')=='false'>
                                    YouTube
                                </#if>
                                </a>
                            </span>
                          </#if>
                          <#if options.next_social_instagram??>
                            <span class="links-of-author-item">
                                <a href="${options.next_social_instagram}" target="_blank" title="Instagram">
                                <#if (options.next_social_icon_enable!'true')=='true'>
                                    <i class="fa fa-fw fa-${options.next_social_instagram_icon!'globe'}"></i>
                                </#if>
                                <#if (options.next_social_icon_only!'false')=='false'>
                                    Instagram
                                </#if>
                                </a>
                            </span>
                          </#if>
                          <#if options.next_social_skype??>
                            <span class="links-of-author-item">
                                <a href="${options.next_social_skype}" target="_blank" title="Skype">
                                <#if (options.next_social_icon_enable!'true')=='true'>
                                    <i class="fa fa-fw fa-${options.next_social_skype_icon!'globe'}"></i>
                                </#if>
                                <#if (options.next_social_icon_only!'false')=='false'>
                                    Skype
                                </#if>
                                </a>
                            </span>
                          </#if>
                      </div>
                  </#if>

                  <div class="cc-license motion-element" itemprop="license">
                      <a href="https://creativecommons.org/<#if (options.next_general_creative_commons!'by-nc-sa')=='zero'>publicdomain/zero/1.0<#else>licenses/${options.next_general_creative_commons!'by-nc-sa'}/4.0</#if>/"
                         class="cc-opacity" target="_blank">
                          <img src="/${themeName}/source/images/cc-${options.next_general_creative_commons!'by-nc-sa'}.svg"
                               alt="Creative Commons"/>
                      </a>
                  </div>
                  <@commonTag method="links">
                      <#if links?? && links?size gt 0>
                          <div class="links-of-blogroll motion-element links-of-blogroll-${options.next_general_links_layout!'inline'}">
                              <div class="links-of-blogroll-title">
                                  <i class="fa  fa-fw fa-${options.next_general_links_icon!'link'}"></i>
                                  ${options.next_general_links_title!'Links'}
                              </div>
                              <ul class="links-of-blogroll-list">
                                  <#list links as link>
                                      <li class="links-of-blogroll-item">
                                          <a href="${link.linkUrl!}" title="${link.linkName!}" target="_blank">${link.linkName!}</a>
                                      </li>
                                  </#list>
                              </ul>
                          </div>
                      </#if>
                  </@commonTag>

          <#include "../_custom/sidebar.ftl">
      </div>
      </section>


      <!--noindex-->
      <section class="post-toc-wrap motion-element sidebar-panel sidebar-panel-active">
          <div class="post-toc">
              <div class="post-toc-content"></div>
          </div>
      </section>
      <!--/noindex-->

      <#if (options.next_style_sidebar_b2t!'false')=='true'>
      <div class="back-to-top" style="width: initial">
          <i class="fa fa-arrow-up"></i>
          <#if (options.next_style_sidebar_scrollpercent!'false')=='true'>
          <span id="scrollpercent"><span>0</span>%</span>
          </#if>
      </div>
      </#if>

      </div>
  </aside>
</#macro>
