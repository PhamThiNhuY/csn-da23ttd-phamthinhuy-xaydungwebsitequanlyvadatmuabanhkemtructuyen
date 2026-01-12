<?php
include '../config/connect.php';
include 'header.php';

$sql = "SELECT * FROM san_pham ORDER BY MaBanh DESC";
$result = mysqli_query($mysqli, $sql);
?>

<div class="container mt-4">
    <div class="d-flex justify-content-between align-items-center mb-3">
        <h4> Quản lý sản phẩm</h4>
        <a href="sanpham_them.php" class="btn btn-success">
            <i class="bi bi-plus-circle"></i> Thêm sản phẩm
        </a>

    </div>

    <table class="table table-bordered table-hover align-middle text-center">
        <thead class="table-success">
            <tr>
                <th>ID</th>
                <th>Tên bánh</th>
                <th>Giá</th>
                <th>Ảnh</th>
                <th>Hành động</th>
            </tr>
        </thead>
        <tbody>
            <?php while ($row = mysqli_fetch_assoc($result)) { ?>
                <tr>
                    <td><?= $row['MaBanh'] ?></td>
                    <td><?= $row['TenBanh'] ?></td>
                    <td><?= number_format($row['GiaBanh']) ?> ₫</td>
                    <td>
                        <img src="../anhbanhkem/<?= $row['DuongDanAnh'] ?>" width="70">
                    </td>
                    <td>
                        <a href="sanpham_sua.php?id=<?= $row['MaBanh'] ?>" 
                        class="btn btn-warning btn-sm">
                            <i class="bi bi-pencil-square"></i>
                        </a>

                        <a href="sanpham_xoa.php?id=<?= $row['MaBanh'] ?>"
                        onclick="return confirm('Bạn đã chắc chắn mún xoá sản phẩm này?')"
                        class="btn btn-danger btn-sm">
                            <i class="bi bi-trash"></i>
                        </a>
                    </td>

                    
                </tr>
            <?php } ?>
        </tbody>
    </table>
</div>

<?php include 'footer.php'; ?>
