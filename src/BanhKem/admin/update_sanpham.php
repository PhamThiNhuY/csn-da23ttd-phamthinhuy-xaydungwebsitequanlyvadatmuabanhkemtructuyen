<?php
include "../config/connect.php";

/* 1. Lấy ID sản phẩm */
if (!isset($_GET['id'])) {
    die("Thiếu ID sản phẩm");
}
$id = (int)$_GET['id'];

/* 2. Khi bấm nút Lưu */
if (isset($_POST['sua'])) {

    $ten  = $_POST['ten'];
    $gia  = $_POST['gia'];
    $mota = $_POST['mota'] ?? '';   // nếu chưa có mô tả
    $madm = $_POST['madm'] ?? 1;    // nếu chưa có danh mục
    $noibat = isset($_POST['noibat']) ? 1 : 0;


    // Nếu có chọn ảnh mới
    if (!empty($_FILES['anh']['name'])) {
        $anh = $_FILES['anh']['name'];
        $tmp = $_FILES['anh']['tmp_name'];
        move_uploaded_file($tmp, "../anhbanhkem/" . $anh);

        $sql = "UPDATE san_pham 
                SET TenBanh='$ten', GiaBanh='$gia', MoTa='$mota', MaDM='$madm', DuongDanAnh='$anh',NoiBat='$noibat'
                WHERE MaBanh=$id";
    } else {
        // Không đổi ảnh
        $sql = "UPDATE san_pham 
                SET TenBanh='$ten', GiaBanh='$gia', MoTa='$mota', MaDM='$madm', NoiBat='$noibat'
                WHERE MaBanh=$id";
    }

    mysqli_query($mysqli, $sql);
    header("Location: sanpham.php");
    exit;
}
