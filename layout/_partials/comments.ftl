<#macro comment post,type>
    <#if post??>
        <#if !post.disallowComment!false>
            <script src="${theme_base!}/source/lib/vue/vue.min.js"></script>
            <script src="${options.comment_internal_plugin_js!'https://unpkg.com/halo-comment@latest/dist/halo-comment.min.js'}"></script>
            <halo-comment id="${post.id?c}" type="${type}"/>
        </#if>
    </#if>
</#macro>