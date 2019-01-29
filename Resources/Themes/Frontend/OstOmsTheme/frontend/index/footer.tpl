
{* file to extend *}
{extends file="parent:frontend/index/footer.tpl"}



{* remove copyright and shopware logo *}
{block name='frontend_index_shopware_footer'}{/block}




{block name='frontend_index_footer_menu'}

    {$smarty.block.parent}




    <div class="footer--columns block-group">




        <div class="footer--column column--menu column--payments block">
            <div class="column--headline">Zahlungsarten</div>
            <nav class="column--navigation column--content">



                <ul class="navigation--list" role="menu">


                    <li class="navigation--entry" role="menuitem">
                        <img  src="{link file='frontend/_public/src/img/payment-icons/paypal.jpg'}" alt="Paypal" title="Paypal">
                    </li>

                    <li class="navigation--entry" role="menuitem">
                        <img  src="{link file='frontend/_public/src/img/payment-icons/mastercard.jpg'}" alt="Mastercard" title="Mastercard">
                    </li>

                    <li class="navigation--entry" role="menuitem">
                        <img  src="{link file='frontend/_public/src/img/payment-icons/visa.jpg'}" alt="Visa" title="Visa">
                    </li>
                    <li class="navigation--entry" role="menuitem">
                        <img  src="{link file='frontend/_public/src/img/payment-icons/rechnung.jpg'}" alt="Rechnung" title="Rechnung">
                    </li>
                    <li class="navigation--entry" role="menuitem">
                        <img  src="{link file='frontend/_public/src/img/payment-icons/sofort.jpg'}" alt="SOFORT" title="SOFORT">
                    </li>
                    <li class="navigation--entry" role="menuitem">
                        <img  src="{link file='frontend/_public/src/img/payment-icons/credit-plus.jpg'}" alt="Credit Plus" title="Credit Plus">
                    </li>



                </ul>




            </nav>
        </div>


        <div class="footer--column column--menu column--shipping-methods block">
            <div class="column--headline">Versandarten</div>
            <nav class="column--navigation column--content">



                <ul class="navigation--list" role="menu">


                    <li class="navigation--entry" role="menuitem">
                        <img src="{link file='frontend/_public/src/img/shipping-icons/dhl.jpg'}" alt="DHL" title="DHL">
                    </li>

                    <li class="navigation--entry" role="menuitem">
                        <img src="{link file='frontend/_public/src/img/shipping-icons/hermes.jpg'}" alt="Hermes" title="Hermes">
                    </li>




                </ul>




            </nav>
        </div>




        <div class="footer--column column--menu column--social-media block">
            <div class="column--headline">Social Media</div>
            <nav class="column--navigation column--content">


                <p>Sie finden den Moebel-Shop in den bekannten Social Media Kanäle.:</p>





            </nav>
        </div>


        <div class="footer--column column--menu column--quality-seals block">
            <div class="column--headline">Geprüfte Leistung</div>
            <nav class="column--navigation column--content">


                <p>

                    Mit geprüfter Qualität, Sicherheit und Transparenz ist moebel-shop in hohem Maße vertrauenswürdig.


                    <img src="{link file='frontend/_public/src/img/quality-seal-icons/trusted-shops.jpg'}" alt="Trusted Shops" title="Trusted Shops">


                </p>






            </nav>
        </div>



    </div>

{/block}