
{* file to extend *}
{extends file="parent:frontend/detail/content/buy_container.tpl"}



{* prepend article number here *}
{block name='frontend_detail_index_buy_container_inner'}

    {* article number and supplier *}
    <ul class="product--base-info list--unstyled">
        <li class="base-info--entry entry--sku">
            <strong class="entry--label">
                {s name="DetailDataId" namespace="frontend/detail/data"}{/s}
            </strong>
            <meta itemprop="productID" content="{$sArticle.articleDetailsID}"/>
            <span class="entry--content" itemprop="sku">
                {$sArticle.ordernumber}
            </span>
        </li>
        <li class="base-info--entry entry--sku">
            <strong class="entry--label">
                {s name="supplier-name"}Hersteller{/s}
            </strong>
            <span class="entry--content">
                {$sArticle.supplierName}
            </span>
        </li>
    </ul>

    {* append the parent *}
    {$smarty.block.parent}

{/block}



{* prepend delivery information in front of product actions *}
{block name='frontend_detail_index_actions'}



    {* special case: company = ostermann && fullservice price *}
    {if $sArticle[$theme.attribute_company] == "1" && $sArticle[$theme.attribute_fullservice] == "2"}

        {* do not show anything *}

    {else}


        {* free shipping?! *}
        {if $sArticle[$theme.attribute_shipping_costs]|floatval == 0}

            <div class="shipping-costs--free">Kostenloser Versand</div>

        {else}

            <div class="shipping-costs">
            Versand: {$sArticle[$theme.attribute_shipping_costs]|currency}
            </div>

        {/if}

    {/if}




    {* delivery information depending on variant *}
    {if ($sArticle.sConfiguratorSettings.type != 1 && $sArticle.sConfiguratorSettings.type != 2) || $activeConfiguratorSelection == true}
        {include file="frontend/plugins/index/delivery_informations.tpl" sArticle=$sArticle}
    {/if}

    {* append the parent *}
    {$smarty.block.parent}

{/block}



{* remove base information to set them on top of the buy container *}
{block name='frontend_detail_index_buy_container_base_info'}{/block}
