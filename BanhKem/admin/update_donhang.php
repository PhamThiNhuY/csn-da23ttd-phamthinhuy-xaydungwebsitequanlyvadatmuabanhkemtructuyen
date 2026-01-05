//<?php

include "../config/connect.php";

// 1. Kiểm tra form có gửi đủ dữ liệu không
if (!isset($_POST['id'], $_POST['trangthai'])) {
    die("Thiếu dữ liệu đơn hàng");
}

// 2. Lấy dữ liệu
$id = (int)$_POST['id'];
$tt = (int)$_POST['trangthai'];

// 3. Cập nhật database
mysqli_query(
    $mysqli,
    "UPDATE don_hang SET TrangThai=$tt WHERE MaDH=$id"
);

// 4. Quay lại trang đơn hàng
header("Location: donhang.php");
exit;
