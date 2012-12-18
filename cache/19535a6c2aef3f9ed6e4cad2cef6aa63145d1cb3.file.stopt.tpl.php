<?php /* Smarty version Smarty-3.1.12, created on 2012-12-18 21:01:07
         compiled from ".\templates\stopt.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2276950d0aa5d42dee3-66677116%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '19535a6c2aef3f9ed6e4cad2cef6aa63145d1cb3' => 
    array (
      0 => '.\\templates\\stopt.tpl',
      1 => 1355853664,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2276950d0aa5d42dee3-66677116',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.12',
  'unifunc' => 'content_50d0aa5d525908_21296889',
  'variables' => 
  array (
    'type' => 0,
    'name' => 0,
    'sname' => 0,
    'times' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_50d0aa5d525908_21296889')) {function content_50d0aa5d525908_21296889($_smarty_tpl) {?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
</span> - <span onclick="window.location = '/transport/<?php echo $_smarty_tpl->tpl_vars['type']->value;?>
-<?php echo $_GET['name'];?>
'"><?php echo $_smarty_tpl->tpl_vars['sname']->value;?>
</span></h2>
		<div class="stageInfo">
			<div class="inside">
				<p><?php echo $_smarty_tpl->tpl_vars['times']->value;?>
</p>
			</div>
		</div>
	</div>
</body>
</html><?php }} ?>