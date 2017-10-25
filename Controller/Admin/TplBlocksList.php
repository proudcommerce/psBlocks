<?php

/**
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * @copyright (c) Proud Sourcing GmbH | 2017
 * @link www.proudcommerce.com
 * @package psBlocks
 * @version 2.0.0
 **/

namespace ProudSourcing\psBlocks\Controller\Admin;

class TplBlocksList extends \OxidEsales\Eshop\Application\Controller\Admin\AdminListController
{
    /**
     * Current class template name.
     * @var string
     */
    protected $_sThisTemplate = 'psblocks_tplblockslist.tpl';

    /**
     * Name of chosen object class (default null).
     *
     * @var string
     */
    protected $_sListClass = "psblocks_tplblocks";

    /**
     * Default SQL sorting parameter (default null).
     *
     * @var string
     */
    protected $_sDefSortField = 'oxblockname';


    /**
     * Calls parent::render() and returns name of template to render
     *
     * @return string
     */
    public function render()
    {
        parent::render();
        $this->_aViewData["where"] = \OxidEsales\Eshop\Core\Registry::getConfig()->getRequestParameter("where");
        return $this->_sThisTemplate;
    }


    /**
     * search information
     *
     * @param array $aWhere SQL condition array
     * @param string $sqlFull SQL query string
     *
     * @return $sQ
     */
    protected function _prepareWhereQuery($aWhere, $sqlFull)
    {
        $sQ = parent::_prepareWhereQuery($aWhere, $sqlFull);
        $sTable = getViewName("oxtplblocks");
        return $sQ;
    }
}
