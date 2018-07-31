<div style="padding: 10px 0; margin: 20px auto; width: 90%; text-align: center;">
    <div>{{ theme.reward_comment }}</div>
    <button id="rewardButton" disable="enable"
            onclick="var qr = document.getElementById('QR'); if (qr.style.display === 'none') {qr.style.display='block';} else {qr.style.display='none'}">
        <span>打赏</span>
    </button>
    <div id="QR" style="display: none;">

        {% if theme.wechatpay %}
        <div id="wechat" style="display: inline-block">
            <img id="wechat_qr" src="{{ theme.wechatpay }}" alt="{{ theme.author }} 微信支付"/>
            <p>微信支付</p>
        </div>
        {% endif %}

        {% if theme.alipay %}
        <div id="alipay" style="display: inline-block">
            <img id="alipay_qr" src="{{ theme.alipay }}" alt="{{ theme.author }} 支付宝"/>
            <p>支付宝</p>
        </div>
        {% endif %}

        {% if theme.bitcoin %}
        <div id="bitcoin" style="display: inline-block">
            <img id="bitcoin_qr" src="{{ theme.bitcoin }}" alt="{{ theme.author }} 比特币"/>
            <p>比特币</p>
        </div>
        {% endif %}

    </div>
</div>
