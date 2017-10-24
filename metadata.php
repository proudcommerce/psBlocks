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

/**
 * Metadata version
 */
$sMetadataVersion = '2.0';

/**
 * Module information
 */
$aModule = array(
    'id' => 'psBlocks',
    'title' => 'psblocks',
    'description' => array(
        'de' => 'Verwalten von Oxid Template Blocks.',
        'en' => 'Tool for managing Oxid template blocks'
    ),
    'thumbnail' => 'logo_pc-os.jpg',
    'version' => '2.0.0',
    'author' => 'Proud Sourcing GmbH',
    'url' => 'https://www.proudcommerce.com/',
    'email' => 'support@proudcommerce.com',
    'extend' => array(),
    'controllers' => array(
        'psblocks_tplblocksmain' => \ProudSourcing\psBlocks\Controller\Admin\TplBlocksMain::class,
    ),
    'templates' => array(),
    'blocks' => array(),
    'settings' => array(),
);