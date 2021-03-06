<?php declare(strict_types=1);

/**
 * Einrichtungshaus Ostermann GmbH & Co. KG - OMS Theme
 *
 * Online Moebel-Shop Theme
 *
 * 1.0.0
 * - initial release
 *
 * 1.0.1
 * - added composer.json and readme
 *
 * 1.0.2
 * - changed horizontal align of article-price on detail page
 * - added css to hide trusted shops badge
 *
 * 1.0.3
 * - added 3-column and 4-column listing layout
 *
 * 1.0.4
 * - fixed responsive listing
 *
 * 1.0.5
 * - added support for ost-article-family plugin
 *
 * 1.0.6
 * - added support for financing
 *
 * 1.0.7
 * - fixed financing
 *
 * 1.0.8
 * - hide payoultion financing in article details
 *
 * 1.0.9
 * - updated header
 * - updated payment and shipping footer icons
 * - updated footer for 3 columns
 * - updated emotion box
 * - updated background-color
 *
 * 1.0.10
 * - fixed logo
 * - fixed footer columns
 *
 * 1.0.11
 * - added css for concardis
 *
 * 1.0.12
 * - added shipping details
 *
 * 1.0.13
 * - removed buy buttons from listing
 * - moved shipping costs on article detail page
 * - switched position of price and pseudo-price in product boxes
 *
 * 1.0.14
 * - added product color badge
 *
 * 1.0.15
 * - removed variants with image-configurator without images
 *
 * 1.0.16
 * - fixed generating faulty urls when changing variants
 *
 * 1.0.17
 * - fixed image in 1x1 emotion product-box
 *
 * 1.0.18
 * - changed prices in product-box
 *
 * 1.0.19
 * - changed shipping-details snippets
 *
 * 1.0.20
 * - removed "plus shipping costs" link from ajax-cart
 *
 * 1.0.21
 * - removed percentage badge from product-box
 *
 * 1.0.22
 * - fixed percentage badge
 *
 * 1.0.23
 * - removed additional panel for enterprise search
 *
 * 1.0.24
 * - added google-site-verfication meta tag
 *
 * 1.0.25
 * - added jump-to-tab jquery for article detail page
 *
 * 1.0.26
 * - removed variant options without image
 *
 * 1.0.27
 * - changed search-result header
 *
 * 1.0.28
 * - added trusted-shops link
 *
 * 1.0.29
 * - removed additional information for enterprise live search in lower viewports
 *
 * 1.0.30
 * - fixed shipping-costs link for mobile viewport
 * - fixed missing snippets
 *
 * 1.0.31
 * - fixed google aggregated data
 *
 * 1.0.32
 * - added css for cookie-permission
 *
 * 1.0.33
 * - added css for pmsw-cookie-consent-pro plugin
 *
 * 1.0.34
 * - added delivery time for drop-shipping articles
 *
 * 1.0.35
 * - removed and changed snippets from finish page
 *
 * @package   OstOmsTheme
 *
 * @author    Eike Brandt-Warneke <e.brandt-warneke@ostermann.de>
 * @copyright 2018 Einrichtungshaus Ostermann GmbH & Co. KG
 * @license   proprietary
 */

namespace OstOmsTheme;

use Shopware\Components\Plugin;
use Shopware\Components\Plugin\Context;
use Symfony\Component\DependencyInjection\ContainerBuilder;

class OstOmsTheme extends Plugin
{
    /**
     * ...
     *
     * @param ContainerBuilder $container
     */
    public function build(ContainerBuilder $container)
    {
        // set plugin parameters
        $container->setParameter('ost_oms_theme.plugin_dir', $this->getPath() . '/');
        $container->setParameter('ost_oms_theme.view_dir', $this->getPath() . '/Resources/views/');

        // call parent builder
        parent::build($container);
    }

    /**
     * Activate the plugin.
     *
     * @param Context\ActivateContext $context
     */
    public function activate(Context\ActivateContext $context)
    {
        // clear complete cache after we activated the plugin
        $context->scheduleClearCache($context::CACHE_LIST_ALL);
    }

    /**
     * Install the plugin.
     *
     * @param Context\InstallContext $context
     *
     * @throws \Exception
     */
    public function install(Context\InstallContext $context)
    {
        // install the plugin
        $installer = new Setup\Install(
            $this,
            $context,
            $this->container->get('models'),
            $this->container->get('shopware_attribute.crud_service')
        );
        $installer->install();

        // update it to current version
        $updater = new Setup\Update(
            $this,
            $context
        );
        $updater->install();

        // call default installer
        parent::install($context);
    }

    /**
     * Update the plugin.
     *
     * @param Context\UpdateContext $context
     */
    public function update(Context\UpdateContext $context)
    {
        // update the plugin
        $updater = new Setup\Update(
            $this,
            $context
        );
        $updater->update($context->getCurrentVersion());

        // call default updater
        parent::update($context);
    }

    /**
     * Uninstall the plugin.
     *
     * @param Context\UninstallContext $context
     *
     * @throws \Exception
     */
    public function uninstall(Context\UninstallContext $context)
    {
        // uninstall the plugin
        $uninstaller = new Setup\Uninstall(
            $this,
            $context,
            $this->container->get('models'),
            $this->container->get('shopware_attribute.crud_service')
        );
        $uninstaller->uninstall();

        // clear complete cache
        $context->scheduleClearCache($context::CACHE_LIST_ALL);

        // call default uninstaller
        parent::uninstall($context);
    }
}
