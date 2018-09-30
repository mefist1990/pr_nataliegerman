{*
* 2002-2015 TemplateMonster
*
* TM Homepage Category Gallery
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
* @author     TemplateMonster (Alexander Grosul)
* @copyright  2002-2015 TemplateMonster
* @license    http://opensource.org/licenses/GPL-2.0 General Public License (GPL 2.0)
*}
{if isset($items) && $items}
  <div class="tmhomepagecategorygallery-block">
    <ul id="tmhomepagecategorygallery" class="tmhomepagecategorygallery">
      {foreach from=$items item=item name=slide}
        <li id="tmhomepagecategorygallery-item-{$smarty.foreach.slide.iteration|escape:'htmlall':'UTF-8'}" class="item-{$item.id_item|escape:'htmlall':'UTF-8'} item{if isset($item.specific_class) && $item.specific_class} {$item.specific_class|escape:'htmlall':'UTF-8'}{/if}">
          <a href="{$link->getCategoryLink($item.category->id_category|escape:'htmlall':'UTF-8')}" title="{$item.category->name|escape:'htmlall':'UTF-8'}">
            {if $item.category->id_image}
              <img class="img-responsive" src="{$link->getCatImageLink($item.category->link_rewrite, $item.category->id_image, 'category_default')|escape:'htmlall':'UTF-8'}" alt="{$item.category->name|escape:'html':'UTF-8'}" />
            {else}
              <img class="img-responsive" src="{$link->getCatImageLink($item.category->link_rewrite, $lang_iso, 'default-category_default')|escape:'htmlall':'UTF-8'}" alt="{$item.category->name|escape:'html':'UTF-8'}" />
            {/if}
          </a>
          {if $item.display_name || $item.display_description || $item.button}
            <div class="tmhomepagecategorygallery-content">
              {if $item.content}
                <div class="tmhomepagecategorygallery-html">
                  {$item.content}
                </div>
              {/if}
              {if $item.display_name}
                <h3 class="tmhomepagecategorygallery-name">
                  {if $item.name_length > 0}
                    {$item.category->name|truncate:$item.name_length:'..'|escape:'htmlall':'UTF-8'}
                  {else}
                    {$item.category->name|escape:'htmlall':'UTF-8'}
                  {/if}
                </h3>
              {/if}
              {if $item.display_description}
                <div class="tmhomepagecategorygallery-description">
                  {if $item.description_length > 0}
                    {$item.category->description|strip_tags|truncate:$item.description_length:'..'|escape:'htmlall':'UTF-8'}
                  {else}
                    {$item.category->description}
                  {/if}
                </div>
              {/if}
              {if $item.button}
                <a href="{$link->getCategoryLink($item.category->id_category|escape:'htmlall':'UTF-8')}" class="tmhomepagecategorygallery-button btn btn-md btn-default">{l s='Shop now' mod='tmhomepagecategorygallery'}</a>
              {/if}
            </div>
          {/if}
        </li>
      {/foreach}
    </ul>
  </div>
{/if}