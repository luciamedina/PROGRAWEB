<?php
class public.evt_eventos{
private id_evento;
private nombre_evento;
private contacto;
private donde;
private informacion;
private fecha_inicio;
private fecha_fin

}

public get_id_evento(){
return $this -> id_evento;
}
public set_id_evento($valor){
$this -> id_evento=$valor;
}

public get_nombre_evento(){
return $this -> nombre_evento;
}
public set_nombre_evento($valor){
$this -> nombre_evento =$valor;
}

public get_contacto(){
return $this -> contacto;
}
public set_donde($valor){
$this -> donde=$valor;
}

public get_informacion(){
return $this -> informacion;
}
public set_informacion($valor){
$this -> informacion =$valor;
}

public get_fecha_inicio(){
return $this -> fecha_inicio;
}
public set_fecha_inicio (){
$this -> fecha_inicio=$valor;
}

public get_fecha_fin(){
return $this -> fecha_fin;
}
public set_fecha_fin(){
$this -> fecha_fin=$valor;
}



?>