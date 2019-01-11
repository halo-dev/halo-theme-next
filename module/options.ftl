<#import "/common/macro/theme_option_marco.ftl" as option>
<@option.head />
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-6 themeImg">
            <img src="/${themeDir}/screenshot.png" style="width: 100%;">
        </div>
        <div class="col-md-6 themeSetting">
            <div class="nav-tabs-custom">
                <ul class="nav nav-tabs">
                    <li class="active">
                        <a href="#general" data-toggle="tab">基础设置</a>
                    </li>
                    <li>
                        <a href="#style" data-toggle="tab">样式设置</a>
                    </li>
                    <li>
                        <a href="#other" data-toggle="tab">其他设置</a>
                    </li>
                    <li>
                        <a href="#search" data-toggle="tab">搜索设置</a>
                    </li>
                    <li>
                        <a href="#plugins" data-toggle="tab">插件设置</a>
                    </li>
                    <li>
                        <a href="#social" data-toggle="tab">社交设置</a>
                    </li>
                    <li>
                        <a href="#about" data-toggle="tab">关于</a>
                    </li>
                </ul>
                <div class="tab-content">
                    <!-- 社交资料 -->
                    <div class="tab-pane active" id="general">
                        <form method="post" class="form-horizontal" id="nextGeneralOptions">
                            <input type="hidden" name="next-version" value="5.1.4">
                            <div class="box-body">
								<!-- scheme -->
                                <div class="form-group">
                                    <label for="nextGeneralScheme" class="col-sm-4 control-label">主题中主题：</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="nextGeneralScheme" name="next_general_scheme">
                                            <option value="Muse" ${((options.next_general_scheme!'Muse')=='Muse')?string('selected','')}>Muse</option>
                                            <option value="Mist" ${((options.next_general_scheme!)=='Mist')?string('selected','')}>Mist</option>
                                            <option value="Pisces" ${((options.next_general_scheme!)=='Pisces')?string('selected','')}>Pisces</option>
                                            <option value="Gemini" ${((options.next_general_scheme!)=='Gemini')?string('selected','')}>Gemini</option>
                                        </select>
                                    </div>
                                </div>
                                <!-- Favicon-Small -->
                                <div class="form-group">
                                    <label for="nextGeneralFaviconSmall" class="col-sm-4 control-label">Favicon（小）：</label>
                                    <div class="col-sm-8">
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="nextGeneralFaviconSmall" name="next_general_favicon_small" value="${options.next_general_favicon_small!}" >
                                            <span class="input-group-btn">
                                                <button class="btn btn-default btn-flat" type="button" onclick="openAttach('nextGeneralFaviconSmall')">选择</button>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <!-- Favicon-medium -->
                                <div class="form-group">
                                    <label for="nextGeneralFaviconMedium" class="col-sm-4 control-label">Favicon（中）：</label>
                                    <div class="col-sm-8">
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="nextGeneralFaviconMedium" name="next_general_favicon_medium" value="${options.next_general_favicon_medium!}" >
                                            <span class="input-group-btn">
                                                <button class="btn btn-default btn-flat" type="button" onclick="openAttach('nextGeneralFaviconMedium')">选择</button>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <!-- apple_touch_icon -->
                                <div class="form-group">
                                    <label for="nextGeneralAppleTouchIcon" class="col-sm-4 control-label">iOS快捷键图标：</label>
                                    <div class="col-sm-8">
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="nextGeneralAppleTouchIcon" name="next_general_apple_touch_icon" value="${options.next_general_apple_touch_icon!}" >
                                            <span class="input-group-btn">
                                                <button class="btn btn-default btn-flat" type="button" onclick="openAttach('nextGeneralAppleTouchIcon')">选择</button>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <!-- safari_pinned_tab -->
                                <div class="form-group">
                                    <label for="nextGeneralSafariPinnedTab" class="col-sm-4 control-label">Safari图标：</label>
                                    <div class="col-sm-8">
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="nextGeneralSafariPinnedTab" name="next_general_safari_pinned_tab" value="${options.next_general_safari_pinned_tab!}" >
                                            <span class="input-group-btn">
                                                <button class="btn btn-default btn-flat" type="button" onclick="openAttach('nextGeneralSafariPinnedTab')">选择</button>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextGeneralAndroidChromeColor" class="col-sm-4 control-label">Chrome顶部颜色：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextGeneralAndroidChromeColor" name="next_general_android_chrome_color" value="${options.next_general_android_chrome_color!}" >
                                    </div>
                                </div>
                                <!-- subtitle -->
                                <div class="form-group">
                                    <label for="nextGeneralSubtitle" class="col-sm-4 control-label">网站副标题：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextGeneralSubtitle" name="next_general_subtitle" value="${options.next_general_subtitle!}" >
                                    </div>
                                </div>
                                <!-- Footer-icon -->
                                <div class="form-group">
                                    <label for="nextGeneralFooterIcon" class="col-sm-4 control-label">页脚图标：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextGeneralFooterIcon" name="next_general_footer_icon" value="${options.next_general_footer_icon!'user'}" >
                                    </div>
                                </div>
                                <!-- Footer-copyright -->
                                <div class="form-group">
                                    <label for="nextGeneralFooterSince" class="col-sm-4 control-label">页脚网站创建年份：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextGeneralFooterSince" name="next_general_footer_since" value="${options.next_general_footer_since!}" >
                                    </div>
                                </div>
                                <!-- Footer-copyright -->
                                <div class="form-group">
                                    <label for="nextGeneralFooterCopyright" class="col-sm-4 control-label">页脚版权：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextGeneralFooterCopyright" name="next_general_footer_copyright" value="${options.next_general_footer_copyright!}" >
                                    </div>
                                </div>
                                <!-- Footer-powered -->
                                <div class="form-group">
                                    <label for="nextGeneralFooterPowered" class="col-sm-4 control-label">是否显示网站程序名称：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_general_footer_powered" id="nextGeneralFooterPowered" value="true" ${((options.next_general_footer_powered!'true')=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_general_footer_powered" id="nextGeneralFooterPowered" value="false" ${((options.next_general_footer_powered!)=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <!-- Footer-theme-enable -->
                                <div class="form-group">
                                    <label for="nextGeneralFooterThemeEnable" class="col-sm-4 control-label">是否显示主题名称：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_general_footer_theme_enable" id="nextGeneralFooterThemeEnable" value="true" ${((options.next_general_footer_theme_enable!'true')=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_general_footer_theme_enable" id="nextGeneralFooterThemeEnable" value="false" ${((options.next_general_footer_theme_enable!)=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <!-- Footer-theme-version -->
                                <div class="form-group">
                                    <label for="nextGeneralFooterThemeVersion" class="col-sm-4 control-label">是否显示主题版本：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_general_footer_theme_version" id="nextGeneralFooterThemeVersion" value="true" ${((options.next_general_footer_theme_version!'true')=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_general_footer_theme_version" id="nextGeneralFooterThemeVersion" value="false" ${((options.next_general_footer_theme_version!)=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <!-- wechat_subscriber_enable -->
                                <div class="form-group">
                                    <label for="nextGeneralWechatSubscriberEnable" class="col-sm-4 control-label">文章底部微信二维码显示：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_general_wechat_subscriber_enable" id="nextGeneralWechatSubscriberEnable" value="true" ${((options.next_general_wechat_subscriber_enable!)=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_general_wechat_subscriber_enable" id="nextGeneralWechatSubscriberEnable" value="false" ${((options.next_general_wechat_subscriber_enable!'false')=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <!-- wechat_subscriber_qcode -->
                                <div class="form-group">
                                    <label for="nextGeneralWechatSubscriberQcode" class="col-sm-4 control-label">文章底部微信二维码：</label>
                                    <div class="col-sm-8">
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="nextGeneralWechatSubscriberQcode" name="next_general_wechat_subscriber_qcode" value="${options.next_general_wechat_subscriber_qcode!}" >
                                            <span class="input-group-btn">
                                                <button class="btn btn-default btn-flat" type="button" onclick="openAttach('nextGeneralWechatSubscriberQcode')">选择</button>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <!-- wechat_subscriber_description -->
                                <div class="form-group">
                                    <label for="nextGeneralWechatSubscriberDescription" class="col-sm-4 control-label">文章底部微信二维码描述：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextGeneralWechatSubscriberDescription" name="next_general_wechat_subscriber_description" value="${options.next_general_wechat_subscriber_description!}" >
                                    </div>
                                </div>
                                <!-- creative_commons -->
                                <div class="form-group">
                                    <label for="nextGeneralCreativeCommons" class="col-sm-4 control-label">文章版权图标：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextGeneralCreativeCommons" name="next_general_creative_commons" value="${options.next_general_creative_commons!'by-nc-sa'}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextGeneralLinksIcon" class="col-sm-4 control-label">友情链接图标：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextGeneralLinksIcon" name="next_general_links_icon" value="${options.next_general_links_icon!'link'}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextGeneralLinksTitle" class="col-sm-4 control-label">友情链接标题：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextGeneralLinksTitle" name="next_general_links_title" value="${options.next_general_links_title!'Links'}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextGeneralLinksLayout" class="col-sm-4 control-label">友情链接样式：</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="nextGeneralLinksLayout" name="next_general_links_layout">
                                            <option value="block" ${((options.next_general_links_layout!)=='block')?string('selected','')}>block</option>
                                            <option value="inline" ${((options.next_general_links_layout!'inline')=='inline')?string('selected','')}>inline</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="box-footer">
                                <button type="button" class="btn btn-primary btn-sm pull-right" onclick="saveThemeOptions('nextGeneralOptions')">保存设置</button>
                            </div>
                        </form>
                    </div>
                    <!--样式设置-->
                    <div class="tab-pane" id="style">
                        <form method="post" class="form-horizontal" id="nextStyleOptions">
                            <div class="box-body">
                                <!-- sidebar-position -->
                                <div class="form-group">
                                    <label for="nextStyleSidebarPosition" class="col-sm-4 control-label">侧栏位置：</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="nextStyleSidebarPosition" name="next_style_sidebar_position">
                                            <option value="left" ${((options.next_style_sidebar_position!'left')=='left')?string('selected','')}>左侧</option>
                                            <option value="right" ${((options.next_style_sidebar_position!)=='right')?string('selected','')}>右侧</option>
                                        </select>
                                    </div>
                                </div>
                                <!-- sidebar-display -->
                                <div class="form-group">
                                    <label for="nextStyleSidebarDisplay" class="col-sm-4 control-label">侧栏显示时机：</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="nextStyleSidebarDisplay" name="next_style_sidebar_display">
                                            <option value="post" ${((options.next_style_sidebar_display!'post')=='post')?string('selected','')}>文章页面</option>
                                            <option value="always" ${((options.next_style_sidebar_display!)=='always')?string('selected','')}>所有页面</option>
                                            <option value="hide" ${((options.next_style_sidebar_display!)=='hide')?string('selected','')}>所有页面中都隐藏</option>
                                            <option value="remove" ${((options.next_style_sidebar_display!)=='remove')?string('selected','')}>完全移除</option>
                                        </select>
                                    </div>
                                </div>
                                <!-- sidebar-offset -->
                                <div class="form-group">
                                    <label for="nextStyleSidebarOffset" class="col-sm-4 control-label">侧栏偏移量：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextStyleSidebarOffset" name="next_general_footer_offset" value="${options.next_general_footer_offset!'12'}" >
                                    </div>
                                </div>
                                <!-- sidebar-b2t -->
                                <div class="form-group">
                                    <label for="nextStyleSidebarB2t" class="col-sm-4 control-label">侧栏返回顶部按钮（仅Pisces | Gemini）：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_style_sidebar_b2t" id="nextStyleSidebarB2t" value="true" ${((options.next_style_sidebar_b2t!)=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_style_sidebar_b2t" id="nextStyleSidebarB2t" value="false" ${((options.next_style_sidebar_b2t!'false')=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <!-- sidebar-Scrollpercent -->
                                <div class="form-group">
                                    <label for="nextStyleSidebarScrollpercent" class="col-sm-4 control-label">页面内容下拉百分比：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_style_sidebar_scrollpercent" id="nextStyleSidebarScrollpercent" value="true" ${((options.next_style_sidebar_scrollpercent!)=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_style_sidebar_scrollpercent" id="nextStyleSidebarScrollpercent" value="false" ${((options.next_style_sidebar_scrollpercent!'false')=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <!-- sidebar-onmobile -->
                                <div class="form-group">
                                    <label for="nextStyleSidebarOnmobile" class="col-sm-4 control-label">Sidebar-onmobile（仅Muse | Mist）：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_style_sidebar_onmobile" id="nextStyleSidebarOnmobile" value="true" ${((options.next_style_sidebar_onmobile!)=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_style_sidebar_onmobile" id="nextStyleSidebarOnmobile" value="false" ${((options.next_style_sidebar_onmobile!'false')=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextStyleCustomLogoEnable" class="col-sm-4 control-label">Logo显示：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_style_custom_logo_enable" id="nextStyleCustomLogoEnable" value="true" ${((options.next_style_custom_logo_enable!)=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_style_custom_logo_enable" id="nextStyleCustomLogoEnable" value="false" ${((options.next_style_custom_logo_enable!'false')=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextStyleCustomLogoImage" class="col-sm-4 control-label">Logo地址：</label>
                                    <div class="col-sm-8">
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="nextStyleCustomLogoImage" name="next_style_custom_logo_image" value="${options.next_style_custom_logo_image!}" >
                                            <span class="input-group-btn">
                                                <button class="btn btn-default btn-flat" type="button" onclick="openAttach('nextStyleCustomLogoImage')">选择</button>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextStyleTocEnable" class="col-sm-4 control-label">文章TOC显示：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_style_toc_enable" id="nextStyleTocEnable" value="true" ${((options.next_style_toc_enable!'true')=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_style_toc_enable" id="nextStyleTocEnable" value="false" ${((options.next_style_toc_enable!)=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <!-- rss -->
                                <div class="form-group">
                                    <label for="nextStyleRss" class="col-sm-4 control-label">侧边栏显示RSS按钮：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_style_rss" id="nextStyleRss" value="true" ${((options.next_style_rss!'true')=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_style_rss" id="nextStyleRss" value="false" ${((options.next_style_rss!)=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextGeneralHighlight" class="col-sm-4 control-label">文章代码高亮主题：</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="casperGeneralCodePretty" name="next_general_highlight">
                                            <option value="Default" ${((options.next_general_highlight!'Default')=='Default')?string('selected','')}>Default</option>
                                            <option value="Coy" ${((options.next_general_highlight!)=='Coy')?string('selected','')}>Coy</option>
                                            <option value="Dark" ${((options.next_general_highlight!)=='Dark')?string('selected','')}>Dark</option>
                                            <option value="Okaidia" ${((options.next_general_highlight!)=='Okaidia')?string('selected','')}>Okaidia</option>
                                            <option value="Solarized Light" ${((options.next_general_highlight!)=='Solarized Light')?string('selected','')}>Solarized Light</option>
                                            <option value="Tomorrow Night" ${((options.next_general_highlight!)=='Tomorrow Night')?string('selected','')}>Tomorrow Night</option>
                                            <option value="Twilight" ${((options.next_general_highlight!)=='Twilight')?string('selected','')}>Twilight</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="box-footer">
                                <button type="button" class="btn btn-primary btn-sm pull-right" onclick="saveThemeOptions('nextStyleOptions')">保存设置</button>
                            </div>
                        </form>
                    </div>
                    <!--其他设置-->
                    <div class="tab-pane" id="other">
                        <form method="post" class="form-horizontal" id="nextOtherOptions">
                            <div class="box-body">
                                <!-- baidu_push -->
                                <div class="form-group">
                                    <label for="nextOtherBaiduPush" class="col-sm-4 control-label">百度自动提交：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_baidu_push" id="nextOtherBaiduPush" value="true" ${((options.next_other_baidu_push!'true')=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_baidu_push" id="nextOtherBaiduPush" value="false" ${((options.next_other_baidu_push!)=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>

                                <!--post_copyright-->
                                <div class="form-group">
                                    <label for="nextOtherPostCopyright" class="col-sm-4 control-label">文章版权信息：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_post_copyright" id="nextOtherPostCopyright" value="true" ${((options.next_other_post_copyright!'true')=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_post_copyright" id="nextOtherPostCopyright" value="false" ${((options.next_other_post_copyright!)=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>

                                <!-- post_copyright_license -->
                                <div class="form-group">
                                    <label for="nextOtherPostCopyrightLicense" class="col-sm-4 control-label">文章版权信息：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextOtherPostCopyrightLicense" name="next_other_post_copyright_license" value="${options.next_other_post_copyright_license!'CC BY-NC-SA 3.0'}" >
                                    </div>
                                </div>

                                <!-- post_copyright_license_url -->
                                <div class="form-group">
                                    <label for="nextOtherPostCopyrightLicenseUrl" class="col-sm-4 control-label">文章版权链接：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextOtherPostCopyrightLicenseUrl" name="next_other_post_copyright_license_url" value="${options.next_other_post_copyright_license_url!'https://creativecommons.org/licenses/by-nc-sa/3.0/'}" >
                                    </div>
                                </div>

                                <!-- canvas_ribbon -->
                                <div class="form-group">
                                    <label for="nextOtherCanvasRibbonEnable" class="col-sm-4 control-label">ribbon特效：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_canvas_ribbon_enable" id="nextOtherCanvasRibbonEnable" value="true" ${((options.next_other_canvas_ribbon_enable!)=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_canvas_ribbon_enable" id="nextOtherCanvasRibbonEnable" value="false" ${((options.next_other_canvas_ribbon_enable!'false')=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextOtherCanvasRibbonSize" class="col-sm-4 control-label">canvas_ribbon大小：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextOtherCanvasRibbonSize" name="next_other_canvas_ribbon_size" value="${options.next_other_canvas_ribbon_size!'300'}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextOtherCanvasRibbonAlpha" class="col-sm-4 control-label">canvas_ribbon_alpha：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextOtherCanvasRibbonAlpha" name="next_other_canvas_ribbon_alpha" value="${options.next_other_canvas_ribbon_alpha!'0.6'}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextOtherCanvasRibbonZindex" class="col-sm-4 control-label">canvas_ribbon_zIndex：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextOtherCanvasRibbonZindex" name="next_other_canvas_ribbon_zindex" value="${options.next_other_canvas_ribbon_zindex!'-1'}" >
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="nextOtherCanvasNest" class="col-sm-4 control-label">canvas_nest特效：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_canvas_nest" id="nextOtherCanvasNest" value="true" ${((options.next_other_canvas_nest!)=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_canvas_nest" id="nextOtherCanvasNest" value="false" ${((options.next_other_canvas_nest!'false')=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="nextOtherThreeWaves" class="col-sm-4 control-label">three_waves特效：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_three_waves" id="nextOtherThreeWaves" value="true" ${((options.next_other_three_waves!)=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_three_waves" id="nextOtherThreeWaves" value="false" ${((options.next_other_three_waves!'false')=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextOtherCanvasLines" class="col-sm-4 control-label">canvas_lines：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_canvas_lines" id="nextOtherCanvasLines" value="true" ${((options.next_other_canvas_lines!)=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_canvas_lines" id="nextOtherCanvasLines" value="false" ${((options.next_other_canvas_lines!'false')=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextOtherCanvasSphere" class="col-sm-4 control-label">canvas_sphere：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_canvas_sphere" id="nextOtherCanvasSphere" value="true" ${((options.next_other_canvas_sphere!)=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_canvas_sphere" id="nextOtherCanvasSphere" value="false" ${((options.next_other_canvas_sphere!'false')=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <!-- motion -->
                                <div class="form-group">
                                    <label for="nextOtherMotionEnable" class="col-sm-4 control-label">motion-enable：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_motion_enable" id="nextOtherMotionEnable" value="true" ${((options.next_other_motion_enable!'true')=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_motion_enable" id="nextOtherMotionEnable" value="false" ${((options.next_other_motion_enable!)=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <!-- motion-async -->
                                <div class="form-group">
                                    <label for="nextOtherMotionAsync" class="col-sm-4 control-label">motion_async：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_motion_async" id="nextOtherMotionAsync" value="true" ${((options.next_other_motion_async!)=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_motion_async" id="nextOtherMotionAsync" value="false" ${((options.next_other_motion_async!'false')=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="nextOtherMotionTransitionPostBlock" class="col-sm-4 control-label">motion.async.transition.post_block：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextOtherMotionTransitionPostBlock" name="next_other_motion_transition_post_block" value="${options.next_other_motion_transition_post_block!'fadeIn'}" >
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="nextOtherMotionTransitionPostHeader" class="col-sm-4 control-label">motion.async.transition.post_header：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextOtherMotionTransitionPostHeader" name="next_other_motion_transition_post_header" value="${options.next_other_motion_transition_post_header!'slideDownIn'}" >
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="nextOtherMotionTransitionPostBody" class="col-sm-4 control-label">motion.async.transition.post_body：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextOtherMotionTransitionPostBody" name="next_other_motion_transition_post_body" value="${options.next_other_motion_transition_post_body!'slideDownIn'}" >
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="nextOtherMotionTransitionCollHeader" class="col-sm-4 control-label">motion.async.transition.coll_header：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextOtherMotionTransitionCollHeader" name="next_other_motion_transition_coll_header" value="${options.next_other_motion_transition_coll_header!'slideLeftIn'}" >
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="nextOtherMotionTransitionSidebar" class="col-sm-4 control-label">motion.async.transition.sidebar：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextOtherMotionTransitionSidebar" name="next_other_motion_transition_sidebar" value="${options.next_other_motion_transition_sidebar!'slideUpIn'}" >
                                    </div>
                                </div>


                                <div class="form-group">
                                    <label for="nextOtherCanonical" class="col-sm-4 control-label">Canonical：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_canonical" id="nextOtherCanonical" value="true" ${((options.next_other_canonical!'true')=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_canonical" id="nextOtherCanonical" value="false" ${((options.next_other_canonical!)=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="nextOtherSeo" class="col-sm-4 control-label">seo：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_seo" id="nextOtherSeo" value="true" ${((options.next_other_seo!)=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_seo" id="nextOtherSeo" value="false" ${((options.next_other_seo!'false')=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="nextOtherRewardComment" class="col-sm-4 control-label">捐赠提示：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextOtherRewardComment" name="next_other_reward_comment" value="${options.next_other_reward_comment!'Donate comment here'}" >
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="nextOtherWechatpay" class="col-sm-4 control-label">微信支付二维码：</label>
                                    <div class="col-sm-8">
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="nextOtherWechatpay" name="next_other_wechatpay" value="${options.next_other_wechatpay!}" >
                                            <span class="input-group-btn">
                                                <button class="btn btn-default btn-flat" type="button" onclick="openAttach('nextOtherWechatpay')">选择</button>
                                            </span>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="nextOtherAlipay" class="col-sm-4 control-label">支付宝二维码：</label>
                                    <div class="col-sm-8">
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="nextOtherAlipay" name="next_other_alipay" value="${options.next_other_alipay!}" >
                                            <span class="input-group-btn">
                                                <button class="btn btn-default btn-flat" type="button" onclick="openAttach('nextOtherAlipay')">选择</button>
                                            </span>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="nextOtherBitcoin" class="col-sm-4 control-label">比特币二维码：</label>
                                    <div class="col-sm-8">
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="nextOtherBitcoin" name="next_other_bitcoin" value="${options.next_other_bitcoin!}" >
                                            <span class="input-group-btn">
                                                <button class="btn btn-default btn-flat" type="button" onclick="openAttach('nextOtherBitcoin')">选择</button>
                                            </span>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="nextOtherBaiduShareType" class="col-sm-4 control-label">百度分享类型：</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="nextOtherBaiduShareType" name="next_other_baidu_share_type">
                                            <option value="" ${((options.next_other_baidu_share_type!'')=='')?string('selected','')}></option>
                                            <option value="button" ${((options.next_other_baidu_share_type!)=='button')?string('selected','')}>按钮</option>
                                            <option value="slide" ${((options.next_other_baidu_share_type!)=='slide')?string('selected','')}>侧边</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="nextOtherJiathisUid" class="col-sm-4 control-label">jiathis_uid：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextOtherJiathisUid" name="next_other_jiathis_uid" value="${options.next_other_jiathis_uid!}" >
                                    </div>
                                </div>


                                <div class="form-group">
                                    <label for="nextOtherAddThisId" class="col-sm-4 control-label">add_this_id：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextOtherAddThisId" name="next_other_add_this_id" value="${options.next_other_add_this_id!}" >
                                    </div>
                                </div>
                            </div>
                            <div class="box-footer">
                                <button type="button" class="btn btn-primary btn-sm pull-right" onclick="saveThemeOptions('nextOtherOptions')">保存设置</button>
                            </div>
                        </form>
                    </div>

                    <!-- 搜索设置 -->
                    <div class="tab-pane" id="search">
                        <form method="post" class="form-horizontal" id="nextSearchOptions">
                            <input type="hidden" name="next-version" value="5.1.4">
                            <div class="box-body">
                                <div class="form-group">
                                    <label for="nextSearchLocalSearchEnable" class="col-sm-4 control-label">菜单搜索按钮：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_search_local_search_enable" id="nextSearchLocalSearchEnable" value="true" ${((options.next_search_local_search_enable!)=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_search_local_search_enable" id="nextSearchLocalSearchEnable" value="false" ${((options.next_search_local_search_enable!'false')=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="box-footer">
                                <button type="button" class="btn btn-primary btn-sm pull-right" onclick="saveThemeOptions('nextSearchOptions')">保存设置</button>
                            </div>
                        </form>
                    </div>

                    <div class="tab-pane" id="plugins">
                        <form method="post" class="form-horizontal" id="nextPluginsOptions">
                            <input type="hidden" name="next-version" value="5.1.4">
                            <div class="box-body">
                                <!--Pace-->
                                <div class="form-group">
                                    <label for="nextPluginsPace" class="col-sm-4 control-label">加载进度条：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_plugins_pace" id="nextPluginsPace" value="true" ${((options.next_plugins_pace!)=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_plugins_pace" id="nextPluginsPace" value="false" ${((options.next_plugins_pace!'false')=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <!-- Pace-theme -->
                                <div class="form-group">
                                    <label for="nextPluginsPaceTheme" class="col-sm-4 control-label">加载进度条主题：</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="nextPluginsPaceTheme" name="next_plugins_pace_theme">
                                            <option value="pace-theme-big-counter" ${((options.next_plugins_pace_theme!)=='pace-theme-big-counter')?string('selected','')}>pace-theme-big-counter</option>
                                            <option value="pace-theme-bounce" ${((options.next_plugins_pace_theme!)=='pace-theme-bounce')?string('selected','')}>pace-theme-bounce</option>
                                            <option value="pace-theme-barber-shop" ${((options.next_plugins_pace_theme!)=='pace-theme-barber-shop')?string('selected','')}>pace-theme-barber-shop</option>
                                            <option value="pace-theme-center-atom" ${((options.next_plugins_pace_theme!)=='pace-theme-center-atom')?string('selected','')}>pace-theme-center-atom</option>
                                            <option value="pace-theme-center-circle" ${((options.next_plugins_pace_theme!)=='pace-theme-center-circle')?string('selected','')}>pace-theme-center-circle</option>
                                            <option value="pace-theme-center-radar" ${((options.next_plugins_pace_theme!)=='pace-theme-center-radar')?string('selected','')}>pace-theme-center-radar</option>
                                            <option value="pace-theme-center-simple" ${((options.next_plugins_pace_theme!)=='pace-theme-center-simple')?string('selected','')}>pace-theme-center-simple</option>
                                            <option value="pace-theme-corner-indicator" ${((options.next_plugins_pace_theme!)=='pace-theme-corner-indicator')?string('selected','')}>pace-theme-corner-indicator</option>
                                            <option value="pace-theme-fill-left" ${((options.next_plugins_pace_theme!)=='pace-theme-fill-left')?string('selected','')}>pace-theme-fill-left</option>
                                            <option value="pace-theme-flash" ${((options.next_plugins_pace_theme!)=='pace-theme-flash')?string('selected','')}>pace-theme-flash</option>
                                            <option value="pace-theme-loading-bar" ${((options.next_plugins_pace_theme!)=='pace-theme-loading-bar')?string('selected','')}>pace-theme-loading-bar</option>
                                            <option value="pace-theme-mac-osx" ${((options.next_plugins_pace_theme!)=='pace-theme-mac-osx')?string('selected','')}>pace-theme-mac-osx</option>
                                            <option value="pace-theme-minimal" ${((options.next_plugins_pace_theme!'pace-theme-minimal')=='pace-theme-minimal')?string('selected','')}>pace-theme-minimal</option>
                                        </select>
                                    </div>
                                </div>
                                <!--Han-->
                                <div class="form-group">
                                    <label for="nextPluginsHan" class="col-sm-4 control-label">汉字标准格式字体：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_plugins_han" id="nextPluginsHan" value="true" ${((options.next_plugins_han!)=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_plugins_han" id="nextPluginsHan" value="false" ${((options.next_plugins_han!'false')=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextPluginsFancybox" class="col-sm-4 control-label">Fancybox：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_plugins_fancybox" id="nextPluginsFancybox" value="true" ${((options.next_plugins_fancybox!'true')=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_plugins_fancybox" id="nextPluginsFancybox" value="false" ${((options.next_plugins_fancybox!)=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextPluginsExturl" class="col-sm-4 control-label">exturl：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_plugins_exturl" id="nextPluginsExturl" value="true" ${((options.next_plugins_exturl!'true')=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_plugins_exturl" id="nextPluginsExturl" value="false" ${((options.next_plugins_exturl!)=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextPluginsSaveScroll" class="col-sm-4 control-label">save_scroll：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_plugins_save_scroll" id="nextPluginsSaveScroll" value="true" ${((options.next_plugins_save_scroll!'true')=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_plugins_save_scroll" id="nextPluginsSaveScroll" value="false" ${((options.next_plugins_save_scroll!)=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="box-footer">
                                <button type="button" class="btn btn-primary btn-sm pull-right" onclick="saveThemeOptions('nextPluginsOptions')">保存设置</button>
                            </div>
                        </form>
                    </div>

                    <!-- 社交设置 -->
                    <div class="tab-pane" id="social">
                        <form method="post" class="form-horizontal" id="nextSocialOptions">
                            <div class="box-body">
                                <!-- social_enable -->
                                <div class="form-group">
                                    <label for="nextSocialEnable" class="col-sm-4 control-label">侧边栏社交显示：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_social_enable" id="nextSocialEnable" value="true" ${((options.next_social_enable!)=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_social_enable" id="nextSocialEnable" value="false" ${((options.next_social_enable!'false')=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <!-- social_enable -->
                                <div class="form-group">
                                    <label for="nextSocialIconEnable" class="col-sm-4 control-label">侧边栏社交图标显示：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_social_icon_enable" id="nextSocialIconEnable" value="true" ${((options.next_social_icon_enable!'true')=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_social_icon_enable" id="nextSocialIconEnable" value="false" ${((options.next_social_icon_enable!)=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <!-- social_enable -->
                                <div class="form-group">
                                    <label for="nextSocialIconOnly" class="col-sm-4 control-label">侧边栏社交只显示图标：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_social_icon_only" id="nextSocialIconOnly" value="true" ${((options.next_social_icon_only!)=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_social_icon_only" id="nextSocialIconOnly" value="false" ${((options.next_social_icon_only!'false')=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <!-- social_enable -->
                                <div class="form-group">
                                    <label for="nextSocialIconTransition" class="col-sm-4 control-label">侧边栏社交过渡：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_social_icon_transition" id="nextSocialIconTransition" value="true" ${((options.next_social_icon_transition!)=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_social_icon_transition" id="nextSocialIconTransition" value="false" ${((options.next_social_icon_transition!'false')=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <!-- Github -->
                                <div class="form-group">
                                    <label for="nextSocialGithub" class="col-sm-4 control-label">Github地址：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextSocialGithub" name="next_social_github" value="${options.next_social_github!}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextSocialGithubIcon" class="col-sm-4 control-label">Github图标：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextSocialGithubIcon" name="next_social_github_icon" value="${options.next_social_github_icon!'github'}" >
                                    </div>
                                </div>
                                <!-- E-Mail -->
                                <div class="form-group">
                                    <label for="nextSocialEmail" class="col-sm-4 control-label">E-Mail地址：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextSocialEmail" name="next_social_email" value="${options.next_social_email!}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextSocialEmailIcon" class="col-sm-4 control-label">E-Mail图标：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextSocialEmailIcon" name="next_social_email_icon" value="${options.next_social_email_icon!'envelope'}" >
                                    </div>
                                </div>
                                <!-- Google Plus -->
                                <div class="form-group">
                                    <label for="nextSocialGoogle" class="col-sm-4 control-label">Google Plus地址：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextSocialGoogle" name="next_social_google" value="${options.next_social_google!}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextSocialGoogleIcon" class="col-sm-4 control-label">Google Plus图标：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextSocialGoogleIcon" name="next_social_google_icon" value="${options.next_social_google_icon!'google'}" >
                                    </div>
                                </div>
                                <!-- Twitter -->
                                <div class="form-group">
                                    <label for="nextSocialTwitter" class="col-sm-4 control-label">Twitter地址：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextSocialTwitter" name="next_social_twitter" value="${options.next_social_twitter!}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextSocialTwitterIcon" class="col-sm-4 control-label">Twitter图标：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextSocialTwitterIcon" name="next_social_twitter_icon" value="${options.next_social_twitter_icon!'twitter'}" >
                                    </div>
                                </div>
                                <!-- FB Page -->
                                <div class="form-group">
                                    <label for="nextSocialFbPage" class="col-sm-4 control-label">FB Page地址：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextSocialFbPage" name="next_social_fb_pager" value="${options.next_social_fb_pager!}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextSocialFbPageIcon" class="col-sm-4 control-label">FB Page图标：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextSocialFbPageIcon" name="next_social_fb_pager_icon" value="${options.next_social_twitter_icon!'facebook'}" >
                                    </div>
                                </div>
                                <!-- FB Page -->
                                <div class="form-group">
                                    <label for="nextSocialVkGroup" class="col-sm-4 control-label">VK Group地址：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextSocialVkGroup" name="next_social_vk_group" value="${options.next_social_vk_group!}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextSocialVkGroupIcon" class="col-sm-4 control-label">VK Group图标：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextSocialVkGroupIcon" name="next_social_vk_group_icon" value="${options.next_social_vk_group_icon!'vk'}" >
                                    </div>
                                </div>
                                <!-- FB Page -->
                                <div class="form-group">
                                    <label for="nextSocialStackOverflow" class="col-sm-4 control-label">StackOverflow地址：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextSocialStackOverflow" name="next_social_stack_over_flow" value="${options.next_social_stack_over_flow!}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextSocialStackOverflowIcon" class="col-sm-4 control-label">StackOverflow图标：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextSocialStackOverflowIcon" name="next_social_stack_over_flow_icon" value="${options.next_social_stack_over_flow_icon!'stack-overflow'}" >
                                    </div>
                                </div>
                                <!-- YouTube -->
                                <div class="form-group">
                                    <label for="nextSocialYouTube" class="col-sm-4 control-label">YouTube地址：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextSocialYouTube" name="next_social_you_tube" value="${options.next_social_you_tube!}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextSocialYouTubeIcon" class="col-sm-4 control-label">YouTube图标：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextSocialYouTube" name="next_social_you_tube_icon" value="${options.next_social_you_tube_icon!'youtube'}" >
                                    </div>
                                </div>
                                <!-- Instagram -->
                                <div class="form-group">
                                    <label for="nextSocialInstagram" class="col-sm-4 control-label">Instagram地址：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextSocialInstagram" name="next_social_instagram" value="${options.next_social_instagram!}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextSocialInstagramIcon" class="col-sm-4 control-label">Instagram图标：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextSocialInstagramIcon" name="next_social_instagram_icon" value="${options.next_social_instagram_icon!'instagram'}" >
                                    </div>
                                </div>
                                <!-- Skype -->
                                <div class="form-group">
                                    <label for="nextSocialSkype" class="col-sm-4 control-label">Skype地址：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextSocialSkype" name="next_social_skype" value="${options.next_social_skype!}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextSocialSkypeIcon" class="col-sm-4 control-label">Skype图标：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextSocialSkypeIcon" name="next_social_skype_icon" value="${options.next_social_skype_icon!'skype'}" >
                                    </div>
                                </div>
                            </div>
                            <div class="box-footer">
                                <button type="button" class="btn btn-primary btn-sm pull-right" onclick="saveThemeOptions('nextSocialOptions')">保存设置</button>
                            </div>
                        </form>
                    </div>
                    <!-- 关于该主题 -->
                    <div class="tab-pane" id="about">
                        <div class="box box-widget widget-user-2">
                            <div class="widget-user-header bg-blue">
                                <div class="widget-user-image">
                                    <img class="img-circle" src="https://avatars0.githubusercontent.com/u/32269?s=460&v=4" alt="User Avatar">
                                </div>
                                <h3 class="widget-user-username">iissnan</h3>
                                <h5 class="widget-user-desc">A other Hexo theme</h5>
                            </div>
                            <div class="box-footer no-padding">
                                <ul class="nav nav-stacked">
                                    <li><a target="_blank" href="http://iissnan.com/">作者主页</a></li>
                                    <li><a target="_blank" href="https://github.com/iissnan/hexo-theme-next">原主题地址</a></li>
                                </ul>
                            </div>
                            <#if hasUpdate>
                            <div class="box-footer">
                                <button type="button" class="btn btn-warning btn-sm pull-right" data-loading-text="更新中..." onclick="updateTheme('${themeDir}',this)">更新主题</button>
                            </div>
                            </#if>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<@option.import_js />
