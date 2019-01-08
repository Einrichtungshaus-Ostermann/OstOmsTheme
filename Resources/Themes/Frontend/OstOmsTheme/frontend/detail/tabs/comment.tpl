
{* file to extend *}
{extends file="parent:frontend/detail/tabs/comment.tpl"}



{* remove article name from comment tab header *}
{block name='frontend_detail_tabs_rating_title'}
    <div class="content--title">
        {s name="header-title"}Bewertungen{/s}
    </div>
{/block}

