<?php declare(strict_types=1);

/**
 * Einrichtungshaus Ostermann GmbH & Co. KG - OMS Theme
 *
 * @package   OstOmsTheme
 *
 * @author    Eike Brandt-Warneke <e.brandt-warneke@ostermann.de>
 * @copyright 2018 Einrichtungshaus Ostermann GmbH & Co. KG
 * @license   proprietary
 */

namespace Shopware\Themes\OstOmsTheme;

use Shopware\Components;

class Theme extends Components\Theme
{
    /**
     * ...
     *
     * @var string
     */
    protected $extend = 'Responsive';

    /**
     * ...
     *
     * @var string
     */
    protected $name = 'Online Moebel-Shop Theme';

    /**
     * ...
     *
     * @var string
     */
    protected $description = 'Online Moebel-Shop Theme';

    /**
     * ...
     *
     * @var string
     */
    protected $author = 'Einrichtungshaus Ostermann GmbH & Co. KG';

    /**
     * ...
     *
     * @var string
     */
    protected $license = 'New BSD';

    /**
     * ...
     *
     * @var bool
     */
    protected $injectBeforePlugins = false;

    /**
     * ...
     *
     * @var array
     */
    protected $javascript = [];

    /**
     * {@inheritdoc}
     */
    public function createConfig(Components\Form\Container\TabContainer $container)
    {
        // create our attribute tab
        $tab = $this->createTab("attribute_tab", "Attribute");

        // create fieldset
        $fieldset = $this->createFieldSet("attribute_fieldset", "Attribute");

        // create every fieldset
        $fieldset->addElement($this->createTextField("attribute_company", "Firma", "attr1"));
        $fieldset->addElement($this->createTextField("attribute_shipping_costs", "Versandkosten", "attr8"));
        $fieldset->addElement($this->createTextField("attribute_shipping_method", "Versandart", "attr13"));
        $fieldset->addElement($this->createTextField("attribute_delivery_time", "Lieferzeit", "attr12"));
        $fieldset->addElement($this->createTextField("attribute_dispo", "Disposition", "attr11"));
        $fieldset->addElement($this->createTextField("attribute_fullservice", "Vollservice", "attr18"));
        $fieldset->addElement($this->createTextField("attribute_assembly_surcharge", "Montagekosten", "attr16"));

        // add it
        $tab->addElement($fieldset);
        $container->addTab($tab);
    }
}
