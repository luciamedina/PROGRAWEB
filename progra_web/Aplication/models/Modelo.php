<?php
class Modelo{
private $db;
function Modelo (){
	$this->db=ADONewConnection('mysql');
	$this->db->debug=true;
	$this->db->Connect('localhost','root','','progra_web');
	
}
public function consulta_datos (){
	$rs=$this->db->Execute ('Select * from '.$this->nombre_tabla);
	return $rs;
	}

}
?>