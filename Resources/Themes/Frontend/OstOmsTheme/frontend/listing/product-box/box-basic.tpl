
{* file to extend *}
{extends file="parent:frontend/listing/product-box/box-basic.tpl"}



{* remove product actions *}
{block name='frontend_listing_box_article_actions'}{/block}



{* add article details and article buy button *}
{block name="frontend_listing_box_article_buy"}

    {* button container *}
    <div class="product--btn-container {if $sArticle.allowBuyInListing}has--buy-button{else}has--no-buy-button{/if}">

        {* form for both buttons *}
        <form name="sAddToBasket"
              method="post"
              action="{url controller=checkout action=addArticle}"
              class="buybox--form"
              data-add-article="true"
              data-eventName="submit"
              {if $theme.offcanvasCart}
                  data-showModal="false"
                  data-addArticleUrl="{url controller=checkout action=ajaxAddArticleCart}"
              {/if}>

            {* hidden form field for article number *}
            <input type="hidden" name="sAdd" value="{$sArticle.ordernumber}"/>

            {* parameters for detail button *}
            {$url = {$sArticle.linkDetails} }
            {$title = {$sArticle.articleName|escapeHtml} }
            {$label = "{s name="listing-detail-button" namespace="frontend/listing/box_article"}Zum Produkt{/s}"}

            {* detail button *}
            <a href="{$url}" class="buybox--button block btn is--center" title="{$label} - {$title}">
                {$label}
            </a>

            {* parameters for buy button*}
            {$label = "{s namespace="frontend/listing/box_article" name="listing-buy-button"}Bestellen{/s}"}

            {* buy button *}
            <button class="buybox--button block btn is--primary is--center">
                {$label}
            </button>

        </form>

    </div>

{/block}
