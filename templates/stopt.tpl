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
		<h2 class="preheader"><span onclick="window.location = '/transport/{$type}'">{if $type=='bus'}Автобус{elseif $type=='trolleybus'}Троллейбус{elseif $type=='train'}Трамвай{/if} {$name}</span> - <span onclick="window.location = '/transport/{$type}-{$smarty.get.name}'">{$sname}</span></h2>
		<div class="stageInfo">
			<div class="inside">
				<p>{$times}</p>
			</div>
		</div>
	</div>
</body>
</html>