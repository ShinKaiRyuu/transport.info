<?php /* Smarty version Smarty-3.1.12, created on 2012-12-18 21:03:37
         compiled from ".\templates\ways.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1322250d0a70c1f79c9-62184499%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a98e913377b541879e64ceb660f7ee731cbeaaa2' => 
    array (
      0 => '.\\templates\\ways.tpl',
      1 => 1355853747,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1322250d0a70c1f79c9-62184499',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.12',
  'unifunc' => 'content_50d0a70c2c7e81_02178154',
  'variables' => 
  array (
    'type' => 0,
    'name' => 0,
    'ways' => 0,
    'row' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_50d0a70c2c7e81_02178154')) {function content_50d0a70c2c7e81_02178154($_smarty_tpl) {?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
	<link rel="stylesheet" type="text/css" href="/styles/styles.css" media="all" />
	<title>Транспорт Инфо</title>
</head>
<body>
	<div class="container">
		<h1 onclick="window.location = '/'">Транспорт Инфо</h1>
		<h2 class="preheader"><span onclick="window.location = '/transport/<?php echo $_smarty_tpl->tpl_vars['type']->value;?>
'"><?php if ($_smarty_tpl->tpl_vars['type']->value=='bus'){?>Автобус<?php }elseif($_smarty_tpl->tpl_vars['type']->value=='trolleybus'){?>Троллейбус<?php }elseif($_smarty_tpl->tpl_vars['type']->value=='train'){?>Трамвай<?php }?> <?php echo $_smarty_tpl->tpl_vars['name']->value;?>
</span></h2>
		<div class="stageInfo">
			<div class="inside">
				<h3>Список остановок:</h3>
				<ul>
					<?php  $_smarty_tpl->tpl_vars['row'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['row']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['ways']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['row']->key => $_smarty_tpl->tpl_vars['row']->value){
$_smarty_tpl->tpl_vars['row']->_loop = true;
?>
							<li><a href="/transport/<?php echo $_smarty_tpl->tpl_vars['type']->value;?>
-<?php echo $_GET['name'];?>
-<?php echo $_smarty_tpl->tpl_vars['row']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['row']->value['name'];?>
</a></li>
					<?php } ?>
				</ul>
			</div>
		</div>
	</div>
</body>
</html><?php }} ?>