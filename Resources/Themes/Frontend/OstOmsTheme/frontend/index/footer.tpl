
{* file to extend *}
{extends file="parent:frontend/index/footer.tpl"}



{* remove copyright and shopware logo *}
{block name='frontend_index_shopware_footer'}{/block}



{* 2nd row of service info *}
{block name='frontend_index_footer_menu'}

    {* 1st row *}
    {$smarty.block.parent}

    {* complete 2nd row *}
    <div class="footer--columns block-group">
        <div class="footer--column column--menu column--payments block">
            <div class="column--headline">{s name="footer-payments-header"}Zahlungsarten{/s}</div>
            <nav class="column--navigation column--content">
                <img  src="{link file='frontend/_public/src/img/footer-icons/payment-icons.jpg'}" alt="{s name="footer-payments-image-alt"}Zahlungsarten{/s}" title="{s name="footer-payments-image-title"}Zahlungsarten{/s}">
            </nav>
        </div>
        <div class="footer--column column--menu column--shipping-methods block">
            <div class="column--headline">{s name="footer-shipping-methods-header"}Versandarten{/s}</div>
            <nav class="column--navigation column--content">
                <img  src="{link file='frontend/_public/src/img/footer-icons/shipping-icons.jpg'}" alt="{s name="footer-shipping-methods-image-alt"}Versandarten{/s}" title="{s name="footer-shipping-methods-image-title"}Versandarten{/s}">
            </nav>
        </div>
        <div class="footer--column column--menu column--quality-seals block">
            <div class="column--headline">{s name="footer-quality-seals-header"}Geprüfte Leistung{/s}</div>
            <nav class="column--navigation column--content">
                <p>
                    {s name="footer-quality-seals-info"}Mit geprüfter Qualität, Sicherheit und Transparenz ist moebel-shop in hohem Maße vertrauenswürdig.{/s}
                    <img src="{link file='frontend/_public/src/img/quality-seal-icons/trusted-shops.jpg'}" alt="{s name="footer-quality-seals-trusted-shops-img-alt"}Trusted Shops{/s}" title="{s name="footer-quality-seals-trusted-shops-img-title"}Trusted Shops{/s}">
                </p>
            </nav>
        </div>
    </div>

{/block}
