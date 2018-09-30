{**
* 2002-2016 TemplateMonster
*
* TM Category Products
*
* NOTICE OF LICENSE
*
* This source file is subject to the General Public License (GPL 2.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/GPL-2.0
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade the module to newer
* versions in the future.
*
*  @author    TemplateMonster
*  @copyright 2002-2016 TemplateMonster
*  @license   http://opensource.org/licenses/GPL-2.0 General Public License (GPL 2.0)
*}
{if isset($blocks) && $blocks}
  {foreach from=$blocks item='block' name='block'}
    {assign var="block_identificator" value="{$smarty.foreach.block.iteration}_{$block.id}"}
    <section id="block-category-{$block_identificator|escape:'htmlall':'UTF-8'}" class="block category-block wow fadeInUp">
      <h4>
        {if $block.id != 2}
          <a href="{$link->getCategoryLink($block.id)|escape:'html':'UTF-8'}">
            {$block.name|escape:'htmlall':'UTF-8'}
          </a>
        {else}
          {$block.name|escape:'htmlall':'UTF-8'}
        {/if}
      </h4>
      {if isset($block.products) && $block.products}
        {assign var='products' value=$block.products}
        {include file="$tpl_dir./product-list.tpl"}
      {else}
        <p class="alert alert-warning">{l s='No products in this category.' mod='tmcategoryproducts'}</p>
      {/if}
    </section>
    {if $block.use_carousel}
    {literal}
      <script type="text/javascript">
        $(document).ready(function(){
          setNbCatItems({/literal}{$block.carousel_settings.carousel_nb|escape:'htmlall':'UTF-8'}{literal});
          tmCategoryCarousel{/literal}{$block_identificator|escape:'htmlall':'UTF-8'}{literal} = $('#block-category-{/literal}{$block_identificator|escape:'htmlall':'UTF-8'}{literal} > ul').bxSlider({
            responsive:true,
            useCSS: false,
            minSlides: carousel_nb_new,
            maxSlides: carousel_nb_new,
            slideWidth: {/literal}{$block.carousel_settings.carousel_slide_width|escape:'htmlall':'UTF-8'}{literal},
            slideMargin: {/literal}{$block.carousel_settings.carousel_slide_margin|escape:'htmlall':'UTF-8'}{literal},
            infiniteLoop: {/literal}{$block.carousel_settings.carousel_loop|escape:'htmlall':'UTF-8'}{literal},
            hideControlOnEnd: {/literal}{$block.carousel_settings.carousel_hide_control|escape:'htmlall':'UTF-8'}{literal},
            randomStart: {/literal}{$block.carousel_settings.carousel_random|escape:'htmlall':'UTF-8'}{literal},
            moveSlides: {/literal}{$block.carousel_settings.carousel_item_scroll|escape:'htmlall':'UTF-8'}{literal},
            pager: {/literal}{$block.carousel_settings.carousel_pager|escape:'htmlall':'UTF-8'}{literal},
            autoHover: {/literal}{$block.carousel_settings.carousel_auto_hover|escape:'htmlall':'UTF-8'}{literal},
            auto: {/literal}{$block.carousel_settings.carousel_auto|escape:'htmlall':'UTF-8'}{literal},
            speed: {/literal}{$block.carousel_settings.carousel_speed|escape:'htmlall':'UTF-8'}{literal},
            pause: {/literal}{$block.carousel_settings.carousel_auto_pause|escape:'htmlall':'UTF-8'}{literal},
            controls: {/literal}{$block.carousel_settings.carousel_control|escape:'htmlall':'UTF-8'}{literal},
            autoControls: {/literal}{$block.carousel_settings.carousel_auto_control|escape:'htmlall':'UTF-8'}{literal},
            startText:'',
            stopText:'',
          });
          var tm_cps_doit;
          $(window).resize(function () {
            clearTimeout(tm_cps_doit);
            tm_cps_doit = setTimeout(function() {
              resizedwtm_cps{/literal}{$block_identificator|escape:'htmlall':'UTF-8'}{literal}();
            }, 201);
          });
        });
        function resizedwtm_cps{/literal}{$block_identificator|escape:'htmlall':'UTF-8'}{literal}(){
          setNbCatItems({/literal}{$block.carousel_settings.carousel_nb|escape:'htmlall':'UTF-8'}{literal});
          tmCategoryCarousel{/literal}{$block_identificator|escape:'htmlall':'UTF-8'}{literal}.reloadSlider({
            responsive:true,
            useCSS: false,
            minSlides: carousel_nb_new,
            maxSlides: carousel_nb_new,
            slideWidth: {/literal}{$block.carousel_settings.carousel_slide_width|escape:'htmlall':'UTF-8'}{literal},
            slideMargin: {/literal}{$block.carousel_settings.carousel_slide_margin|escape:'htmlall':'UTF-8'}{literal},
            infiniteLoop: {/literal}{$block.carousel_settings.carousel_loop|escape:'htmlall':'UTF-8'}{literal},
            hideControlOnEnd: {/literal}{$block.carousel_settings.carousel_hide_control|escape:'htmlall':'UTF-8'}{literal},
            randomStart: {/literal}{$block.carousel_settings.carousel_random|escape:'htmlall':'UTF-8'}{literal},
            moveSlides: {/literal}{$block.carousel_settings.carousel_item_scroll|escape:'htmlall':'UTF-8'}{literal},
            pager: {/literal}{$block.carousel_settings.carousel_pager|escape:'htmlall':'UTF-8'}{literal},
            autoHover: {/literal}{$block.carousel_settings.carousel_auto_hover|escape:'htmlall':'UTF-8'}{literal},
            auto: {/literal}{$block.carousel_settings.carousel_auto|escape:'htmlall':'UTF-8'}{literal},
            speed: {/literal}{$block.carousel_settings.carousel_speed|escape:'htmlall':'UTF-8'}{literal},
            pause: {/literal}{$block.carousel_settings.carousel_auto_pause|escape:'htmlall':'UTF-8'}{literal},
            controls: {/literal}{$block.carousel_settings.carousel_control|escape:'htmlall':'UTF-8'}{literal},
            autoControls: {/literal}{$block.carousel_settings.carousel_auto_control|escape:'htmlall':'UTF-8'}{literal},
            startText:'',
            stopText:'',
          });
        }

        function setNbCatItems(countItems)
        {
          if ($('.category-block').width() < 480)
            carousel_nb_new = 1;
          if ($('.category-block').width() >= 480)
            carousel_nb_new = 2;
          if($('.category-block').width() > 840)
            carousel_nb_new = countItems;
        }
      </script>
    {/literal}
    {/if}
  {/foreach}
{/if}