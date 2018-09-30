<div id="uipw-form_goods_modal">
    <div class="goods_info">
        <div class="goods_img">
            <img id="bigpic" itemprop="image" src=""/>
        </div>
        <div class="title"></div>
        <div class="price"><span class="current-price"></span> <sup class="discount"></sup></div>

    </div>
    <div class="goods_order">
        <form method="POST" action="{$order.link}" id="pworderform">
            <div class="title">{l s='Форма заказа' mod='pwoneclick'}</div>
            <div class="system_error"></div>
            <div class="uipw-modal_form_fields">
                <div class="form-group" class="form-group">
                    <input name="firstname" id="goods_name" type="text" tabindex="1" class="form-control" placeholder="{l s='Имя' mod='pwoneclick'}*"/>
                    <div class="firstname_error"></div>
                </div>
                <div class="form-group">
                  <input name="phone" id="goods_phone" type="tel" tabindex="2" class="form-control" placeholder="{l s='Телефон' mod='pwoneclick'}{if $config['phone']}*{/if}"/>
                  <div class="phone_error"></div>
                </div>
                {if $config['showemail']}
                <div class="form-group">
                    <input name="email" id="goods_email" type="email" tabindex="3" class="form-control" placeholder="{l s='E-mail' mod='pwoneclick'}{if $config['email']}*{/if}"/>
                    <div class="email_error"></div>
                </div>
                {/if}
                {if $config['comment']}
                <div class="form-group">
                    <textarea name="comment" id="goods_comment" type="comment" tabindex="3" class="form-control" placeholder="{l s='Комментарий' mod='pwoneclick'}"/>
                    <div class="email_error"></div>
                </div>
                {/if}
                <div class="form-group">
                    <label>
                      {l s='Нажимая на кнопку' mod='pwpersonaldata'} {l s=', я даю согласие на' mod='pwpersonaldata'} <a href="/content/11-protect-personal-data">{l s='обработку персональных данных' mod='pwpersonaldata'}</a>
                    </label>
                </div>
                <input type="hidden" name="id_product" value=""/>
                <input type="submit" value="{l s='Заказать' mod='pwoneclick'} &rarr;" tabindex="4" class="btn btn-primary btn-md"/>
                <div class="pleace_wait alert alert-info">{l s='Происходит оформление заказа, ожидайте...' mod='pwoneclick'}</div>
            </div>
        </form>
    </div>
    <section class="uipw-form_success alert alert-success"></section>
</div>
