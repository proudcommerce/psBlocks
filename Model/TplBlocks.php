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

namespace ProudSourcing\psBlocks\Model;

class TplBlocksWrapper extends \OxidEsales\Eshop\Core\Model\BaseModel
{
    protected $_sClassName = 'oxtplblocks';

    public function __construct()
    {
        parent::__construct();
        $this->init('oxtplblocks');
    }
}
