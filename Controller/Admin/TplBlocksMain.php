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

namespace ProudSourcing\Blocks\Controller\Admin;

class TplBlocksMain extends \OxidEsales\Eshop\Application\Controller\Admin\AdminController
{
    /**
     * Loads blocks info, passes it to Smarty engine and
     * returns name of template file "psblocks_tplblocksmain.tpl".
     *
     * @return string
     */
    public function render()
    {
        $soxId = \OxidEsales\Eshop\Core\Registry::getConfig()->getRequestParameter("oxid");
        // check if we right now saved a new entry
        $sSavedID = \OxidEsales\Eshop\Core\Registry::getConfig()->getRequestParameter("saved_oxid");
        if (($soxId == "-1" || !isset($soxId)) && isset($sSavedID)) {
            $soxId = $sSavedID;
            \OxidEsales\Eshop\Core\Registry::getSession()->deleteVariable("saved_oxid");
            // for reloading upper frame
            $this->_aViewData["updatelist"] = "1";
        }

        if ($soxId != "-1" && isset($soxId)) {
            // load object
            $oBlocks = oxNew(\ProudSourcing\Blocks\Model\TplBlocksWrapper::class);
            $oBlocks->load($soxId);

            $this->_aViewData["oxid"] = $soxId;
            $this->_aViewData["edit"] = $oBlocks;
        }

        return "psblocks_tplblocksmain.tpl";
    }

    /**
     * Saves blocks
     *
     * @return mixed
     */
    public function save()
    {
        $soxId = \OxidEsales\Eshop\Core\Registry::getConfig()->getRequestParameter("oxid");
        $aParams = \OxidEsales\Eshop\Core\Registry::getConfig()->getRequestParameter("editval");

        $oBlocks = oxNew(\ProudSourcing\Blocks\Model\TplBlocksWrapper::class);
        if ($soxId != "-1") {
            $oBlocks->load($soxId);
            $oBlocks->assign($aParams);
        } else {
            $aParams['oxtplblocks__oxid'] = null;
        }
        $oBlocks->save();

        // set oxid if inserted
        if ($soxId == "-1") {
            \OxidEsales\Eshop\Core\Registry::getSession()->setVariable("saved_oxid", $oBlocks->getId());
        }

        $this->_aViewData["updatelist"] = "1";
    }
}
