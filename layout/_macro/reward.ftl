<div style="padding: 10px 0; margin: 20px auto; width: 90%; text-align: center;">
    <div>${options.next_other_reward_comment?if_exists}</div>
    <button id="rewardButton" disable="enable" onclick="var qr = document.getElementById('QR'); if (qr.style.display === 'none') {qr.style.display='block';} else {qr.style.display='none'}">
        <span>打赏</span>
    </button>
    <div id="QR" style="display: none;">
        <#if options.next_other_wechatpay?if_exists !=''>
        <div id="wechat" style="display: inline-block">
            <img id="wechat_qr" src="${options.next_other_wechatpay}" alt="${user.DisplayName?if_exists} 微信支付"/>
            <p>微信支付</p>
        </div>
        </#if>

        <#if options.next_other_alipay?if_exists !=''>
        <div id="alipay" style="display: inline-block">
            <img id="alipay_qr" src="${options.next_other_alipay}" alt="${user.DisplayName?if_exists} 支付宝"/>
            <p>支付宝</p>
        </div>
        </#if>

        <#if options.next_other_bitcoin?if_exists !=''>
        <div id="bitcoin" style="display: inline-block">
            <img id="bitcoin_qr" src="${options.next_other_bitcoin}" alt="${user.DisplayName?if_exists} 比特币"/>
            <p>比特币</p>
        </div>
        </#if>

    </div>
</div>
