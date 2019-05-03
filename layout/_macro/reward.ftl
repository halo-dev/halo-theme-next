<div style="padding: 10px 0; margin: 20px auto; width: 90%; text-align: center;">
    <div>${settings.reward_comment!}</div>
    <button id="rewardButton" disable="enable" onclick="var qr = document.getElementById('QR'); if (qr.style.display === 'none') {qr.style.display='block';} else {qr.style.display='none'}">
        <span>打赏</span>
    </button>
    <div id="QR" style="display: none;">
    <#if settings.wechatpay??>
        <div id="wechat" style="display: inline-block">
            <img id="wechat_qr" src="${settings.wechatpay}" alt="${user.nickname!} 微信支付"/>
            <p>微信支付</p>
        </div>
    </#if>

    <#if settings.alipay??>
        <div id="alipay" style="display: inline-block">
            <img id="alipay_qr" src="${settings.alipay}" alt="${user.nickname!} 支付宝"/>
            <p>支付宝</p>
        </div>
    </#if>

    <#if settings.bitcoin??>
        <div id="bitcoin" style="display: inline-block">
            <img id="bitcoin_qr" src="${settings.bitcoin}" alt="${user.nickname!} 比特币"/>
            <p>比特币</p>
        </div>
    </#if>
    </div>
</div>
