<?php 
$hostname = 'localhost';
$database_username = 'root';
$database_password = '';
$database_name = 'mercamovel';

$bd_connect = mysqli_connect($hostname, $database_username,$database_password, $database_name);

if(!$bd_connect){
    die('Erro de ligação à Base de Dados: ' .mysqli_connect_error() );
};
?>