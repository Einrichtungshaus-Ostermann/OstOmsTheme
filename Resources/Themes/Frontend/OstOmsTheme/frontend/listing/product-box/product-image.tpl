
{* file to extend *}
{extends file="parent:frontend/listing/product-box/product-image.tpl"}



{* add product color-badge *}
{block name='frontend_listing_box_article_image_element'}

    {* show the color-badge? *}
    {if $sArticle[$theme.attribute_color_badge] === true || $sArticle[$theme.attribute_color_badge] === "1"}
        <img class="product--color-badge" src="{link file='frontend/_public/src/img/product-color-badge/badge-300x162.png'}" style="">
    {/if}

    {* smarty parent *}
    {$smarty.block.parent}

{/block}
