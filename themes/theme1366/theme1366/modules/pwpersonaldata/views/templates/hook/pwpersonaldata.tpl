{*
* 2007-2017 PrestaWeb.ru
*
* @author    PrestaWeb.ru <info@prestaweb.ru>
* @link      http://prestaweb.ru/
* @copyright 2007-2017 PrestaWeb.ru
* @license   http://www.opensource.org/licenses/osl-3.0.php  Open Software License (OSL 3.0)
*}
{if !$hideForm}
<div class="panel panel-default {if $onLeft}onLeft{/if}" id="pwpersonaldata" style="display:none;">
    <div class="panel-body">{$pwpersonaldata}&nbsp;<a href="{$personaldatalink}">ПОЛИТИКЕ КОНФИДЕНЦИАЛЬНОСТИ.</a></div>
    <div class="panel-footer">
        <a class="btn btn-md btn-secondary succs">{l s="Хорошо"}</a>
    </div>
</div>
{/if}
<span id="pwConfLink" style="display:none;">{l s="Нажимая на кнопку"} <span class="btnName"></span>{l s=", я даю согласие на"} <a href="{$cmsConflink}">{l s="обработку персональных данных"}</a><span>