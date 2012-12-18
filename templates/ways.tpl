<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
	<link rel="stylesheet" type="text/css" href="/styles/styles.css" media="all" />
	<title>Транспорт Инфо</title>
</head>
<body>
	<div class="container">
		<h1 onclick="window.location = '/'">Транспорт Инфо</h1>
		<h2 class="preheader"><span onclick="window.location = '/transport/{$type}'">{if $type=='bus'}Автобус{elseif $type=='trolleybus'}Троллейбус{elseif $type=='train'}Трамвай{/if} {$name}</span></h2>
		<div class="stageInfo">
			<div class="inside">
				<h3>Список остановок:</h3>
				<ul>
					{foreach $ways as $row}
							<li><a href="/transport/{$type}-{$smarty.get.name}-{$row.id}">{$row.name}</a></li>
					{/foreach}
				</ul>
			</div>
		</div>
	</div>
</body>
</html>