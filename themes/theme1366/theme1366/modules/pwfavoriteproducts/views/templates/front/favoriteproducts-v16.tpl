{if $is_logged}
{capture name=path}
	<a href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}">
		{l s='My account' mod='pwfavoriteproducts'}</a>
		<span class="navigation-pipe">{$navigationPipe}</span>{l s='My favorite products.' mod='pwfavoriteproducts'}
{/capture}
{else}
{capture name=path}{l s='My favorite products.' mod='pwfavoriteproducts'}{/capture}
{/if}
<div id="favoriteproducts_block_account">
	<h2>{l s='My favorite products.' mod='pwfavoriteproducts'}</h2>
	{if $favoriteProducts}
		<div>
			{foreach from=$favoriteProducts item=favoriteProduct}
			<div class="favoriteproduct clearfix">
				<a href="{$link->getProductLink($favoriteProduct.id_product, null, null, null, null, $favoriteProduct.id_shop)|escape:'html':'UTF-8'}" class="product_img_link">
					<img src="{$link->getImageLink($favoriteProduct.link_rewrite, $favoriteProduct.image, 'medium_default')|escape:'html':'UTF-8'}" alt=""/></a>
				<h3><a href="{$link->getProductLink($favoriteProduct.id_product, null, null, null, null, $favoriteProduct.id_shop)|escape:'html':'UTF-8'}">{$favoriteProduct.name|escape:'html':'UTF-8'}</a></h3>
				<div class="product_desc">{$favoriteProduct.description_short|strip_tags|escape:'html':'UTF-8'}</div>

                <div class="button-container">
                    <p class="quantity_wanted_p">
                        <label>{l s='Количество' mod="pwfavoriteproducts"}</label>
                        <input type="number" min="1" name="qty" id="quantity_wanted{$favoriteProduct.id_product|intval}" class="text" value="1" />
                        <a href="#" data-field-qty="qty" class="btn btn-default button-minus product_quantity_down">
                            <span><i class="icon-minus"></i></span>
                        </a>
                        <a href="#" data-field-qty="qty" class="btn btn-default button-plus product_quantity_up">
                            <span><i class="icon-plus"></i></span>
                        </a>
                        <span class="clearfix"></span>
                    </p>
                    {capture}add=1&amp;id_product={$favoriteProduct.id_product|intval}{if isset($static_token)}&amp;token={$static_token}{/if}{/capture}
                    <a class="button pw_add_to_cart_button btn btn-default" href="{$link->getPageLink('cart', true, NULL, $smarty.capture.default, false)|escape:'html':'UTF-8'}" rel="nofollow" title="{l s='Add to cart'}" data-id-product="{$favoriteProduct.id_product|intval}" >
                        <span>{l s='Добавить в корзину' mod="pwfavoriteproducts"}</span>
                    </a>
                </div>

				<div class="remove">
					<img rel="ajax_id_favoriteproduct_{$favoriteProduct.id_product}" src="{$img_dir}icon/delete.gif" alt="" class="icon faved" />
				</div>
			</div>
			{/foreach}
		</div>
	{else}
		<p class="warning">{l s='No favorite products have been determined just yet. ' mod='pwfavoriteproducts'}</p>
	{/if}

	<ul class="footer_links">
		<li class="fleft">
            {if $is_logged}
			<a class="btn btn-default" href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}"><i class="fa fa-chevron-left"></i>{l s='Back to your account.' mod='pwfavoriteproducts'}</a>
            {else}
            <a class="btn btn-default" href="{$link->getPageLink('index', true)|escape:'html':'UTF-8'}"><i class="fa fa-chevron-left"></i>{l s='Вернуться на сайт.' mod='pwfavoriteproducts'}</a>
            {/if}
        </li>
	</ul>
</div>