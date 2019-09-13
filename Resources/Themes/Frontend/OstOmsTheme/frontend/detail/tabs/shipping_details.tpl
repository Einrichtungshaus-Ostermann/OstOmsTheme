
{* set namespace *}
{namespace name="frontend/detail/tabs/shipping_info"}



{* offcanvas button *}
<div class="buttons--off-canvas">
    <a href="#" title="{"{s name="OffcanvasCloseMenu" namespace="frontend/detail/description"}{/s}"|escape}" class="close--off-canvas">
        <i class="icon--arrow-left"></i>
        {s name="OffcanvasCloseMenu" namespace="frontend/detail/description"}{/s}
    </a>
</div>

{* actual content *}
<div class="content--shipping-details">

    <div class="content--title">
        {s name="shipping-details-title"}Informationen zum Versand{/s}
    </div>

    <div class="product--description">

        {if $sArticle[$theme.attribute_shipping_method] == "P"}

            {s name="shipping-details-content-dhl"}
                Ihre Bestellung versenden wir mit dem Paketdienst DHL. Sobald die
                Ware unser Lager verlassen hat, erhalten Sie eine E-Mail mit Ihrer
                Sendungsverfolgung.

                {if $sArticle[$theme.attribute_shipping_costs]|floatval == 0}
                    Der Versand ist kostenlos.
                {else}
                    Die Versandkosten belaufen sich auf {$sArticle[$theme.attribute_shipping_costs]|currency}
                    innerhalb von Deutschland.
                {/if}
            {/s}

        {else}

            {s name="shipping-details-content-hermes"}
                Lieferung nach Hause (Spedition)
                <ul>
                    <li>Wir beliefern Sie mit der Möbelspedition HERMES.</li>
                    <li>Wir liefern Ihre Möbel durch ein qualifiziertes 2-Mann-Team bis zum Verwendungsort in
                        ihre Wohnung oder Ihrem Haus, Sie brauchen also nicht mit anfassen.</li>
                    <li>Die Entsorgung des Verpackungsmaterials ist Bestandteil des Service.
                    <li>Sie werden telefonisch von HERMES benachrichtigt sobald sich Ihre Ware im ausliefernden
                        Depot befindet.</li>
                    <li>Mögliche Anlieferungszeiträume sind Montags-Freitags zwischen 7:00 und 11:00Uhr, 11:00 und
                        14:00 oder 13:00 und 18:00 Uhr.</li>
                    <li>Anlieferungen am Samstag sind für 45 € Aufpreis möglich.</li>
                </ul>

                {if $sArticle[$theme.attribute_shipping_costs]|floatval == 0}
                    Der Versand ist kostenlos.
                {else}
                    Die Versandkosten belaufen sich auf {$sArticle[$theme.attribute_shipping_costs]|currency}
                    innerhalb von Deutschland.
                {/if}
            {/s}

        {/if}

    </div>

</div>
