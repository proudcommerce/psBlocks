<?php
/**
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * @copyright (c) Proud Sourcing GmbH | 2014
 * @link www.proudcommerce.com
 * @package psBlocks
 * @version 1.1.0
**/
class psblocks_oxtplblocks_editor extends oxAdminDetails
{

    /**
     * Loads blocks info, passes it to Smarty engine and
     * returns name of template file "psblocks_oxtplblocks_main.tpl".
     *
     * @return string
     */
    public function render()
    {
        $soxId = oxRegistry::getConfig()->getRequestParameter( "oxid");
        // check if we right now saved a new entry
        $sSavedID = oxRegistry::getConfig()->getRequestParameter( "saved_oxid");
        if ( ($soxId == "-1" || !isset( $soxId)) && isset( $sSavedID) ) {
            $soxId = $sSavedID;
            oxRegistry::getSession()->deleteVariable( "saved_oxid");
            #$this->_aViewData["oxid"] =  $soxId;
            // for reloading upper frame
            $this->_aViewData["updatelist"] =  "1";
        }

        if ( $soxId != "-1" && isset( $soxId)) {
            // load object
            $oConfi = oxNew( "psblocks_oxtplblocks" );
            $oConfi->load($soxId);

            $this->_aViewData["oxid"] =  $soxId;
            $this->_aViewData["edit"] =  $oConfi;
        }

        return "psblocks_oxtplblocks_editor.tpl";
    }

    /**
     * Saves blocks
     *
     * @return mixed
     */
    public function save()
    {
        $soxId   = oxRegistry::getConfig()->getRequestParameter( "oxid");
        $aParams = oxRegistry::getConfig()->getRequestParameter( "editval");

        $oConfi = oxNew( "psblocks_oxtplblocks" );
        if ( $soxId != "-1" ) {
            $oConfi->load( $soxId );
            $oConfi->assign($aParams);
        } else {
            $aParams['oxtplblocks__oxid']   = null;
        }

        $oConfi->save();

        // set oxid if inserted
        if ( $soxId == "-1") {
            oxRegistry::getSession()->setVariable( "saved_oxid", $oConfi->getId() );
        }

        $this->_aViewData["updatelist"] = "1";
    }
}