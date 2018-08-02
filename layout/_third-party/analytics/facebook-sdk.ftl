<#if options.next_other_facebook_sdk_enable?default('false') == 'true'>
<script>
  window.fbAsyncInit = function() {
    FB.init({
      appId      : '${options.next_other_facebook_sdk_app_id?if_exists}',
      xfbml      : true,
      version    : 'v2.10'
    });
  };

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "//connect.facebook.net/zh_hans/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
</script>
</#if>
