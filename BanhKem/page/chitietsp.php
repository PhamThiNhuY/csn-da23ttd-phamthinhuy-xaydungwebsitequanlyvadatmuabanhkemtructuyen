<?php
// Kết nối CSDL
include "../config/connect.php";

// Kiểm tra có truyền ID sản phẩm hay chưa
if (!isset($_GET['id'])) {
    echo "Thiếu ID sản phẩm";
    exit; // Dừng chương trình nếu thiếu ID
}

// Ép kiểu int để tránh SQL Injection cơ bản
$id = (int)$_GET['id'];

// Lấy thông tin sản phẩm theo ID
$sql = "SELECT * FROM san_pham WHERE MaBanh = $id";
$result = mysqli_query($mysqli, $sql);

// Kiểm tra sản phẩm có tồn tại không
if (mysqli_num_rows($result) == 0) {
    echo "Không tìm thấy sản phẩm";
    exit;
}

// Lấy dữ liệu sản phẩm
$sp = mysqli_fetch_assoc($result);

// Lấy mã danh mục để truy vấn sản phẩm liên quan
$MaDM = $sp['MaDM'];

/* ================= SẢN PHẨM LIÊN QUAN ================= */
// Lấy các sản phẩm cùng danh mục, trừ sản phẩm hiện tại
$sql_lienquan = "SELECT * FROM san_pham 
                 WHERE MaDM = $MaDM 
                 AND MaBanh != $id 
                 LIMIT 4";
$query_lienquan = mysqli_query($mysqli, $sql_lienquan);
?>


<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title><?= $sp['TenBanh']; ?></title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../style/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/f542258c79.js" crossorigin="anonymous"></script>
</head>
<body>

<?php include 'header.php'; ?>

<!-- ===== CHI TIẾT SẢN PHẨM ===== -->
<div class="container py-5">
    <div class="row align-items-center">

        <!-- ẢNH -->
        <div class="col-md-5 mb-4">
            <div class="product-image-box text-center">
                <img src="../anhbanhkem/<?= $sp['DuongDanAnh']; ?>" 
                     alt="<?= $sp['TenBanh']; ?>" 
                     class="img-fluid rounded">
            </div>
        </div>

        <!-- THÔNG TIN -->
        <div class="col-md-7">
            <h2 class="fw-bold mb-3"><?= $sp['TenBanh']; ?></h2>

            <p class="text-muted">
                <?= $sp['MoTa']; ?>
            </p>

            <h4 class="text-danger fw-bold mb-4">
                <?= number_format($sp['GiaBanh']); ?> ₫
            </h4>

            <a href="themvaogio.php?id=<?= $sp['MaBanh']; ?>" 
               class="btn btn-danger px-4 py-2">
                Đặt mua ngay
            </a>
        </div>

    </div>
</div>

<!-- ===== SẢN PHẨM TƯƠNG TỰ ===== -->
<div class="container mb-5">
    <h4 class="mb-4 text-center fw-bold">SẢN PHẨM TƯƠNG TỰ</h4>

    <div class="row">
        <?php while ($row = mysqli_fetch_assoc($query_lienquan)) { ?>
            <div class="col-md-3 col-6 mb-4">
                <div class="card h-100 shadow-sm">

                    <!-- ẢNH (CLICK → CHI TIẾT) -->
                    <a href="chitietsp.php?id=<?= $row['MaBanh']; ?>">
                        <div class="related-image-box">
                            <img src="../anhbanhkem/<?= $row['DuongDanAnh']; ?>" 
                                 alt="<?= $row['TenBanh']; ?>" 
                                 class="img-fluid">
                        </div>
                    </a>

                    <div class="card-body text-center d-flex flex-column">

                        <!-- TÊN (CLICK → CHI TIẾT) -->
                        <a href="chitietsp.php?id=<?= $row['MaBanh']; ?>" 
                           class="text-decoration-none text-dark">
                            <h6 class="card-title fw-bold">
                                <?= $row['TenBanh']; ?>
                            </h6>
                        </a>

                        <p class="text-danger fw-bold mb-2">
                            <?= number_format($row['GiaBanh']); ?> ₫
                        </p>

                        <!-- NÚT ĐẶT -->
                        <a href="themvaogio.php?id=<?= $row['MaBanh']; ?>" 
                           class="btn btn-sm btn-outline-danger mt-auto">
                            Đặt mua
                        </a>
                    </div>
                </div>
            </div>
        <?php } ?>
    </div>
</div>

<?php include 'footer.php'; ?>

</body>
</html>
