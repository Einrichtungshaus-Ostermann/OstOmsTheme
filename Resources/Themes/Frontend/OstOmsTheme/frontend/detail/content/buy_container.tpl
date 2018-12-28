
{* file to extend *}
{extends file="parent:frontend/detail/content/buy_container.tpl"}




{* prepend article number here *}
{block name='frontend_detail_index_buy_container_inner'}



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


    </ul>

    {$smarty.block.parent}

{/block}



{* prepend delivery information in front of product actions *}
{block name='frontend_detail_index_actions'}



    {if ($sArticle.sConfiguratorSettings.type != 1 && $sArticle.sConfiguratorSettings.type != 2) || $activeConfiguratorSelection == true}
        {include file="frontend/plugins/index/delivery_informations.tpl" sArticle=$sArticle}
    {/if}


    {$smarty.block.parent}

{/block}




{* remove base information to set them on top of the buy container *}
{block name='frontend_detail_index_buy_container_base_info'}{/block}



