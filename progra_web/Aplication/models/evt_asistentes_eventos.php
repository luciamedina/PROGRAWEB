<?php
class evt_asistentes_eventos extends Modelo{
	public $id_asistente_evento='evt_asistentes_eventos';
	private $id_actividad;
	private $id_asistente;
	private $fecha_registro;
	
	function __construct()
	{
		$this->Modelo();
	}
	
	public function get_id_asistente_evento(){
	
		return $this->id_asistente_evento;
	}
	public function set_id_asistente_evento($valor)
	{
		$this->id_asistente_evento=$valor;
	}

	
	public function get_id_actividad(){
	
		return $this->id_actividad;
	}
	public function set_id_actividad($valor){
	
		$this->id_actividad=$valor;
	}

	
	public function get_id_asistente(){
	return $this->id_asistente;
	}
	public function set_id_asistente($valor){
	$this->id_asistente=$valor;
	}

	public function get_fecha_asistente(){
	return $this->fecha_asistente;
	}
	public function set_fecha_asistente($valor){
	$this->fecha_asistente=$valor;
	}

	
}


?>