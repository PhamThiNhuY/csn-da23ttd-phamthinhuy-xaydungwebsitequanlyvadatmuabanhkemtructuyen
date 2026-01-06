<?php
$mysqli = new mysqli("localhost","root","","nhuy_bakery");

// Check connection
if ($mysqli -> connect_errno) {
  echo "ket noi mysqli lỗi: " . $mysqli->connect_error;
  exit();
}
?>
