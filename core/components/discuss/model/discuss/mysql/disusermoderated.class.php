<?php
/**
 * @package discuss
 */
require_once (strtr(realpath(dirname(dirname(__FILE__))), '\\', '/') . '/disusermoderated.class.php');
class disUserModerated_mysql extends disUserModerated {}
?>