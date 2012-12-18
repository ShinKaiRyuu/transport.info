<?php /* Smarty version Smarty-3.1.12, created on 2012-12-18 21:54:42
         compiled from ".\templates\index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:644650d09cfd3ec962-99427732%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '749422d4cfc3eb5677cf499730392b6accd4d1c7' => 
    array (
      0 => '.\\templates\\index.tpl',
      1 => 1355856877,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '644650d09cfd3ec962-99427732',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.12',
  'unifunc' => 'content_50d09cfd472c66_93761120',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_50d09cfd472c66_93761120')) {function content_50d09cfd472c66_93761120($_smarty_tpl) {?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
	<link rel="stylesheet" type="text/css" href="/styles/styles.css" media="all" />
	<script type="text/javascript" src="scripts/jquery.js"></script>
	<script type="text/javascript" src="scripts/jquery.autocomplete.js"></script>
	<script type="text/javascript">
	$(function(){
		$('#srcsd').autocomplete({
		    minChars: 1,
		    maxHeight: 400,
		    width: 300,
		    lookup: ['January', 'February', 'March', 'Jacobs']
		});
	});
	</script>
	<title>Транспорт Инфо</title>
</head>
<body>
	<div class="container">
		<h1 onclick="window.location = '/'">Транспорт Инфо</h1>
		<ul class="navigation">
			<li class="bus"><a href="/transport/bus"><img src="/images/bus.png" alt="" />Автобусы</a></li><li class="tbus"><a href="/transport/trolleybus"><img src="/images/tbus.png" alt="" />Троллейбусы</a></li><li class="train"><a href="/transport/train"><img src="/images/train.png" alt="" />Трамваи</a></li>
		</ul>
		<div class="searchStage">Поиск остановки: <input type="text" id="srcsd" name="srcsd" /></div>
	</div>
</body>
</html><?php }} ?>