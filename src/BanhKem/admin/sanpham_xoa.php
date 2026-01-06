<?php
include '../config/connect.php';
$id = $_GET['id'];

mysqli_query($mysqli, "DELETE FROM san_pham WHERE MaBanh=$id");
header("Location: sanpham.php");
?>