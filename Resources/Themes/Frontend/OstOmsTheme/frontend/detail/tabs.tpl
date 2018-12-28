
{* file to extend *}
{extends file="parent:frontend/detail/tabs.tpl"}



{* tab navigation *}
{block name="frontend_detail_tabs_description"}

    {* smarty parent *}
    {$smarty.block.parent}

    {* append our tab *}
    <a href="#" class="tab--link" title="Versandinfo" data-tabName="shipping-details">Informationen zum Versand</a>

{/block}



{* tab content *}
{block name="frontend_detail_tabs_content_description"}

    {* smarty parent *}
    {$smarty.block.parent}

    {* our tab container *}
    <div class="tab--container">
        <div class="tab--header">
            <a href="#" class="tab--title" title="Versandinfo">Versandinfo</a>
        </div>
        <div class="tab--preview">
            Versandinfo hier...
        </div>
        <div class="tab--content">
            {include file="frontend/detail/tabs/shipping_details.tpl"}
        </div>
    </div>

{/block}
