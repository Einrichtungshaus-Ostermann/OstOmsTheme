
{* file to extend *}
{extends file="parent:frontend/index/footer-navigation.tpl"}



{* capture everything *}
{block name='frontend_index_footer_column_service_hotline'}
    {capture name="footer_service_hotline"}
        {$smarty.block.parent}
    {/capture}
{/block}

{block name='frontend_index_footer_column_service_menu'}
    {capture name="footer_service_menu"}
        {$smarty.block.parent}
    {/capture}
{/block}

{block name='frontend_index_footer_column_information_menu'}
    {capture name="footer_information_menu"}
        {$smarty.block.parent}
    {/capture}
{/block}



{* and drop everything in a different order *}
{block name="frontend_index_footer_column_newsletter"}
    {$smarty.capture.footer_information_menu}
    {$smarty.capture.footer_service_menu}
    {$smarty.capture.footer_service_hotline}
{/block}
