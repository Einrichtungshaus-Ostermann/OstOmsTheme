
{* file to extend *}
{extends file="parent:frontend/index/header.tpl"}



{* add google meta tag *}
{block name='frontend_index_header_meta_tags_opengraph'}

    {* google meta tag *}
    <meta name="google-site-verification" content="cXfSTtun0XQEb7KIfR7qFUXXRDiFCyq7483UsRKQsWE" />

    {* append parent *}
    {$smarty.block.parent}

{/block}
