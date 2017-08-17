<?php

use Tygh\Registry;

if (!defined('BOOTSTRAP')) { die('Access denied'); }

$dev_tools = Registry::get('addons.lib_dev_tools');

if ($dev_tools['dev_enable'] == 'Y') {
	define('DEVELOPMENT', true);
	header('X-' . PRODUCT_NAME . ': v' . PRODUCT_VERSION);
	header('X-PHP: v' . phpversion());
}

if ($dev_tools['dev_enable'] == 'Y' && $dev_tools['dev_error_log'] == 'Y') {
	error_reporting(E_ALL);
	ini_set('display_errors', 1);
	ini_set('display_startup_errors', true);
}

if ($dev_tools['dev_enable'] == 'Y' && $dev_tools['dev_noindex'] == 'Y') {
	header('X-Robots-Tag: noindex, nofollow, noarchive, nosnippet, noodp, notranslate, noimageindex');
}