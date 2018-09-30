<div class="uipw-form_goods_modal_button_icon_container">
    <a class="btn btn-sm btn-primary uipw-form_goods_modal uipw-form_goods_modal_button_icon" {if $page_name=='product'}id="pwoneclick"{/if} href="#uipw-form_goods_modal"
       data-pwoneclick-old-price="{$product.old_price}"
       data-pwoneclick-image="{$product.image_url}"
       data-pwoneclick-name="{$product.name}"
       data-pwoneclick-id="{$product.id}"
       data-pwoneclick-price="{$product.price}"
       title="{l s='Купить в 1 клик' mod='pwoneclick'}">
        <span>{l s='Купить в 1 клик' mod='pwoneclick'}</span>
       </a>
</div>
<div class="uipw-form_goods_modal_button_container">
  <p class="no-print">
    <a class="btn btn-md btn-primary uipw-form_goods_modal" {if $page_name=='product'}id="pwoneclick"{/if} href="#uipw-form_goods_modal"
       data-pwoneclick-old-price="{$product.old_price}"
       data-pwoneclick-image="{$product.image_url}"
       data-pwoneclick-name="{$product.name}"
       data-pwoneclick-id="{$product.id}"
       data-pwoneclick-price="{$product.price}">{l s='Купить в 1 клик' mod='pwoneclick'}</a>
  </p>
</div>