<?php
class evt_actividades  extends Modelo{
	public $id_actividad='evt_actividades';
	private $id_evento;
	private $nombre_actividad;
	private $lugares;
	private $precio;
	private $descripcion;
	private $id_instructor;
	
	function __construct()
	{
		$this->Modelo();
	}
	
	public function get_id_actividad(){
	
		return $this->id_actividad;
	}
	public function set_id_actividad($valor)
	{
		$this->id_actividad=$valor;
	}

	
	public function get_id_evento(){
	
		return $this->id_evento;
	}
	public function set_id_evento($valor){
	
		$this->id_evento=$valor;
	}

	
	public function get_nombre_actividad(){
	return $this->nombre_actividad;
	}
	public function set_nombre_actividad($valor){
	$this->nombre_actividad=$valor;
	}

	public function get_lugares(){
	return $this->lugares;
	}
	public function set_lugares($valor){
	$this->lugares=$valor;
	}
	
	public function get_precio(){
	return $this->precio;
	}
	public function set_precio($valor){
	$this->precio=$valor;
	}

	public function get_descripcion(){
	return $this->descripcion;
	}
	public function set_descripcion($valor){
	$this->descripcion=$valor;
	}
	public function get_id_instructor(){
	return $this->lugares;
	}
	public function set_id_instructor($valor){
	$this->id_instructor=$valor;
	}
	
}


?>