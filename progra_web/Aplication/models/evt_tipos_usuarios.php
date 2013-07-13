<?php
class evt_tipos_usuarios extends Modelo{
	public $id_tipo_usuario='evt_tipos_usuarios';
	private $tipo;
	
	function __construct()
	{
		$this->Modelo();
	}
	
	public function get_id_tipo_usuario(){
	
		return $this->id_tipo_usuario;
	}
	public function set_id_tipo_usuario($valor)
	{
		$this->id_tipo_usuario=$valor;
	}

	
	public function get_tipo(){
	
		return $this->tipo;
	}
	public function set_tipo($valor){
	
		$this->tipo=$valor;
	}
	
}


?>