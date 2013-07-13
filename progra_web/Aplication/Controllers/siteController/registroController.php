<pre>
<?php
include('../../models/Modelo.php');
include('../../models/evt_eventos.php');
include('../../models/evt_actividades.php');
include('../../models/evt_asistentes_eventos.php');
include('../../models/evt_tipos_usuarios.php');
include('../../models/evt_asistentes_tipos_usuarios.php');
include('../../models/evt_eventos_tipos_usuarios.php');
include('../../models/evt_usuarios_detalle.php');
include ('../../libs/adodb5/adodb.inc.php');
$eventos=new evt_usuarios_detalle();
$eventos=new evt_eventos_tipos_usuarios();
$eventos=new evt_asistentes_tipos_usuarios();
$eventos=new evt_tipos_usuarios();
$eventos=new evt_asistentes_eventos();
$eventos=new evt_actividades();
$eventos=new evt_eventos();
$rs=$eventos->consulta_datos();
print_r($rs->GetRows());
print_r($rs->GetRows());
print_r($rs->GetRows());
print_r($rs->GetRows());
print_r($rs->GetRows());
print_r($rs->GetRows());
print_r($rs->GetRows());
//imprimir arreglos
?>
</pre>