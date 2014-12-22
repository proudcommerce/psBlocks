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
class psblocks_oxtplblocks extends oxBase
{
    protected $_sClassName = 'oxtplblocks';

    public function __construct()
    {
        parent::__construct();
        $this->init('oxtplblocks');
    }

}
?>