<?php
include '../config/connect.php';

$ten  = $_POST['ten'];
$mota = $_POST['mota'];
$gia  = $_POST['gia'];
$madm = $_POST['MaDM'];

//  sản phẩm nổi bật
$noibat = isset($_POST['noibat']) ? 1 : 0;

// xử lý ảnh
$anh = $_FILES['anh']['name'];
$tmp = $_FILES['anh']['tmp_name'];

$path = "../anhbanhkem/";
if (!is_dir($path)) {
    mkdir($path, 0777, true);
}

move_uploaded_file($tmp, $path . $anh);

// insert
$sql = "INSERT INTO san_pham 
(TenBanh, MoTa, GiaBanh, DuongDanAnh, MaDM, NoiBat)
VALUES 
('$ten', '$mota', '$gia', '$anh', '$madm', '$noibat')";

mysqli_query($mysqli, $sql);

header("Location: sanpham.php");
exit;
