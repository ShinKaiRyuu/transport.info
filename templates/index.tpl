<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
</html>