<a class="" href="#" id="{if !$isCustomerFavoriteProduct}pwfavoriteAdd{else}pwfavoriteRemove{/if}" rel="nofollow"  title="{l s='Add to my wishlist' mod='pwfavoriteproducts'}">
  {if !$isCustomerFavoriteProduct}{$favorite_products_add}{else}{$favorite_products_remove}{/if}
</a>