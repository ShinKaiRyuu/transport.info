<?php

class Model
{
	private $connection_id;

	function __construct()
	{
		$this->connection_id = mysql_connect(DB_HOST, DB_USER, DB_PASS); 
		if (!$this->connection_id)
		{
			die('Could not connect to database: ' . mysql_error());
		}
		mysql_select_db(DB_NAME, $this->connection_id);
		mysql_query("SET NAMES 'UTF8'");
	}

	public function SelectArray($sql)
	{
		$result = array();
		$query = mysql_query($sql);
		if($query)
		{
			while($row = mysql_fetch_assoc($query))
			{
				$result[] = $row;
			}
		}
		unset($row);
		unset($query);
		return $result;
	}
	public function SelectRow($sql)
	{
		$query = mysql_query($sql);
		$result = mysql_fetch_assoc($query);
		unset($query);
		return $result;
	}
	public function SelectCell($sql)
	{
		$query = mysql_query($sql);
		$row = mysql_fetch_array($query);
		if(isset($row[0]))
		{
			$result = $row[0];
		}
		else
		{
			$result = null;
		}
		unset($row);
		unset($query);
		return $result;
	}
	public function Query($sql)
	{
		$query = mysql_query($sql);
		return $query;
	}
	public function Insert($sql)
	{
		$query = mysql_query($sql);
		return mysql_insert_id();
	}

	public function GetLastId()
	{
		return mysql_insert_id();
	}

	function __destruct()
	{
		mysql_close($this->connection_id);
	}
}


?>