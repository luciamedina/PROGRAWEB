<?php
class evt_asistentes_tipos_usuarios extends Modelo{
	public $id_asistente_tipo_usuario='evt_asistentes_tipos_usuarios';
	private $id_asistente;
	private $id_tipo_usuario;
	
	function __construct()
	{
		$this->Modelo();
	}
	
	public function get_id_asistente_tipo_usuario(){
	
		return $this->id_asistente_tipo_usuario;
	}
	public function set_id_asistente_id_tipo_usuario($valor)
	{
		$this->id_asistente_tipo_usuario=$valor;
	}

	
	public function get_id_asistente(){
	
		return $this->id_asistente;
	}
	public function set_id_asistente($valor){
	
		$this->id_asistente=$valor;
	}
	
	public function get_id_tipo_usuario(){
	
		return $this->id_tipo_usuario;
	}
	public function set_id_tipo_usuario($valor){
	
		$this->id_tipo_usuario=$valor;
	}
	
	
}


?>