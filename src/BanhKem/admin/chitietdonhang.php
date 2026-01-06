<?php
include '../config/connect.php';
include 'header.php';

// 1. Kiểm tra có mã đơn hàng không
if (!isset($_GET['id'])) {
    echo "<h3>Không tìm thấy mã đơn hàng</h3>";
    exit;
}

$madon = (int)$_GET['id'];

// 2. LẤY THÔNG TIN ĐƠN HÀNG (có GHI CHÚ)
$sql_dh = "SELECT * FROM don_hang WHERE MaDH = $madon";
$rs_dh  = mysqli_query($mysqli, $sql_dh);
$donhang = mysqli_fetch_assoc($rs_dh);

if (!$donhang) {
    echo "<h3> Đơn hàng không tồn tại</h3>";
    exit;
}
?>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Chi tiết đơn hàng</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container py-5">

    <h2 class="fw-bold mb-4">Chi tiết đơn hàng #<?= $madon ?></h2>

    <!-- THÔNG TIN ĐƠN HÀNG -->
    <div class="card mb-4">
        <div class="card-body">
            <p><strong>Tên khách hàng:</strong> <?= $donhang['TenKhachHang'] ?></p>
            <p><strong>SĐT:</strong> <?= $donhang['SDT'] ?></p>
            <p><strong>Địa chỉ:</strong> <?= $donhang['DiaChi'] ?></p>
            <p>
                <strong>Ghi chú:</strong>
                <?= !empty($donhang['GhiChu']) ? nl2br($donhang['GhiChu']) : '<em>Không có</em>' ?>
            </p>
            <p><strong>Ngày đặt:</strong> <?= $donhang['NgayDat'] ?></p>
            <p><strong>Trạng thái:</strong> <?= $donhang['TrangThai'] ?></p>
        </div>
    </div>

    <!-- CHI TIẾT SẢN PHẨM -->
    <table class="table table-bordered text-center align-middle">
        <tr>
            <th>Tên bánh</th>
            <th>Ảnh</th>
            <th>Số lượng</th>
            <th>Đơn giá</th>
            <th>Thành tiền</th>
        </tr>

        <?php
        $sql_ct = "
            SELECT sp.TenBanh, sp.DuongDanAnh, ct.SoLuong, ct.DonGia
            FROM chi_tiet_don_hang ct
            JOIN san_pham sp ON ct.MaBanh = sp.MaBanh
            WHERE ct.MaDH = $madon
        ";

        $result = mysqli_query($mysqli, $sql_ct);

        if (mysqli_num_rows($result) == 0) {
            echo "<tr><td colspan='5'>Không có sản phẩm</td></tr>";
        }

        while ($row = mysqli_fetch_assoc($result)) {
            $thanhtien = $row['SoLuong'] * $row['DonGia'];
            echo "
            <tr>
                <td>{$row['TenBanh']}</td>
                <td>
                    <img src='../anhbanhkem/{$row['DuongDanAnh']}' width='80'>
                </td>
                <td>{$row['SoLuong']}</td>
                <td>".number_format($row['DonGia'])." ₫</td>
                <td class='text-danger fw-bold'>".number_format($thanhtien)." ₫</td>
            </tr>
            ";
        }
        ?>
    </table>

    <a href="donhang.php" class="btn btn-secondary">Quay lại</a>

</div>

</body>
</html>
