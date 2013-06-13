<?php
/**
 * Metadata version
 */
$sMetadataVersion = '1.1';

/**
 * Module information
 */
$aModule = array(
    'id'           => 'psBlocks',
    'title'        => 'psBlocks',
    'description'  => array(
        'de' => 'Verwalten von Oxid Template Blocks.',
        'en' => 'Tool for managing Oxid template blocks'
    ),
    'thumbnail'    => '',
    'version'      => '1.0.0',
    'author'       => 'Proud Sourcing GmbH',
    'url'          => 'http://www.proudcommerce.com/',
    'email'        => 'support@proudcommerce.com',
    'extend'       => array(

    ),
    'files' => array(
        'psblocks_oxtplblocks_main'     => 'proudsourcing/psBlocks/application/controllers/admin/psblocks_oxtplblocks_main.php',
        'psblocks_oxtplblocks_list'     => 'proudsourcing/psBlocks/application/controllers/admin/psblocks_oxtplblocks_list.php',
        'psblocks_oxtplblocks_editor'   => 'proudsourcing/psBlocks/application/controllers/admin/psblocks_oxtplblocks_editor.php',
        'psblocks_oxtplblocks'          => 'proudsourcing/psBlocks/application/models/psblocks_oxtplblocks.php',
    ),
    'templates' => array(
        'psblocks_oxtplblocks.tpl'          => 'proudsourcing/psBlocks/application/views/admin/tpl/psblocks_oxtplblocks.tpl',
        'psblocks_oxtplblocks_list.tpl'     => 'proudsourcing/psBlocks/application/views/admin/tpl/psblocks_oxtplblocks_list.tpl',
        'psblocks_oxtplblocks_editor.tpl'   => 'proudsourcing/psBlocks/application/views/admin/tpl/psblocks_oxtplblocks_editor.tpl'
    ),
    'blocks' => array(

    ),
    'settings' => array(
    ),
);