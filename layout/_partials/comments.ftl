<#macro comment post,type>
    <#if !post.disallowComment!false>
        <script src="https://unpkg.com/vue"></script>
        <script src="/static/js/halo-comment.min.js"></script>
        <halo-comment id="${post.id}" type="${type}"/>
    </#if>
</#macro>