<#macro sidebar_template is_post>
  <div class="sidebar-toggle">
      <div class="sidebar-toggle-line-wrap">
          <span class="sidebar-toggle-line sidebar-toggle-line-first"></span>
          <span class="sidebar-toggle-line sidebar-toggle-line-middle"></span>
          <span class="sidebar-toggle-line sidebar-toggle-line-last"></span>
      </div>
  </div>

  <aside id="sidebar" class="sidebar">
      <#if settings.sidebar_onmobile!false>
      <div id="sidebar-dimmer"></div>
      </#if>
      <div class="sidebar-inner">

          <#if is_post && (settings.toc_enable!true)>
              <ul class="sidebar-nav motion-element">
                  <li class="sidebar-nav-toc sidebar-nav-active" data-target="post-toc-wrap">
                      文章目录
                  </li>
                  <li class="sidebar-nav-overview" data-target="site-overview-wrap">
                      站点概览
                  </li>
              </ul>
          </#if>

          <section class="site-overview-wrap sidebar-panel <#if !is_post || (!settings.toc_enable!true)>sidebar-panel-active</#if>">
              <div class="site-overview">
                  <div class="site-author motion-element" itemprop="author" itemscope
                       itemtype="http://schema.org/Person">
                      <#if user.avatar??>
                      <img class="site-author-image" itemprop="image"
                           src="${user.avatar!'${theme_base!}/source/images/avatar.gif'}"
                           alt="${user.nickname!}"/>
                      </#if>
                      <p class="site-author-name" itemprop="name">${user.nickname!}</p>
                      <p class="site-description motion-element" itemprop="description">
                          ${user.description!}
                      </p>
                  </div>

                    <nav class="site-state motion-element">
                        <div class="site-state-item site-state-posts">
                            <a href="${archives_url!}">
                            <span class="site-state-item-count"><@postTag method="count">${count!0}</@postTag></span>
                            <span class="site-state-item-name">日志</span>
                            </a>
                        </div>

                        <div class="site-state-item site-state-categories">
                            <a href="${categories_url!}">
                            <span class="site-state-item-count"><@categoryTag method="count">${count!0}</@categoryTag></span>
                            <span class="site-state-item-name">分类</span>
                            </a>
                        </div>

                        <div class="site-state-item site-state-tags">
                            <a href="${tags_url!}">
                            <span class="site-state-item-count"><@tagTag method="count">${count!0}</@tagTag></span>
                            <span class="site-state-item-name">标签</span>
                            </a>
                        </div>

                    </nav>

                  <#if settings.rss!true>
                  <div class="feed-link motion-element">
                      <a href="${rss_url!}" rel="alternate">
                          <i class="fa fa-rss"></i>
                          RSS
                      </a>
                  </div>
                  </#if>

                  <#if settings.social_enable!false>
                      <div class="links-of-author motion-element">
                          <#if settings.social_github??>
                            <span class="links-of-author-item">
                                <a href="${settings.social_github!}" target="_blank" title="Github">
                                <#if settings.social_icon_enable!true>
                                    <i class="fa fa-fw fa-${settings.social_github_icon!'globe'}"></i>
                                </#if>
                                <#if !settings.social_icon_only!false>
                                    Github
                                </#if>
                                </a>
                            </span>
                          </#if>
                          <#if settings.social_email??>
                            <span class="links-of-author-item">
                                <a href="${settings.social_email!}" target="_blank" title="E-mail">
                                <#if settings.social_icon_enable!true>
                                    <i class="fa fa-fw fa-${settings.social_email_icon!'globe'}"></i>
                                </#if>
                                <#if !settings.social_icon_only!false>
                                    E-mail
                                </#if>
                                </a>
                            </span>
                          </#if>
                          <#if settings.social_google??>
                            <span class="links-of-author-item">
                                <a href="${settings.social_google}" target="_blank" title="Google Plus">
                                <#if settings.social_icon_enable!true>
                                    <i class="fa fa-fw fa-${settings.social_google_icon!'globe'}"></i>
                                </#if>
                                <#if !settings.social_icon_only!false>
                                    Google+
                                </#if>
                                </a>
                            </span>
                          </#if>
                          <#if settings.social_twitter??>
                            <span class="links-of-author-item">
                                <a href="${settings.social_twitter}" target="_blank" title="Twitter">
                                <#if settings.social_icon_enable!true>
                                    <i class="fa fa-fw fa-${settings.social_twitter_icon!'globe'}"></i>
                                </#if>
                                <#if !settings.social_icon_only!false>
                                    Twitter
                                </#if>
                                </a>
                            </span>
                          </#if>
                          <#if settings.social_fb_pager??>
                            <span class="links-of-author-item">
                                <a href="${settings.social_fb_pager}" target="_blank" title="Facebook Page">
                                <#if settings.social_icon_enable!true>
                                    <i class="fa fa-fw fa-${settings.social_fb_pager_icon!'globe'}"></i>
                                </#if>
                                <#if !settings.social_icon_only!false>
                                    Facebook
                                </#if>
                                </a>
                            </span>
                          </#if>
                          <#if settings.social_stack_over_flow??>
                            <span class="links-of-author-item">
                                <a href="${settings.social_stack_over_flow}" target="_blank" title="StackOverflow">
                                <#if settings.social_icon_enable!true>
                                    <i class="fa fa-fw fa-${settings.social_stack_over_flow_icon!'globe'}"></i>
                                </#if>
                                <#if !settings.social_icon_only!false>
                                    StackOverflow
                                </#if>
                                </a>
                            </span>
                          </#if>
                          <#if settings.social_instagram??>
                            <span class="links-of-author-item">
                                <a href="${settings.social_instagram}" target="_blank" title="Instagram">
                                <#if settings.social_icon_enable!true>
                                    <i class="fa fa-fw fa-${settings.social_instagram_icon!'globe'}"></i>
                                </#if>
                                <#if !settings.social_icon_only!false>
                                    Instagram
                                </#if>
                                </a>
                            </span>
                          </#if>
                      </div>
                  </#if>

                  <div class="cc-license motion-element" itemprop="license">
                      <a href="https://creativecommons.org/<#if (settings.creative_commons!'by-nc-sa')=='zero'>publicdomain/zero/1.0<#else>licenses/${settings.creative_commons!'by-nc-sa'}/4.0</#if>/"
                         class="cc-opacity" target="_blank">
                          <img src="${theme_base!}/source/images/cc-${settings.creative_commons!'by-nc-sa'}.svg"
                               alt="Creative Commons"/>
                      </a>
                  </div>
                  <@linkTag method="list">
                      <#if links?? && links?size gt 0>
                          <div class="links-of-blogroll motion-element links-of-blogroll-${settings.links_layout!'inline'}">
                              <div class="links-of-blogroll-title">
                                  <i class="fa  fa-fw fa-${settings.links_icon!'link'}"></i>
                                  ${settings.links_title!'Links'}
                              </div>
                              <ul class="links-of-blogroll-list">
                                  <#list links as link>
                                      <li class="links-of-blogroll-item">
                                          <a href="${link.url!}" title="${link.name!}" target="_blank">${link.name!}</a>
                                      </li>
                                  </#list>
                              </ul>
                          </div>
                      </#if>
                  </@linkTag>

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

      <#if settings.sidebar_b2t!false>
      <div class="back-to-top" style="width: initial">
          <i class="fa fa-arrow-up"></i>
          <#if settings.sidebar_scrollpercent!false>
          <span id="scrollpercent"><span>0</span>%</span>
          </#if>
      </div>
      </#if>

      </div>
  </aside>
</#macro>
