<?php /* Smarty version Smarty-3.1.12, created on 2012-12-18 21:03:36
         compiled from ".\templates\transport.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2785550d0a4a9276639-91232777%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd4292a900c6b451d8ad333e191455714cf533ac7' => 
    array (
      0 => '.\\templates\\transport.tpl',
      1 => 1355853811,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2785550d0a4a9276639-91232777',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.12',
  'unifunc' => 'content_50d0a4a933ba92_80211424',
  'variables' => 
  array (
    'type' => 0,
    'transport' => 0,
    'row' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_50d0a4a933ba92_80211424')) {function content_50d0a4a933ba92_80211424($_smarty_tpl) {?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
	<link rel="stylesheet" type="text/css" href="/styles/styles.css" media="all" />
	<title>Транспорт Инфо</title>
</head>
<body>
	<div class="container">
		<h1 onclick="window.location = '/'">Транспорт Инфо</h1>
		<h2 class="preheader"><?php if ($_smarty_tpl->tpl_vars['type']->value=='bus'){?>Автобусы<?php }elseif($_smarty_tpl->tpl_vars['type']->value=='trolleybus'){?>Троллейбусы<?php }elseif($_smarty_tpl->tpl_vars['type']->value=='train'){?>Трамваи<?php }?></h2>
		<div class="stageInfo">
			<div class="inside">
				<h3>Список <?php if ($_smarty_tpl->tpl_vars['type']->value=='bus'){?>автобусов<?php }elseif($_smarty_tpl->tpl_vars['type']->value=='trolleybus'){?>троллейбусов<?php }elseif($_smarty_tpl->tpl_vars['type']->value=='train'){?>трамваев<?php }?>:</h3>
				<ul class="busses">
					<?php  $_smarty_tpl->tpl_vars['row'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['row']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['transport']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['row']->key => $_smarty_tpl->tpl_vars['row']->value){
$_smarty_tpl->tpl_vars['row']->_loop = true;
?>
							<li><a href="/transport/<?php echo $_smarty_tpl->tpl_vars['type']->value;?>
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