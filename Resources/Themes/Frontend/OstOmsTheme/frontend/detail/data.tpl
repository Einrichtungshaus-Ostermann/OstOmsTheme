
{* file to extend *}
{extends file="parent:frontend/detail/data.tpl"}



{* remove delivery information here *}
{block name="frontend_detail_data_delivery"}{/block}

{* remove tax information *}
{block name='frontend_detail_data_tax'}
    <p class="product--tax">
        {s name="detail-data-price-info-incl-shipping-costs"}
            {if $sOutputNet}zzgl.{else}inkl.{/if} MwSt.
            zzgl. {$sArticle[$theme.attribute_shipping_costs]|currency} Versandkosten
        {/s}
    </p>
{/block}
