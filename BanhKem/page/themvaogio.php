<?php
session_start();
include '../config/connect.php';

$id = $_GET['id'] ?? 0;

// lấy sản phẩm
$sql = "SELECT * FROM san_pham WHERE MaBanh = $id";
$result = mysqli_query($mysqli, $sql);
$product = mysqli_fetch_assoc($result);

if (!$product) {
    header("Location: sanpham.php");
    exit;
}

// nếu giỏ hàng chưa tồn tại
if (!isset($_SESSION['cart'])) {
    $_SESSION['cart'] = [];
}

// nếu sản phẩm đã có trong giỏ
if (isset($_SESSION['cart'][$id])) {
    $_SESSION['cart'][$id]['soluong'] += 1;
} else {
    $_SESSION['cart'][$id] = [
        'ten' => $product['TenBanh'],
        'gia' => $product['GiaBanh'],
        'anh' => $product['DuongDanAnh'],
        'soluong' => 1
    ];
}

header("Location: giohang.php");
exit;
