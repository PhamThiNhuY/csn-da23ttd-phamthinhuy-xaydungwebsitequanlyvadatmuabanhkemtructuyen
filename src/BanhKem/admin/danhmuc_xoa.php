<?php
include '../config/connect.php';

$id = isset($_GET['id']) ? (int)$_GET['id'] : 0;

if ($id > 0) {
  mysqli_query($mysqli, "DELETE FROM danh_muc WHERE MaDM = $id");
}

header("Location: danhmuc.php");
exit;
