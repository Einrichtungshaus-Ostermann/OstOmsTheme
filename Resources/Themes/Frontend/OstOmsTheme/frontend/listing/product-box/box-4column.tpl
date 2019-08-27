
{* file to extend *}
{extends file='parent:frontend/listing/product-box/box-basic.tpl'}



{* add box--basic class as well *}
{block name="frontend_listing_box_article"}
    {$productBoxLayout = "basic box--4column"}
    {$smarty.block.parent}
{/block}

{* overwrite detail button *}
{block name="frontend-listing-product-box--detail-button-label"}
    {$label = "{s name="listing-detail-button--4-column" namespace="frontend/listing/box_article" force}Info{/s}"}

    <a href="{$url}" class="buybox--button block btn is--center" title="{$label} - {$title}">
        {$label}
    </a>
{/block}
