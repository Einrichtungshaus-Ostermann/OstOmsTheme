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
    protected $javascript = [
    ];
}
