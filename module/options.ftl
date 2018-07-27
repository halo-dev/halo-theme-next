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
                                    <label for="nextGeneralScheme" class="col-sm-4 control-label">Scheme：</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="nextGeneralScheme" name="next_general_scheme">
                                            <option value="Muse" ${((options.next_general_scheme?default('Muse'))=='Muse')?string('selected','')}>Muse</option>
                                            <option value="Mist" ${((options.next_general_scheme?if_exists)=='Muse')?string('selected','')}>Mist</option>
                                            <option value="Pisces" ${((options.next_general_scheme?if_exists)=='Muse')?string('selected','')}>Pisces</option>
                                            <option value="Gemini" ${((options.next_general_scheme?if_exists)=='Muse')?string('selected','')}>Gemini</option>
                                        </select>
                                    </div>
                                </div>
                                <!-- Favicon-Small -->
                                <div class="form-group">
                                    <label for="nextGeneralFaviconSmall" class="col-sm-4 control-label">Favicon-small：</label>
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
                                    <label for="nextGeneralFaviconMedium" class="col-sm-4 control-label">Favicon-medium：</label>
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
                                    <label for="nextGeneralAppleTouchIcon" class="col-sm-4 control-label">apple_touch_icon：</label>
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
                                    <label for="nextGeneralSafariPinnedTab" class="col-sm-4 control-label">safari_pinned_tab：</label>
                                    <div class="col-sm-8">
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="nextGeneralSafariPinnedTab" name="next_general_safari_pinned_tab" value="${options.next_general_safari_pinned_tab?if_exists}" >
                                            <span class="input-group-btn">
                                                <button class="btn btn-default btn-flat" type="button" onclick="openAttach('nextGeneralSafariPinnedTab')">选择</button>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <!-- Footer-icon -->
                                <div class="form-group">
                                    <label for="nextGeneralFooterIcon" class="col-sm-4 control-label">Footer-Icon：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextGeneralFooterIcon" name="next_general_footer_icon" value="${options.next_general_footer_icon?if_exists}" >
                                    </div>
                                </div>
                                <!-- Footer-copyright -->
                                <div class="form-group">
                                    <label for="nextGeneralFooterCopyright" class="col-sm-4 control-label">Footer-copyright：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextGeneralFooterCopyright" name="next_general_footer_copyright" value="${options.next_general_footer_copyright?if_exists}" >
                                    </div>
                                </div>
                                <!-- Footer-powered -->
                                <div class="form-group">
                                    <label for="nextGeneralFooterPowered" class="col-sm-4 control-label">Footer-powered：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_general_footer_powered" id="nextGeneralFooterPowered" value="true" ${((options.next_general_footer_powered?default('true'))=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_general_footer_powered" id="nextGeneralFooterPowered" value="false" ${((options.next_general_footer_powered?if_exists)=='false')?string('checked','')}> 禁用
                                        </label>
                                    </div>
                                </div>
                                <!-- Footer-theme-enable -->
                                <div class="form-group">
                                    <label for="nextGeneralFooterThemeEnable" class="col-sm-4 control-label">Footer-theme-enable：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_general_footer_theme_enable" id="nextGeneralFooterThemeEnable" value="true" ${((options.next_general_footer_theme_enable?default('true'))=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_general_footer_theme_enable" id="nextGeneralFooterThemeEnable" value="false" ${((options.next_general_footer_theme_enable?if_exists)=='false')?string('checked','')}> 禁用
                                        </label>
                                    </div>
                                </div>
                                <!-- Footer-theme-version -->
                                <div class="form-group">
                                    <label for="nextGeneralFooterThemeVersion" class="col-sm-4 control-label">Footer-theme-version：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_general_footer_theme_version" id="nextGeneralFooterThemeVersion" value="true" ${((options.next_general_footer_theme_version?default('true'))=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_general_footer_theme_version" id="nextGeneralFooterThemeVersion" value="false" ${((options.next_general_footer_theme_version?if_exists)=='false')?string('checked','')}> 禁用
                                        </label>
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
                                    <label for="nextStyleSidebarPosition" class="col-sm-4 control-label">Sidebar-position：</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="nextStyleSidebarPosition" name="next_style_sidebar_position">
                                            <option value="left" ${((options.next_style_sidebar_position?default('left'))=='left')?string('selected','')}>左侧</option>
                                            <option value="right" ${((options.next_style_sidebar_position?if_exists)=='right')?string('selected','')}>右侧</option>
                                        </select>
                                    </div>
                                </div>
                                <!-- sidebar-display -->
                                <div class="form-group">
                                    <label for="nextStyleSidebarDisplay" class="col-sm-4 control-label">Sidebar-display：</label>
                                    <div class="col-sm-8">
                                        <select class="form-control" id="nextStyleSidebarDisplay" name="next_style_sidebar_display">
                                            <option value="post" ${((options.next_style_sidebar_display?default('post'))=='post')?string('selected','')}>post</option>
                                            <option value="always" ${((options.next_style_sidebar_display?if_exists)=='always')?string('selected','')}>always</option>
                                            <option value="hide" ${((options.next_style_sidebar_display?if_exists)=='hide')?string('selected','')}>hide</option>
                                            <option value="remove" ${((options.next_style_sidebar_display?if_exists)=='remove')?string('selected','')}>remove</option>
                                        </select>
                                    </div>
                                </div>
                                <!-- sidebar-offset -->
                                <div class="form-group">
                                    <label for="nextStyleSidebarOffset" class="col-sm-4 control-label">Sidebar-offset：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextStyleSidebarOffset" name="next_general_footer_offset" value="${options.next_general_footer_offset?if_exists}" >
                                    </div>
                                </div>
                                <!-- sidebar-b2t -->
                                <div class="form-group">
                                    <label for="nextStyleSidebarB2t" class="col-sm-4 control-label">Sidebar-b2t：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_style_sidebar_b2t" id="nextStyleSidebarB2t" value="true" ${((options.next_style_sidebar_b2t?default('true'))=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_style_sidebar_b2t" id="nextStyleSidebarB2t" value="false" ${((options.next_style_sidebar_b2t?if_exists)=='false')?string('checked','')}> 禁用
                                        </label>
                                    </div>
                                </div>
                                <!-- sidebar-Scrollpercent -->
                                <div class="form-group">
                                    <label for="nextStyleSidebarScrollpercent" class="col-sm-4 control-label">Sidebar-Scrollpercent：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_style_sidebar_scrollpercent" id="nextStyleSidebarScrollpercent" value="true" ${((options.next_style_sidebar_scrollpercent?default('true'))=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_style_sidebar_scrollpercent" id="nextStyleSidebarScrollpercent" value="false" ${((options.next_style_sidebar_scrollpercent?if_exists)=='false')?string('checked','')}> 禁用
                                        </label>
                                    </div>
                                </div>
                                <!-- sidebar-onmobile -->
                                <div class="form-group">
                                    <label for="nextStyleSidebarOnmobile" class="col-sm-4 control-label">Sidebar-onmobile：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_style_sidebar_onmobile" id="nextStyleSidebarOnmobile" value="true" ${((options.next_style_sidebar_onmobile?default('true'))=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_style_sidebar_onmobile" id="nextStyleSidebarOnmobile" value="false" ${((options.next_style_sidebar_onmobile?if_exists)=='false')?string('checked','')}> 禁用
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
                                    <label for="nextOtherBaiduPush" class="col-sm-4 control-label">baidu_push：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_baidu_push" id="nextOtherBaiduPush" value="true" ${((options.next_other_baidu_push?default('true'))=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_baidu_push" id="nextOtherBaiduPush" value="false" ${((options.next_other_baidu_push?if_exists)=='false')?string('checked','')}> 禁用
                                        </label>
                                    </div>
                                </div>

                                <!--post_copyright-->
                                <div class="form-group">
                                    <label for="nextOtherPostCopyright" class="col-sm-4 control-label">post_copyright：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_post_copyright" id="nextOtherPostCopyright" value="true" ${((options.next_other_post_copyright?default('true'))=='true')?string('checked','')}> 开启
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="next_other_post_copyright" id="nextOtherPostCopyright" value="false" ${((options.next_other_post_copyright?if_exists)=='false')?string('checked','')}> 禁用
                                        </label>
                                    </div>
                                </div>

                                <!-- post_copyright_license -->
                                <div class="form-group">
                                    <label for="nextOtherPostCopyrightLicense" class="col-sm-4 control-label">post_copyright_license：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextOtherPostCopyrightLicense" name="next_other_post_copyright_license" value="${options.next_other_post_copyright_license?default('CC BY-NC-SA 3.0')}" >
                                    </div>
                                </div>

                                <!-- post_copyright_license_url -->
                                <div class="form-group">
                                    <label for="nextOtherPostCopyrightLicenseUrl" class="col-sm-4 control-label">post_copyright_license_url：</label>
                                    <div class="col-sm-8">
                                        <input type="text" class="form-control" id="nextOtherPostCopyrightLicenseUrl" name="next_other_post_copyright_license_url" value="${options.next_other_post_copyright_license_url?default('https://creativecommons.org/licenses/by-nc-sa/3.0/')}" >
                                    </div>
                                </div>
                            </div>
                            <div class="box-footer">
                                <button type="button" class="btn btn-primary btn-sm pull-right" onclick="saveThemeOptions('nextOtherOptions')">保存设置</button>
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
