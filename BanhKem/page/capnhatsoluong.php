<?php
session_start();

$id = $_GET['id'];
$action = $_GET['action'];

if (isset($_SESSION['cart'][$id])) {

    if ($action == 'plus') {
        $_SESSION['cart'][$id]['soluong']++;
    }

    if ($action == 'minus') {
        $_SESSION['cart'][$id]['soluong']--;

        // Không cho số lượng < 1
        if ($_SESSION['cart'][$id]['soluong'] < 1) {
            unset($_SESSION['cart'][$id]); // xóa luôn sp
        }
    }
}

// quay lại trang giỏ hàng
header("Location: giohang.php");
exit();
