<?php
session_start();
// Kiểm tra đăng nhập admin
// Nếu chưa đăng nhập thì chuyển về trang đăng nhập
if (!isset($_SESSION['admin'])) {
    header("Location: dangnhap.php");
    exit();
}
?>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Admin</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- CSS admin -->
    <link rel="stylesheet" href="assets/admin.css">
    <link rel="stylesheet" href="style2.css">

     <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

</head>
<body>

<div class="container-fluid">
    <div class="row">

        <!-- SIDEBAR / NAVBAR -->
        <div class="header">
            <nav class="navbar px-3">
                <a class="navbar-brand text-white fw-bold" href="dashboard.php">
                    ADMIN
                </a>
                <a href="dangxuat.php" class="btn btn-outline-light btn-sm">
                    Đăng xuất
                </a>
            </nav>
        </div>
