<?php
	
	require_once("config.php");

	require_once(_ROOT_."libs/Smarty-3.1.12/Smarty.class.php");
	$view = new Smarty();
	$view->setCompileDir(_ROOT_."cache/");

	require_once(_ROOT_."libs/BaseModel/BaseModel.class.php");
	$model = new Model();
?>