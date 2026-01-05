<?php
session_start();

// Xoá toàn bộ session
session_unset();
session_destroy();

// Quay về trang đăng nhập
header("Location: dangnhap.php");
exit;
