<?php
class evt_eventos_tipos_usuarios extends Modelo{
	public $id_evento_tipo_usuario='evt_eventos_tipos_usuarios';
	private $id_evento;
	private $id_tipo_usuario;
	
	function __construct()
	{
		$this->Modelo();
	}
	
	public function get_id_evento_tipo_usuario(){
	
		return $this->id_evento_tipo_usuario;
	}
	public function set_id_evento_tipo_usuario($valor)
	{
		$this->id_evento_tipo_usuario=$valor;
	}

	
	public function get_id_evento(){
	
		return $this->id_evento;
	}
	public function set_id_evento($valor){
	
		$this->id_evento=$valor;
	}
	
	
	public function get_id_tipo_usuario(){
	
		return $this->id_tipo_usuario;
	}
	public function set_id_tipo_usuario($valor){
	
		$this->id_tipo_usuario=$valor;
	}
	
}


?>