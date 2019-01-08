
{* file to extend *}
{extends file="parent:frontend/detail/actions.tpl"}



{* add our article-question link after everything else *}
{block name='frontend_detail_actions_voucher'}

    {* append *}
    {$smarty.block.parent}

    {* do we have an inquiry link? *}
    {if $sInquiry}
        <a href="{$sInquiry}" class="action--link link--article-question" rel="nofollow" title="{"{s name='article-question-link'}Fragen zum Artikel{/s}"|escape}">
            <i class="icon--chat"></i> {s name="article-question-link"}Fragen zum Artikel{/s}
        </a>
    {/if}

{/block}
