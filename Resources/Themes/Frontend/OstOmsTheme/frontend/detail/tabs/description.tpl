
{* file to extend *}
{extends file="parent:frontend/detail/tabs/description.tpl"}



{* remove article name from description tab header *}
{block name='frontend_detail_description_title'}
    <div class="content--title">
        {s name="header-title"}Produktinformationen{/s}
    </div>
{/block}

{* remove content fields *}
{block name='frontend_detail_description_links'}{/block}
{block name='frontend_detail_description_our_comment'}{/block}
{block name='frontend_detail_description_downloads'}{/block}
