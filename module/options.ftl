<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="/static/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static/plugins/toast/css/jquery.toast.min.css">
    <link rel="stylesheet" href="/static/css/AdminLTE.min.css">
    <style>
        .themeSetting,.themeImg{
            padding-top: 15px;
            padding-bottom: 15px;
        }
        .form-horizontal .control-label{
            text-align: left;
        }
    </style>
</head>
<body>
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
                        <a href="#verification" data-toggle="tab">站点设置</a>
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
                                            <option value="Muse" ${((options.next_general_scheme?default('Muse'))=='Muse')?string('selected','')}>Muse</option>
                                            <option value="Mist" ${((options.next_general_scheme?if_exists)=='Mist')?string('selected','')}>Mist</option>
                                            <option value="Pisces" ${((options.next_general_scheme?if_exists)=='Pisces')?string('selected','')}>Pisces</option>
                                            <option value="Gemini" ${((options.next_general_scheme?if_exists)=='Gemini')?string('selected','')}>Gemini</option>
                                        </select>
                                    </div>
                                </div>
                                <!-- Favicon-Small -->
                                <div class="form-group">
                                    <label for="nextGeneralFaviconSmall" class="col-sm-4 control-label">Favicon（小）：</label>
                                    <div class="col-sm-8">
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="nextGeneralFaviconSmall" name="next_general_favicon_small" value="${options.next_general_favicon_small?if_exists}" >
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
                                            <input type="text" class="form-control" id="nextGeneralFaviconMedium" name="next_general_favicon_medium" value="${options.next_general_favicon_medium?if_exists}" >
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
                                            <input type="text" class="form-control" id="nextGeneralAppleTouchIcon" name="next_general_apple_touch_icon" value="${options.next_general_apple_touch_icon?if_exists}" >
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
                                            <input type="text" class="form-control" id="nextGeneralSafariPinnedTab" name="next_general_safari_pinned_tab" value="${options.next_general_safari_pinned_tab?if_exists}" >
                                            <span class="input-group-btn">
                                                <button class="btn btn-default btn-flat" type="button" onclick="openAttach('nextGeneralSafariPinnedTab')">选择</button>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <!-- subtitle -->
                                <div class="form-group">
                                    <label for="nextGeneralSubtitle" class="col-sm-4 control-label">网站副标题：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextGeneralSubtitle" name="next_general_subtitle" value="${options.next_general_subtitle?if_exists}" >
                                    </div>
                                </div>
                                <!-- Footer-icon -->
                                <div class="form-group">
                                    <label for="nextGeneralFooterIcon" class="col-sm-4 control-label">页脚图标：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextGeneralFooterIcon" name="next_general_footer_icon" value="${options.next_general_footer_icon?default('user')}" >
                                    </div>
                                </div>
                                <!-- Footer-copyright -->
                                <div class="form-group">
                                    <label for="nextGeneralFooterSince" class="col-sm-4 control-label">页脚网站创建年份：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextGeneralFooterSince" name="next_general_footer_since" value="${options.next_general_footer_since?if_exists}" >
                                    </div>
                                </div>
                                <!-- Footer-copyright -->
                                <div class="form-group">
                                    <label for="nextGeneralFooterCopyright" class="col-sm-4 control-label">页脚版权：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextGeneralFooterCopyright" name="next_general_footer_copyright" value="${options.next_general_footer_copyright?if_exists}" >
                                    </div>
                                </div>
                                <!-- Footer-powered -->
                                <div class="form-group">
                                    <label for="nextGeneralFooterPowered" class="col-sm-4 control-label">是否显示网站程序名称：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_general_footer_powered" id="nextGeneralFooterPowered" value="true" ${((options.next_general_footer_powered?default('true'))=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_general_footer_powered" id="nextGeneralFooterPowered" value="false" ${((options.next_general_footer_powered?if_exists)=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <!-- Footer-theme-enable -->
                                <div class="form-group">
                                    <label for="nextGeneralFooterThemeEnable" class="col-sm-4 control-label">是否显示主题名称：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_general_footer_theme_enable" id="nextGeneralFooterThemeEnable" value="true" ${((options.next_general_footer_theme_enable?default('true'))=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_general_footer_theme_enable" id="nextGeneralFooterThemeEnable" value="false" ${((options.next_general_footer_theme_enable?if_exists)=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <!-- Footer-theme-version -->
                                <div class="form-group">
                                    <label for="nextGeneralFooterThemeVersion" class="col-sm-4 control-label">是否显示主题版本：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_general_footer_theme_version" id="nextGeneralFooterThemeVersion" value="true" ${((options.next_general_footer_theme_version?default('true'))=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_general_footer_theme_version" id="nextGeneralFooterThemeVersion" value="false" ${((options.next_general_footer_theme_version?if_exists)=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextGeneralFooterCustomText" class="col-sm-4 control-label">custom_text：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextGeneralFooterCustomText" name="next_general_footer_custom_text" value="${options.next_general_footer_custom_text?if_exists}" >
                                    </div>
                                </div>
                                <!-- wechat_subscriber_enable -->
                                <div class="form-group">
                                    <label for="nextGeneralWechatSubscriberEnable" class="col-sm-4 control-label">wechat_subscriber_enable：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_general_wechat_subscriber_enable" id="nextGeneralWechatSubscriberEnable" value="true" ${((options.next_general_wechat_subscriber_enable?if_exists)=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_general_wechat_subscriber_enable" id="nextGeneralWechatSubscriberEnable" value="false" ${((options.next_general_wechat_subscriber_enable?default('false'))=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <!-- wechat_subscriber_qcode -->
                                <div class="form-group">
                                    <label for="nextGeneralWechatSubscriberQcode" class="col-sm-4 control-label">wechat_subscriber_qcode：</label>
                                    <div class="col-sm-8">
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="nextGeneralWechatSubscriberQcode" name="next_general_wechat_subscriber_qcode" value="${options.next_general_wechat_subscriber_qcode?if_exists}" >
                                            <span class="input-group-btn">
                                                <button class="btn btn-default btn-flat" type="button" onclick="openAttach('nextGeneralWechatSubscriberQcode')">选择</button>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <!-- wechat_subscriber_description -->
                                <div class="form-group">
                                    <label for="nextGeneralWechatSubscriberDescription" class="col-sm-4 control-label">wechat_subscriber_description：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextGeneralWechatSubscriberDescription" name="next_general_wechat_subscriber_description" value="${options.next_general_wechat_subscriber_description?if_exists}" >
                                    </div>
                                </div>
                                <!-- creative_commons -->
                                <div class="form-group">
                                    <label for="nextGeneralCreativeCommons" class="col-sm-4 control-label">creative_commons：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextGeneralCreativeCommons" name="next_general_creative_commons" value="${options.next_general_creative_commons?default('by-nc-sa')}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextGeneralLinksIcon" class="col-sm-4 control-label">links_icon：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextGeneralLinksIcon" name="next_general_links_icon" value="${options.next_general_links_icon?default('link')}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextGeneralLinksTitle" class="col-sm-4 control-label">links_title：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextGeneralLinksTitle" name="next_general_links_title" value="${options.next_general_links_title?default('Links')}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextGeneralLinksLayout" class="col-sm-4 control-label">links_layout：</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="nextGeneralLinksLayout" name="next_general_links_layout">
                                            <option value="block" ${((options.next_general_links_layout?if_exists)=='block')?string('selected','')}>block</option>
                                            <option value="inline" ${((options.next_general_links_layout?default('inline'))=='inline')?string('selected','')}>inline</option>
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
                                            <option value="left" ${((options.next_style_sidebar_position?default('left'))=='left')?string('selected','')}>左侧</option>
                                            <option value="right" ${((options.next_style_sidebar_position?if_exists)=='right')?string('selected','')}>右侧</option>
                                        </select>
                                    </div>
                                </div>
                                <!-- sidebar-display -->
                                <div class="form-group">
                                    <label for="nextStyleSidebarDisplay" class="col-sm-4 control-label">侧栏显示时机：</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="nextStyleSidebarDisplay" name="next_style_sidebar_display">
                                            <option value="post" ${((options.next_style_sidebar_display?default('post'))=='post')?string('selected','')}>文章页面</option>
                                            <option value="always" ${((options.next_style_sidebar_display?if_exists)=='always')?string('selected','')}>所有页面</option>
                                            <option value="hide" ${((options.next_style_sidebar_display?if_exists)=='hide')?string('selected','')}>所有页面中都隐藏</option>
                                            <option value="remove" ${((options.next_style_sidebar_display?if_exists)=='remove')?string('selected','')}>完全移除</option>
                                        </select>
                                    </div>
                                </div>
                                <!-- sidebar-offset -->
                                <div class="form-group">
                                    <label for="nextStyleSidebarOffset" class="col-sm-4 control-label">侧栏偏移量：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextStyleSidebarOffset" name="next_general_footer_offset" value="${options.next_general_footer_offset?default('12')}" >
                                    </div>
                                </div>
                                <!-- sidebar-b2t -->
                                <div class="form-group">
                                    <label for="nextStyleSidebarB2t" class="col-sm-4 control-label">侧栏返回顶部按钮：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_style_sidebar_b2t" id="nextStyleSidebarB2t" value="true" ${((options.next_style_sidebar_b2t?default('true'))=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_style_sidebar_b2t" id="nextStyleSidebarB2t" value="false" ${((options.next_style_sidebar_b2t?if_exists)=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <!-- sidebar-Scrollpercent -->
                                <div class="form-group">
                                    <label for="nextStyleSidebarScrollpercent" class="col-sm-4 control-label">Sidebar-Scrollpercent：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_style_sidebar_scrollpercent" id="nextStyleSidebarScrollpercent" value="true" ${((options.next_style_sidebar_scrollpercent?if_exists)=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_style_sidebar_scrollpercent" id="nextStyleSidebarScrollpercent" value="false" ${((options.next_style_sidebar_scrollpercent?default('false'))=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <!-- sidebar-onmobile -->
                                <div class="form-group">
                                    <label for="nextStyleSidebarOnmobile" class="col-sm-4 control-label">Sidebar-onmobile：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_style_sidebar_onmobile" id="nextStyleSidebarOnmobile" value="true" ${((options.next_style_sidebar_onmobile?if_exists)=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_style_sidebar_onmobile" id="nextStyleSidebarOnmobile" value="false" ${((options.next_style_sidebar_onmobile?default('false'))=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextStyleCustomLogoEnable" class="col-sm-4 control-label">custom_logo_enable：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_style_custom_logo_enable" id="nextStyleCustomLogoEnable" value="true" ${((options.next_style_custom_logo_enable?if_exists)=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_style_custom_logo_enable" id="nextStyleCustomLogoEnable" value="false" ${((options.next_style_custom_logo_enable?default('false'))=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextStyleCustomLogoImage" class="col-sm-4 control-label">custom_logo_image：</label>
                                    <div class="col-sm-8">
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="nextStyleCustomLogoImage" name="next_style_custom_logo_image" value="${options.next_style_custom_logo_image?if_exists}" >
                                            <span class="input-group-btn">
                                                <button class="btn btn-default btn-flat" type="button" onclick="openAttach('nextStyleCustomLogoImage')">选择</button>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextStyleTocEnable" class="col-sm-4 control-label">toc_enable：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_style_toc_enable" id="nextStyleTocEnable" value="true" ${((options.next_style_toc_enable?default('true'))=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_style_toc_enable" id="nextStyleTocEnable" value="false" ${((options.next_style_toc_enable?if_exists)=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextStyleTocNumber" class="col-sm-4 control-label">toc_number：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_style_toc_number" id="nextStyleTocNumber" value="true" ${((options.next_style_toc_number?default('true'))=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_style_toc_number" id="nextStyleTocNumber" value="false" ${((options.next_style_toc_number?if_exists)=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextStyleTocWrap" class="col-sm-4 control-label">toc_enable：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_style_toc_wrap" id="nextStyleTocWrap" value="true" ${((options.next_style_toc_wrap?if_exists)=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_style_toc_wrap" id="nextStyleTocWrap" value="false" ${((options.next_style_toc_wrap?default('false'))=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <!-- rss -->
                                <div class="form-group">
                                    <label for="nextStyleRss" class="col-sm-4 control-label">侧边栏显示RSS按钮：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_style_rss" id="nextStyleRss" value="true" ${((options.next_style_rss?default('true'))=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_style_rss" id="nextStyleRss" value="false" ${((options.next_style_rss?if_exists)=='false')?string('checked','')}> 关闭
                                        </label>
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
                                            <input type="radio" name="next_other_baidu_push" id="nextOtherBaiduPush" value="true" ${((options.next_other_baidu_push?default('true'))=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_baidu_push" id="nextOtherBaiduPush" value="false" ${((options.next_other_baidu_push?if_exists)=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>

                                <!--post_copyright-->
                                <div class="form-group">
                                    <label for="nextOtherPostCopyright" class="col-sm-4 control-label">文章版权信息：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_post_copyright" id="nextOtherPostCopyright" value="true" ${((options.next_other_post_copyright?default('true'))=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_post_copyright" id="nextOtherPostCopyright" value="false" ${((options.next_other_post_copyright?if_exists)=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>

                                <!-- post_copyright_license -->
                                <div class="form-group">
                                    <label for="nextOtherPostCopyrightLicense" class="col-sm-4 control-label">文章版权信息：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextOtherPostCopyrightLicense" name="next_other_post_copyright_license" value="${options.next_other_post_copyright_license?default('CC BY-NC-SA 3.0')}" >
                                    </div>
                                </div>

                                <!-- post_copyright_license_url -->
                                <div class="form-group">
                                    <label for="nextOtherPostCopyrightLicenseUrl" class="col-sm-4 control-label">文章版权链接：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextOtherPostCopyrightLicenseUrl" name="next_other_post_copyright_license_url" value="${options.next_other_post_copyright_license_url?default('https://creativecommons.org/licenses/by-nc-sa/3.0/')}" >
                                    </div>
                                </div>

                                <!-- canvas_ribbon -->
                                <div class="form-group">
                                    <label for="nextOtherCanvasRibbonEnable" class="col-sm-4 control-label">canvas_ribbon：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_canvas_ribbon_enable" id="nextOtherCanvasRibbonEnable" value="true" ${((options.next_other_canvas_ribbon_enable?if_exists)=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_canvas_ribbon_enable" id="nextOtherCanvasRibbonEnable" value="false" ${((options.next_other_canvas_ribbon_enable?default('false'))=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextOtherCanvasRibbonSize" class="col-sm-4 control-label">canvas_ribbon_size：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextOtherCanvasRibbonSize" name="next_other_canvas_ribbon_size" value="${options.next_other_canvas_ribbon_size?default('300')}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextOtherCanvasRibbonAlpha" class="col-sm-4 control-label">canvas_ribbon_alpha：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextOtherCanvasRibbonAlpha" name="next_other_canvas_ribbon_alpha" value="${options.next_other_canvas_ribbon_alpha?default('0.6')}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextOtherCanvasRibbonZindex" class="col-sm-4 control-label">canvas_ribbon_zIndex：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextOtherCanvasRibbonZindex" name="next_other_canvas_ribbon_zindex" value="${options.next_other_canvas_ribbon_zindex?default('-1')}" >
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="nextOtherCanvasNest" class="col-sm-4 control-label">canvas_nest：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_canvas_nest" id="nextOtherCanvasNest" value="true" ${((options.next_other_canvas_nest?if_exists)=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_canvas_nest" id="nextOtherCanvasNest" value="false" ${((options.next_other_canvas_nest?default('false'))=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="nextOtherThreeWaves" class="col-sm-4 control-label">three_waves：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_three_waves" id="nextOtherThreeWaves" value="true" ${((options.next_other_three_waves?if_exists)=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_three_waves" id="nextOtherThreeWaves" value="false" ${((options.next_other_three_waves?default('false'))=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextOtherCanvasLines" class="col-sm-4 control-label">canvas_lines：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_canvas_lines" id="nextOtherCanvasLines" value="true" ${((options.next_other_canvas_lines?if_exists)=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_canvas_lines" id="nextOtherCanvasLines" value="false" ${((options.next_other_canvas_lines?default('false'))=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextOtherCanvasSphere" class="col-sm-4 control-label">canvas_sphere：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_canvas_sphere" id="nextOtherCanvasSphere" value="true" ${((options.next_other_canvas_sphere?if_exists)=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_canvas_sphere" id="nextOtherCanvasSphere" value="false" ${((options.next_other_canvas_sphere?default('false'))=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <!-- motion -->
                                <div class="form-group">
                                    <label for="nextOtherMotionEnable" class="col-sm-4 control-label">motion-enable：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_motion_enable" id="nextOtherMotionEnable" value="true" ${((options.next_other_motion_enable?default('true'))=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_motion_enable" id="nextOtherMotionEnable" value="false" ${((options.next_other_motion_enable?if_exists)=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <!-- motion-async -->
                                <div class="form-group">
                                    <label for="nextOtherMotionAsync" class="col-sm-4 control-label">motion.async：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_motion_async" id="nextOtherMotionAsync" value="true" ${((options.next_other_motion_async?if_exists)=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_motion_async" id="nextOtherMotionAsync" value="false" ${((options.next_other_motion_async?default('false'))=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="nextOtherMotionTransitionPostBlock" class="col-sm-4 control-label">motion.async.transition.post_block：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextOtherMotionTransitionPostBlock" name="next_other_motion_transition_post_block" value="${options.next_other_motion_transition_post_block?default('fadeIn')}" >
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="nextOtherMotionTransitionPostHeader" class="col-sm-4 control-label">motion.async.transition.post_header：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextOtherMotionTransitionPostHeader" name="next_other_motion_transition_post_header" value="${options.next_other_motion_transition_post_header?default('slideDownIn')}" >
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="nextOtherMotionTransitionPostBody" class="col-sm-4 control-label">motion.async.transition.post_body：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextOtherMotionTransitionPostBody" name="next_other_motion_transition_post_body" value="${options.next_other_motion_transition_post_body?default('slideDownIn')}" >
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="nextOtherMotionTransitionCollHeader" class="col-sm-4 control-label">motion.async.transition.coll_header：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextOtherMotionTransitionCollHeader" name="next_other_motion_transition_coll_header" value="${options.next_other_motion_transition_coll_header?default('slideLeftIn')}" >
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="nextOtherMotionTransitionSidebar" class="col-sm-4 control-label">motion.async.transition.sidebar：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextOtherMotionTransitionSidebar" name="next_other_motion_transition_sidebar" value="${options.next_other_motion_transition_sidebar?default('slideUpIn')}" >
                                    </div>
                                </div>


                                <div class="form-group">
                                    <label for="nextOtherCanonical" class="col-sm-4 control-label">Canonical：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_canonical" id="nextOtherCanonical" value="true" ${((options.next_other_canonical?default('true'))=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_canonical" id="nextOtherCanonical" value="false" ${((options.next_other_canonical?if_exists)=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="nextOtherSeo" class="col-sm-4 control-label">seo：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_seo" id="nextOtherSeo" value="true" ${((options.next_other_seo?if_exists)=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_seo" id="nextOtherSeo" value="false" ${((options.next_other_seo?default('false'))=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="nextOtherRewardComment" class="col-sm-4 control-label">捐赠提示：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextOtherRewardComment" name="next_other_reward_comment" value="${options.next_other_reward_comment?default('Donate comment here')}" >
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="nextOtherWechatpay" class="col-sm-4 control-label">微信支付二维码：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextOtherWechatpay" name="next_other_wechatpay" value="${options.next_other_wechatpay?if_exists}" >
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="nextOtherAlipay" class="col-sm-4 control-label">支付宝二维码：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextOtherAlipay" name="next_other_alipay" value="${options.next_other_alipay?if_exists}" >
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="nextOtherBitcoin" class="col-sm-4 control-label">比特币二维码：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextOtherBitcoin" name="next_other_bitcoin" value="${options.next_other_bitcoin?if_exists}" >
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="nextOtherBaiduShareType" class="col-sm-4 control-label">百度分享类型：</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="nextOtherBaiduShareType" name="next_other_baidu_share_type">
                                            <option value="" ${((options.next_other_baidu_share_type?default(''))=='')?string('selected','')}></option>
                                            <option value="button" ${((options.next_other_baidu_share_type?if_exists)=='button')?string('selected','')}>按钮</option>
                                            <option value="slide" ${((options.next_other_baidu_share_type?if_exists)=='slide')?string('selected','')}>侧边</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="nextOtherJiathisUid" class="col-sm-4 control-label">jiathis_uid：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextOtherJiathisUid" name="next_other_jiathis_uid" value="${options.next_other_jiathis_uid?if_exists}" >
                                    </div>
                                </div>


                                <div class="form-group">
                                    <label for="nextOtherAddThisId" class="col-sm-4 control-label">add_this_id：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextOtherAddThisId" name="next_other_add_this_id" value="${options.next_other_add_this_id?if_exists}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextOtherBaiduAnalytics" class="col-sm-4 control-label">百度统计ID：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextOtherBaiduAnalytics" name="next_other_baidu_analytics" value="${options.next_other_baidu_analytics?if_exists}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextOtherApplicationInsights" class="col-sm-4 control-label">application_insights：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextOtherApplicationInsights" name="next_other_application_insights" value="${options.next_other_application_insights?if_exists}" >
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="nextOtherBusuanziCountEnable" class="col-sm-4 control-label">busuanzi_count_enable：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_busuanzi_count_enable" id="nextOtherBusuanziCountEnable" value="true" ${((options.next_other_busuanzi_count_enable?if_exists)=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_busuanzi_count_enable" id="nextOtherBusuanziCountEnable" value="false" ${((options.next_other_busuanzi_count_enable?default('false'))=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextOtherBusuanziCountSiteUv" class="col-sm-4 control-label">busuanzi_count_site_uv：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_busuanzi_count_site_uv" id="nextOtherBusuanziCountSiteUv" value="true" ${((options.next_other_busuanzi_count_site_uv?default('true'))=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_busuanzi_count_site_uv" id="nextOtherBusuanziCountSiteUv" value="false" ${((options.next_other_busuanzi_count_site_uv?if_exists)=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextOtherBusuanziCountSiteUvHeader" class="col-sm-4 control-label">busuanzi_count_site_uv_header：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextOtherBusuanziCountSiteUvHeader" name="next_other_busuanzi_count_site_uv_header" value="${options.next_other_busuanzi_count_site_uv_header?default('<i class="fa fa-user"></i>')}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextOtherBusuanziCountSiteUvFooter" class="col-sm-4 control-label">busuanzi_count_site_uv_Footer：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextOtherBusuanziCountSiteUvFooter" name="next_other_busuanzi_count_site_uv_footer" value="${options.next_other_busuanzi_count_site_uv_footer?if_exists}" >
                                    </div>
                                </div>


                                <div class="form-group">
                                    <label for="nextOtherBusuanziCountSitePv" class="col-sm-4 control-label">busuanzi_count_site_pv：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_busuanzi_count_site_pv" id="nextOtherBusuanziCountSitePv" value="true" ${((options.next_other_busuanzi_count_site_pv?default('true'))=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_busuanzi_count_site_pv" id="nextOtherBusuanziCountSitePv" value="false" ${((options.next_other_busuanzi_count_site_pv?if_exists)=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextOtherBusuanziCountSitePvHeader" class="col-sm-4 control-label">busuanzi_count_site_pv_header：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextOtherBusuanziCountSitePvHeader" name="next_other_busuanzi_count_site_pv_header" value="${options.next_other_busuanzi_count_site_pv_header?default('<i class="fa fa-eye"></i>')}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextOtherBusuanziCountSitePvFooter" class="col-sm-4 control-label">busuanzi_count_site_pv_Footer：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextOtherBusuanziCountSitePvFooter" name="next_other_busuanzi_count_site_pv_footer" value="${options.next_other_busuanzi_count_site_pv_footer?if_exists}" >
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="nextOtherBusuanziCountPagePv" class="col-sm-4 control-label">busuanzi_count_page_pv：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_busuanzi_count_page_pv" id="nextOtherBusuanziCountPagePv" value="true" ${((options.next_other_busuanzi_count_page_pv?default('true'))=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_busuanzi_count_page_pv" id="nextOtherBusuanziCountPagePv" value="false" ${((options.next_other_busuanzi_count_page_pv?if_exists)=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextOtherBusuanziCountPagePvHeader" class="col-sm-4 control-label">busuanzi_count_page_pv_header：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextOtherBusuanziCountPagePvHeader" name="next_other_busuanzi_count_page_pv_header" value="${options.next_other_busuanzi_count_page_pv_header?default('<i class="fa fa-file-o"></i>')}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextOtherBusuanziCountPagePvFooter" class="col-sm-4 control-label">busuanzi_count_site_pv_Footer：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextOtherBusuanziCountPagePvFooter" name="next_other_busuanzi_count_page_pv_footer" value="${options.next_other_busuanzi_count_page_pv_footer?if_exists}" >
                                    </div>
                                </div>
                                <!--cnzz-id-->
                                <div class="form-group">
                                    <label for="nextOtherCnzzSiteid" class="col-sm-4 control-label">CNZZ-SiteId：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextOtherCnzzSiteid" name="next_other_cnzz_siteid" value="${options.next_other_cnzz_siteid?if_exists}" >
                                    </div>
                                </div>
                                <!-- google_analytics -->
                                <div class="form-group">
                                    <label for="nextOtherGoogleAnalytics" class="col-sm-4 control-label">谷歌统计ID：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextOtherGoogleAnalytics" name="next_other_google_analytics" value="${options.next_other_google_analytics?if_exists}" >
                                    </div>
                                </div>
                                <!-- tencent_analytics -->
                                <div class="form-group">
                                    <label for="nextOtherTencentAnalytics" class="col-sm-4 control-label">腾讯统计ID：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextOtherTencentAnalytics" name="next_other_tencent_analytics" value="${options.next_other_tencent_analytics?if_exists}" >
                                    </div>
                                </div>
                                <!-- tencent_mta -->
                                <div class="form-group">
                                    <label for="nextOtherTencentMta" class="col-sm-4 control-label">tencent_mta：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextOtherTencentMta" name="next_other_tencent_mta" value="${options.next_other_tencent_mta?if_exists}" >
                                    </div>
                                </div>
                            </div>
                            <div class="box-footer">
                                <button type="button" class="btn btn-primary btn-sm pull-right" onclick="saveThemeOptions('nextOtherOptions')">保存设置</button>
                            </div>
                        </form>
                    </div>

                    <!-- 站点验证代码 -->
                    <div class="tab-pane" id="verification">
                        <form method="post" class="form-horizontal" id="nextVerificationOptions">
                            <input type="hidden" name="next-version" value="5.1.4">
                            <div class="box-body">
                                <!-- Google -->
                                <div class="form-group">
                                    <label for="nextVerificationGoogle" class="col-sm-4 control-label">Google站点验证代码：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextVerificationGoogle" name="next_verification_google" value="${options.next_verification_google?if_exists}" >
                                    </div>
                                </div>
                                <!-- Google -->
                                <div class="form-group">
                                    <label for="nextVerificationBing" class="col-sm-4 control-label">必应站点验证代码：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextVerificationBing" name="next_verification_bing" value="${options.next_verification_bing?if_exists}" >
                                    </div>
                                </div>
                                <!-- yandex -->
                                <div class="form-group">
                                    <label for="nextVerificationYandex" class="col-sm-4 control-label">Yandex站点验证代码：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextVerificationYandex" name="next_verification_yandex" value="${options.next_verification_yandex?if_exists}" >
                                    </div>
                                </div>
                                <!-- baidu -->
                                <div class="form-group">
                                    <label for="nextVerificationBaidu" class="col-sm-4 control-label">百度站点验证代码：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="next_verification_baidu" name="next_verification_baidu" value="${options.next_verification_baidu?if_exists}" >
                                    </div>
                                </div>
                                <!-- qihu -->
                                <div class="form-group">
                                    <label for="nextVerificationQihu" class="col-sm-4 control-label">360搜索站点验证代码：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextVerificationQihu" name="next_verification_qihu" value="${options.next_verification_qihu?if_exists}" >
                                    </div>
                                </div>
                            </div>
                            <div class="box-footer">
                                <button type="button" class="btn btn-primary btn-sm pull-right" onclick="saveThemeOptions('nextVerificationOptions')">保存设置</button>
                            </div>
                        </form>
                    </div>

                    <!-- 搜索设置 -->
                    <div class="tab-pane" id="search">
                        <form method="post" class="form-horizontal" id="nextSearchOptions">
                            <input type="hidden" name="next-version" value="5.1.4">
                            <div class="box-body">
                                <div class="form-group">
                                    <label for="nextSearchSwiftype" class="col-sm-4 control-label">Swiftype：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextSearchSwiftype" name="next_search_swiftype" value="${options.next_search_swiftype?if_exists}" >
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="nextSearchAlgoliaSearchEnable" class="col-sm-4 control-label">algolia_search_enable：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_search_algolia_search_enable" id="nextSearchAlgoliaSearchEnable" value="true" ${((options.next_search_algolia_search_enable?if_exists)=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_search_algolia_search_enable" id="nextSearchAlgoliaSearchEnable" value="false" ${((options.next_search_algolia_search_enable?default('false'))=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="nextSearchAlgoliaSearchHitsPerPage" class="col-sm-4 control-label">algolia_search_hits_per_page：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextSearchAlgoliaSearchHitsPerPage" name="next_search_algolia_search_hits_per_page" value="${options.next_search_algolia_search_hits_per_page?default('10')}" >
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="nextSearchAlgoliaSearchLabelsInputPlaceholder" class="col-sm-4 control-label">algolia_search_labels_input_placeholder：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextSearchAlgoliaSearchLabelsInputPlaceholder" name="next_search_algolia_search_labels_input_placeholder" value="${options.next_search_algolia_search_labels_input_placeholder?default('Search for Posts')}" >
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="nextSearchAlgoliaSearchLabelsHitsEmpty" class="col-sm-4 control-label">algolia_search_labels_hits_empty：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextSearchAlgoliaSearchLabelsHitsEmpty" name="next_search_algolia_search_labels_hits_empty" value="${options.next_search_algolia_search_labels_hits_empty?default("We didn't find any results for the search: query")}" >
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="nextSearchAlgoliaSearchLabelsHitsStats" class="col-sm-4 control-label">algolia_search_labels_hits_stats：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextSearchAlgoliaSearchLabelsHitsStats" name="next_search_algolia_search_labels_hits_stats" value="${options.next_search_algolia_search_labels_hits_stats?default('hits results found in time ms')}" >
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="nextSearchLocalSearchEnable" class="col-sm-4 control-label">local_search_enable：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_search_local_search_enable" id="nextSearchLocalSearchEnable" value="true" ${((options.next_search_local_search_enable?if_exists)=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_search_local_search_enable" id="nextSearchLocalSearchEnable" value="false" ${((options.next_search_local_search_enable?default('false'))=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="nextSearchLocalSearchTrigger" class="col-sm-4 control-label">local_search_trigger：</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="nextSearchLocalSearchTrigger" name="next_search_local_search_trigger">
                                            <option value="auto" ${((options.next_search_local_search_trigger?default('auto'))=='auto')?string('selected','')}>auto</option>
                                            <option value="manual" ${((options.next_search_local_search_trigger?if_exists)=='manual')?string('selected','')}>manual</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="nextSearchLocalSearchTopNPerArticle" class="col-sm-4 control-label">local_search_top_n_per_article：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextSearchLocalSearchTopNPerArticle" name="next_search_local_search_top_n_per_article" value="${options.next_search_local_search_top_n_per_article?default('1')}" >
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
                                            <input type="radio" name="next_plugins_pace" id="nextPluginsPace" value="true" ${((options.next_plugins_pace?if_exists)=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_plugins_pace" id="nextPluginsPace" value="false" ${((options.next_plugins_pace?default('false'))=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <!-- Pace-theme -->
                                <div class="form-group">
                                    <label for="nextPluginsPaceTheme" class="col-sm-4 control-label">加载进度条主题：</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="nextPluginsPaceTheme" name="next_plugins_pace_theme">
                                            <option value="pace-theme-big-counter" ${((options.next_plugins_pace_theme?if_exists)=='pace-theme-big-counter')?string('selected','')}>pace-theme-big-counter</option>
                                            <option value="pace-theme-bounce" ${((options.next_plugins_pace_theme?if_exists)=='pace-theme-bounce')?string('selected','')}>pace-theme-bounce</option>
                                            <option value="pace-theme-barber-shop" ${((options.next_plugins_pace_theme?if_exists)=='pace-theme-barber-shop')?string('selected','')}>pace-theme-barber-shop</option>
                                            <option value="pace-theme-center-atom" ${((options.next_plugins_pace_theme?if_exists)=='pace-theme-center-atom')?string('selected','')}>pace-theme-center-atom</option>
                                            <option value="pace-theme-center-circle" ${((options.next_plugins_pace_theme?if_exists)=='pace-theme-center-circle')?string('selected','')}>pace-theme-center-circle</option>
                                            <option value="pace-theme-center-radar" ${((options.next_plugins_pace_theme?if_exists)=='pace-theme-center-radar')?string('selected','')}>pace-theme-center-radar</option>
                                            <option value="pace-theme-center-simple" ${((options.next_plugins_pace_theme?if_exists)=='pace-theme-center-simple')?string('selected','')}>pace-theme-center-simple</option>
                                            <option value="pace-theme-corner-indicator" ${((options.next_plugins_pace_theme?if_exists)=='pace-theme-corner-indicator')?string('selected','')}>pace-theme-corner-indicator</option>
                                            <option value="pace-theme-fill-left" ${((options.next_plugins_pace_theme?if_exists)=='pace-theme-fill-left')?string('selected','')}>pace-theme-fill-left</option>
                                            <option value="pace-theme-flash" ${((options.next_plugins_pace_theme?if_exists)=='pace-theme-flash')?string('selected','')}>pace-theme-flash</option>
                                            <option value="pace-theme-loading-bar" ${((options.next_plugins_pace_theme?if_exists)=='pace-theme-loading-bar')?string('selected','')}>pace-theme-loading-bar</option>
                                            <option value="pace-theme-mac-osx" ${((options.next_plugins_pace_theme?if_exists)=='pace-theme-mac-osx')?string('selected','')}>pace-theme-mac-osx</option>
                                            <option value="pace-theme-minimal" ${((options.next_plugins_pace_theme?default('pace-theme-minimal'))=='pace-theme-minimal')?string('selected','')}>pace-theme-minimal</option>
                                        </select>
                                    </div>
                                </div>
                                <!--Han-->
                                <div class="form-group">
                                    <label for="nextPluginsHan" class="col-sm-4 control-label">han-enable：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_plugins_han" id="nextPluginsHan" value="true" ${((options.next_plugins_han?if_exists)=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_plugins_han" id="nextPluginsHan" value="false" ${((options.next_plugins_han?default('false'))=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextPluginsFancybox" class="col-sm-4 control-label">Fancybox：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_plugins_fancybox" id="nextPluginsFancybox" value="true" ${((options.next_plugins_fancybox?default('true'))=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_plugins_fancybox" id="nextPluginsFancybox" value="false" ${((options.next_plugins_fancybox?if_exists)=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextPluginsExturl" class="col-sm-4 control-label">exturl：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_plugins_exturl" id="nextPluginsExturl" value="true" ${((options.next_plugins_exturl?default('true'))=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_plugins_exturl" id="nextPluginsExturl" value="false" ${((options.next_plugins_exturl?if_exists)=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextPluginsSaveScroll" class="col-sm-4 control-label">save_scroll：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_plugins_save_scroll" id="nextPluginsSaveScroll" value="true" ${((options.next_plugins_save_scroll?default('true'))=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_plugins_save_scroll" id="nextPluginsSaveScroll" value="false" ${((options.next_plugins_save_scroll?if_exists)=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextPluginsFirestoreEnable" class="col-sm-4 control-label">firestore-enable：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_plugins_firestore_enable" id="nextPluginsFirestoreEnable" value="true" ${((options.next_plugins_firestore_enable?default('true'))=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_plugins_firestore_enable" id="nextPluginsFirestoreEnable" value="false" ${((options.next_plugins_firestore_enable?if_exists)=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextPluginsFirestoreCollection" class="col-sm-4 control-label">firestore-cllection：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextPluginsFirestoreCollection" name="next_plugins_firestore_collection" value="${options.next_plugins_firestore_collection?default('articles')}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextPluginsFirestoreApiKey" class="col-sm-4 control-label">firestore-apiKey：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextPluginsFirestoreApiKey" name="next_plugins_firestore_api_key" value="${options.next_plugins_firestore_api_key?if_exists}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextPluginsFirestoreProjectId" class="col-sm-4 control-label">firestore-projectId：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextPluginsFirestoreProjectId" name="next_plugins_firestore_project_id" value="${options.next_plugins_firestore_project_id?if_exists}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextPluginsFirestoreBluebird" class="col-sm-4 control-label">firestore-bluebird：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_plugins_firestore_bluebird" id="nextPluginsFirestoreBluebird" value="true" ${((options.next_plugins_firestore_bluebird?default('true'))=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_plugins_firestore_bluebird" id="nextPluginsFirestoreBluebird" value="false" ${((options.next_plugins_firestore_bluebird?if_exists)=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextPluginsLeancloudVisitorsEnable" class="col-sm-4 control-label">leancloud_visitors_enable：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_plugins_leancloud_visitors_enable" id="nextPluginsLeancloudVisitorsEnable" value="true" ${((options.next_plugins_leancloud_visitors_enable?default('true'))=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_plugins_leancloud_visitors_enable" id="nextPluginsLeancloudVisitorsEnable" value="false" ${((options.next_plugins_leancloud_visitors_enable?if_exists)=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextPluginsLeancloudVisitorsAppId" class="col-sm-4 control-label">leancloud_visitors_app_id：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextPluginsLeancloudVisitorsAppId" name="next_plugins_leancloud_visitors_app_id" value="${options.next_plugins_leancloud_visitors_app_id?if_exists}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextPluginsLeancloudVisitorsAppKey" class="col-sm-4 control-label">leancloud_visitors_app_key：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextPluginsLeancloudVisitorsAppKey" name="next_plugins_leancloud_visitors_app_key" value="${options.next_plugins_leancloud_visitors_app_key?if_exists}" >
                                    </div>
                                </div>

                                <!-- mathjax_enable -->
                                <div class="form-group">
                                    <label for="nextPluginsMathjaxEnable" class="col-sm-4 control-label">Mathjax支持：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_plugins_mathjax_enable" id="nextPluginsMathjaxEnable" value="true" ${((options.next_plugins_mathjax_enable?if_exists)=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_plugins_mathjax_enable" id="nextPluginsMathjaxEnable" value="false" ${((options.next_plugins_mathjax_enable?default('false'))=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <!-- mathjax_per_page -->
                                <div class="form-group">
                                    <label for="nextPluginsMathjaxEnable" class="col-sm-4 control-label">mathjax_per_page：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_plugins_mathjax_per_page" id="nextPluginsMathjaxPerPage" value="true" ${((options.next_plugins_mathjax_per_page?if_exists)=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_plugins_mathjax_per_page" id="nextPluginsMathjaxPerPage" value="false" ${((options.next_plugins_mathjax_per_page?default('false'))=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <!-- mathjax_cdn -->
                                <div class="form-group">
                                    <label for="nextPluginsMathjaxCdn" class="col-sm-4 control-label">Mathjax CDN：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextPluginsMathjaxCdn" name="next_plugins_mathjax_cdn" value="${options.next_plugins_mathjax_cdn?default('//cdn.bootcss.com/mathjax/2.7.1/latest.js?config=TeX-AMS-MML_HTMLorMML')}" >
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
                                    <label for="nextSocialEnable" class="col-sm-4 control-label">social_enable：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_social_enable" id="nextSocialEnable" value="true" ${((options.next_social_enable?if_exists)=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_social_enable" id="nextSocialEnable" value="false" ${((options.next_social_enable?default('false'))=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <!-- social_enable -->
                                <div class="form-group">
                                    <label for="nextSocialIconEnable" class="col-sm-4 control-label">social_icon_enable：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_social_icon_enable" id="nextSocialIconEnable" value="true" ${((options.next_social_icon_enable?default('true'))=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_social_icon_enable" id="nextSocialIconEnable" value="false" ${((options.next_social_icon_enable?if_exists)=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <!-- social_enable -->
                                <div class="form-group">
                                    <label for="nextSocialIconOnly" class="col-sm-4 control-label">social_icon_only：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_social_icon_only" id="nextSocialIconOnly" value="true" ${((options.next_social_icon_only?if_exists)=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_social_icon_only" id="nextSocialIconOnly" value="false" ${((options.next_social_icon_only?default('false'))=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <!-- social_enable -->
                                <div class="form-group">
                                    <label for="nextSocialIconTransition" class="col-sm-4 control-label">social_icon_transition：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_social_icon_transition" id="nextSocialIconTransition" value="true" ${((options.next_social_icon_transition?if_exists)=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_social_icon_transition" id="nextSocialIconTransition" value="false" ${((options.next_social_icon_transition?default('false'))=='false')?string('checked','')}> 关闭
                                        </label>
                                    </div>
                                </div>
                                <!-- Github -->
                                <div class="form-group">
                                    <label for="nextSocialGithub" class="col-sm-4 control-label">Github地址：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextSocialGithub" name="next_social_github" value="${options.next_social_github?if_exists}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextSocialGithubIcon" class="col-sm-4 control-label">Github图标：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextSocialGithubIcon" name="next_social_github_icon" value="${options.next_social_github_icon?default('github')}" >
                                    </div>
                                </div>
                                <!-- E-Mail -->
                                <div class="form-group">
                                    <label for="nextSocialEmail" class="col-sm-4 control-label">E-Mail地址：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextSocialEmail" name="next_social_email" value="${options.next_social_email?if_exists}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextSocialEmailIcon" class="col-sm-4 control-label">E-Mail图标：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextSocialEmailIcon" name="next_social_email_icon" value="${options.next_social_email_icon?default('envelope')}" >
                                    </div>
                                </div>
                                <!-- Google Plus -->
                                <div class="form-group">
                                    <label for="nextSocialGoogle" class="col-sm-4 control-label">Google Plus地址：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextSocialGoogle" name="next_social_google" value="${options.next_social_google?if_exists}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextSocialGoogleIcon" class="col-sm-4 control-label">Google Plus图标：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextSocialGoogleIcon" name="next_social_google_icon" value="${options.next_social_google_icon?default('google')}" >
                                    </div>
                                </div>
                                <!-- Twitter -->
                                <div class="form-group">
                                    <label for="nextSocialTwitter" class="col-sm-4 control-label">Twitter地址：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextSocialTwitter" name="next_social_twitter" value="${options.next_social_twitter?if_exists}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextSocialTwitterIcon" class="col-sm-4 control-label">Twitter图标：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextSocialTwitterIcon" name="next_social_twitter_icon" value="${options.next_social_twitter_icon?default('twitter')}" >
                                    </div>
                                </div>
                                <!-- FB Page -->
                                <div class="form-group">
                                    <label for="nextSocialFbPage" class="col-sm-4 control-label">FB Page地址：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextSocialFbPage" name="next_social_fb_pager" value="${options.next_social_fb_pager?if_exists}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextSocialFbPageIcon" class="col-sm-4 control-label">FB Page图标：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextSocialFbPageIcon" name="next_social_fb_pager_icon" value="${options.next_social_twitter_icon?default('facebook')}" >
                                    </div>
                                </div>
                                <!-- FB Page -->
                                <div class="form-group">
                                    <label for="nextSocialVkGroup" class="col-sm-4 control-label">VK Group地址：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextSocialVkGroup" name="next_social_vk_group" value="${options.next_social_vk_group?if_exists}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextSocialVkGroupIcon" class="col-sm-4 control-label">VK Group图标：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextSocialVkGroupIcon" name="next_social_vk_group_icon" value="${options.next_social_vk_group_icon?default('vk')}" >
                                    </div>
                                </div>
                                <!-- FB Page -->
                                <div class="form-group">
                                    <label for="nextSocialStackOverflow" class="col-sm-4 control-label">StackOverflow地址：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextSocialStackOverflow" name="next_social_stack_over_flow" value="${options.next_social_stack_over_flow?if_exists}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextSocialStackOverflowIcon" class="col-sm-4 control-label">StackOverflow图标：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextSocialStackOverflowIcon" name="next_social_stack_over_flow_icon" value="${options.next_social_stack_over_flow_icon?default('stack-overflow')}" >
                                    </div>
                                </div>
                                <!-- YouTube -->
                                <div class="form-group">
                                    <label for="nextSocialYouTube" class="col-sm-4 control-label">YouTube地址：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextSocialYouTube" name="next_social_you_tube" value="${options.next_social_you_tube?if_exists}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextSocialYouTubeIcon" class="col-sm-4 control-label">YouTube图标：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextSocialYouTube" name="next_social_you_tube_icon" value="${options.next_social_you_tube_icon?default('youtube')}" >
                                    </div>
                                </div>
                                <!-- Instagram -->
                                <div class="form-group">
                                    <label for="nextSocialInstagram" class="col-sm-4 control-label">Instagram地址：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextSocialInstagram" name="next_social_instagram" value="${options.next_social_instagram?if_exists}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextSocialInstagramIcon" class="col-sm-4 control-label">Instagram图标：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextSocialInstagramIcon" name="next_social_instagram_icon" value="${options.next_social_instagram_icon?default('instagram')}" >
                                    </div>
                                </div>
                                <!-- Skype -->
                                <div class="form-group">
                                    <label for="nextSocialSkype" class="col-sm-4 control-label">Skype地址：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextSocialSkype" name="next_social_skype" value="${options.next_social_skype?if_exists}" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="nextSocialSkypeIcon" class="col-sm-4 control-label">Skype图标：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextSocialSkypeIcon" name="next_social_skype_icon" value="${options.next_social_skype_icon?default('skype')}" >
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
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script src="/static/plugins/jquery/jquery.min.js"></script>
<script src="/static/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="/static/plugins/toast/js/jquery.toast.min.js"></script>
<script src="/static/plugins/layer/layer.js"></script>
<script src="/static/js/app.js"></script>
<script>
    function saveThemeOptions(option) {
        var param = $('#'+option).serialize();
        $.ajax({
            type: 'post',
            url: '/admin/option/save',
            data: param,
            success: function (data) {
                if(data.code==1){
                    showMsg(data.msg,"success",1000);
                }else{
                    showMsg(data.msg,"error",1000);
                }
            }
        });
    }
    function openAttach(id) {
        layer.open({
            type: 2,
            title: '所有附件',
            shadeClose: true,
            shade: 0.5,
            area: ['90%', '90%'],
            content: '/admin/attachments/select?id='+id,
            scrollbar: false
        });
    }
</script>
</html>
