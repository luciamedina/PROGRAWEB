<?php
class evt_usuarios_detalle extends Modelo{
	public $id_asistente='evt_usuarios_detalle';
	private $apellido_paterno;
	private $apellido_materno;
	private $nombre;
	private $sexo;
	private $edad;
	private $email;
	private $password;
	private $rfc;
	private $no_control;
	
	function __construct()
	{
		$this->Modelo();
	}
	
	public function get_id_asistente(){
	
		return $this->id_asistente;
	}
	public function set_id_asistente($valor)
	{
		$this->id_asistente=$valor;
	}

	
	public function get_apellido_paterno(){
	
		return $this->apellido_paterno;
	}
	public function set_apellido_paterno($valor){
	
		$this->apellido_paterno=$valor;
	}
	
	public function get_apellido_materno(){
	
		return $this->apellido_materno;
	}
	public function set_apellido_materno($valor){
	
		$this->apellido_materno=$valor;
	}
	
	public function get_nombre(){
	
		return $this->nombre;
	}
	public function set_nombre($valor){
	
		$this->nombre=$valor;
	}
	
	public function get_sexo(){
	
		return $this->sexo;
	}
	public function set_sexo($valor){
	
		$this->sexo=$valor;
	}
	
	
	public function get_edad(){
	
		return $this->edad;
	}
	public function set_edad($valor){
	
		$this->edad=$valor;
	}
	
	public function get_email(){
	
		return $this->email;
	}
	public function set_email($valor){
	
		$this->email=$valor;
	}
	
	public function get_password(){
	
		return $this->password;
	}
	public function set_password($valor){
	
		$this->password=$valor;
	}
	
	
	public function get_rfc(){
	
		return $this->rfc;
	}
	public function set_rfc($valor){
	
		$this->rfc=$valor;
	}
	
	public function get_no_control(){
	
		return $this->no_control;
	}
	public function set_no_control($valor){
	
		$this->no_control=$valor;
	}
	
	
	
	
	
	
	
	
}


?>