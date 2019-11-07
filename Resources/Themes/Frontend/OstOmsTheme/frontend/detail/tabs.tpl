
{* file to extend *}
{extends file="parent:frontend/detail/tabs.tpl"}



{* tab navigation *}
{block name="frontend_detail_tabs_description"}

    {* smarty parent *}
    {$smarty.block.parent}

    {* append our tab *}
    <a href="#" class="tab--link" title="Versandinfo" data-tabName="shipping-details">{s name="shipping-details-tab-title"}Informationen zum Versand{/s}</a>

{/block}



{* tab content *}
{block name="frontend_detail_tabs_content_description"}

    {* smarty parent *}
    {$smarty.block.parent}

    {* our tab container *}
    <div class="tab--container" data-jumpToTab="shipping-details">
        <div class="tab--header">
            <a href="#" class="tab--title" title="{s name="shipping-details-title"}Versandinfo{/s}">{s name="shipping-details-title"}Versandinfo{/s}</a>
        </div>
        <div class="tab--preview">
            {s name="shipping-details-preview"}Weitere Informationen zum Versand...{/s}
        </div>
        <div class="tab--content">
            {include file="frontend/detail/tabs/shipping_details.tpl"}
        </div>
    </div>

{/block}
