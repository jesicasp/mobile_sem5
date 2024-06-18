<?php
define('DB_HOST','localhost');
define('DB_USER','id21286678_userdata');
define('DB_PASSWORD','Jesica231002.');
define('DB_NAME','id21286678_data');

$conn = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
if(mysqli_connect_error()){
    echo "Failed to connect to MySQL Server".mysqli_connect_error();
    die();
}

?>