<?php
session_start();
include "../config/connect.php";

/* Nếu giỏ hàng trống → quay về giỏ */
if (empty($_SESSION['cart'])) {
    header("Location: giohang.php");
    exit();
}

/* XỬ LÝ KHI SUBMIT FORM */
if (isset($_POST['dat_hang'])) {

    $ten      = $_POST['ten'];
    $sdt      = $_POST['sdt'];
    $diachi   = $_POST['diachi'];
    $ngaynhan = $_POST['ngaynhan'];

    /* Ghi chú */
    $ghichu = isset($_POST['ghichu']) ? $_POST['ghichu'] : '';

    /* Check ngày nhận */
    if (empty($ngaynhan)) {
        echo "<script>
            alert('Vui lòng chọn ngày nhận hàng!');
            history.back();
        </script>";
        exit;
    }

    $ngaydat = date("Y-m-d H:i:s");

    /* 1️⃣ LƯU ĐƠN HÀNG */
    $sql_dh = "INSERT INTO don_hang 
        (TenKhachHang, SDT, DiaChi, GhiChu, NgayDat, NgayNhan, TrangThai)
        VALUES 
        ('$ten','$sdt','$diachi','$ghichu','$ngaydat','$ngaynhan','Chờ xác nhận')";

    mysqli_query($mysqli, $sql_dh);

    /* Lấy mã đơn hàng */
    $madon = mysqli_insert_id($mysqli);

    /* 2️⃣ LƯU CHI TIẾT ĐƠN HÀNG */
    foreach ($_SESSION['cart'] as $maBanh => $soLuong) {

        $maBanh  = (int)$maBanh;
        $soLuong = (int)$soLuong;

        $sp = mysqli_fetch_assoc(mysqli_query(
            $mysqli,
            "SELECT GiaBanh FROM san_pham WHERE MaBanh = $maBanh"
        ));

        $donGia = $sp['GiaBanh'];

        mysqli_query($mysqli, "
            INSERT INTO chi_tiet_don_hang (MaDH, MaBanh, SoLuong, DonGia)
            VALUES ($madon, $maBanh, $soLuong, $donGia)
        ");
    }

    /* 3️⃣ XÓA GIỎ HÀNG */
    unset($_SESSION['cart']);

    echo "<script>
        alert('🎉 Đặt hàng thành công! Người bán sẽ liên hệ để đến số điện thoại này để xác nhận đơn hàng sớm nhất. Xin cảm ơn trân trọng cảm ơn!');
        location='index.php';
    </script>";
}
?>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Đặt hàng</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../style/style.css">
    <script src="https://kit.fontawesome.com/f542258c79.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
</head>
<body>

<?php include "header.php"; ?>

<div class="container py-5">
    <h2 class="text-center fw-bold mb-4">THÔNG TIN ĐẶT HÀNG</h2>

    <form method="post" class="row g-3">

        <div class="col-md-6">
            <label class="form-label">Tên khách hàng</label>
            <input type="text" name="ten" class="form-control" required>
        </div>

        <div class="col-md-6">
            <label class="form-label">Số điện thoại</label>
            <input type="text" name="sdt" class="form-control" required>
        </div>

        <div class="col-12">
            <label class="form-label">Địa chỉ giao hàng</label>
            <input type="text" name="diachi" class="form-control" required>
        </div>

        <div class="col-md-6">
            <label class="form-label">Ngày nhận hàng</label>
            <input type="date"
                   name="ngaynhan"
                   class="form-control"
                   min="<?= date('Y-m-d') ?>"
                   required>
        </div>

        <div class="col-12">
            <label class="form-label">
                Ghi chú <span class="text-muted">(tuỳ chọn)</span>
            </label>

            <!-- 🔥 TEXTAREA ĐÚNG CHUẨN -->
            <textarea name="ghichu"
                      class="form-control"
                      rows="4"
                      placeholder="Nhập ghi chú cho đơn hàng..."></textarea>

            <small class="text-muted">
                VD: Giờ giao 15h–16h, ít kem / nhiều kem, ít ngọt, ghi chữ trên bánh 🎂
            </small>
        </div>

        <div class="col-12 d-flex justify-content-end gap-2">
            <a href="giohang.php" class="btn btn-outline-secondary">
                Quay lại giỏ hàng
            </a>

            <button type="submit" name="dat_hang" class="btn btn-success px-4">
                Xác nhận đặt hàng
            </button>
        </div>

    </form>
</div>

<?php include "footer.php"; ?>

</body>
</html>
