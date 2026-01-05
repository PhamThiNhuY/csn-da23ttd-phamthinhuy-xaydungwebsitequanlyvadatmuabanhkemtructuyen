<?php
include "../config/connect.php";

$MaDH = (int)$_POST['MaDH'];
$TrangThai = $_POST['TrangThai'];

$sql = "UPDATE don_hang SET TrangThai='$TrangThai' WHERE MaDH=$MaDH";
mysqli_query($mysqli, $sql);

header("Location: donhang.php");
exit();
?>