<?php

	require_once 'common/common.php';

	switch ($_GET['type']) 
	{
		case 'bus':
			if($_GET['stop'])
			{
				$data = $model->SelectCell("SELECT times FROM busses_to_stop_points WHERE bus_id = ".$_GET['name']." AND stop_point_id = ".$_GET['stop']);
				$view->assign('type', $_GET['type']);
				$view->assign('name', $model->SelectCell("SELECT name FROM busses WHERE id = ".$_GET['name']));
				$view->assign('sname', $model->SelectCell("SELECT name FROM stop_points WHERE id = ".$_GET['stop']));
				$view->assign('times', $data);
				$view->display('stopt.tpl');
			}
			elseif($_GET['name'])
			{
				$data = $model->SelectArray("SELECT * FROM busses_to_stop_points btsp 
														LEFT JOIN stop_points sp 
															ON btsp.stop_point_id = sp.id WHERE btsp.bus_id = ".$_GET['name']);
				$view->assign('type', $_GET['type']);
				$view->assign('name', $model->SelectCell("SELECT name FROM busses WHERE id = ".$_GET['name']));
				$view->assign('ways', $data);
				$view->display('ways.tpl');
			}
			else
			{
				$data = $model->SelectArray("SELECT * FROM busses");
				$view->assign('type', $_GET['type']);
				$view->assign('transport', $data);
				$view->display('transport.tpl');
			}
			break;
		case 'trolleybus':
			if($_GET['stop'])
			{
				$data = $model->SelectCell("SELECT times FROM trolleybus_to_stop_points WHERE trolleybus_id = ".$_GET['name']." AND stop_point_id = ".$_GET['stop']);
				$view->assign('type', $_GET['type']);
				$view->assign('name', $model->SelectCell("SELECT name FROM trolleybuses WHERE id = ".$_GET['name']));
				$view->assign('sname', $model->SelectCell("SELECT name FROM stop_points WHERE id = ".$_GET['stop']));
				$view->assign('times', $data);
				$view->display('stopt.tpl');
			}
			elseif($_GET['name'])
			{
				$data = $model->SelectArray("SELECT * FROM trolleybus_to_stop_points ttsp 
														LEFT JOIN stop_points sp 
															ON ttsp.stop_point_id = sp.id WHERE ttsp.trolleybus_id = ".$_GET['name']);
				$view->assign('type', $_GET['type']);
				$view->assign('name', $model->SelectCell("SELECT name FROM trolleybuses WHERE id = ".$_GET['name']));
				$view->assign('ways', $data);
				$view->display('ways.tpl');
			}
			else
			{
				$data = $model->SelectArray("SELECT * FROM trolleybuses");
				$view->assign('type', $_GET['type']);
				$view->assign('transport', $data);
				$view->display('transport.tpl');
			}
			break;
		case 'train':
			if($_GET['stop'])
			{
				$data = $model->SelectCell("SELECT times FROM trains_to_stop_points WHERE bus_id = ".$_GET['name']." AND stop_point_id = ".$_GET['stop']);
				$view->assign('type', $_GET['type']);
				$view->assign('name', $model->SelectCell("SELECT name FROM trains WHERE id = ".$_GET['name']));
				$view->assign('sname', $model->SelectCell("SELECT name FROM stop_points WHERE id = ".$_GET['stop']));
				$view->assign('times', $data);
				$view->display('stopt.tpl');
			}
			elseif($_GET['name'])
			{
				$data = $model->SelectArray("SELECT * FROM trains_to_stop_points btsp 
														LEFT JOIN stop_points sp 
															ON btsp.stop_point_id = sp.id WHERE btsp.train_id = ".$_GET['name']);
				$view->assign('type', $_GET['type']);
				$view->assign('name', $model->SelectCell("SELECT name FROM trains WHERE id = ".$_GET['name']));
				$view->assign('ways', $data);
				$view->display('ways.tpl');
			}
			else
			{
				$data = $model->SelectArray("SELECT * FROM trains");
				$view->assign('type', $_GET['type']);
				$view->assign('transport', $data);
				$view->display('transport.tpl');
			}
			break;
			break;
		
		default:
			# code...
			break;
	}