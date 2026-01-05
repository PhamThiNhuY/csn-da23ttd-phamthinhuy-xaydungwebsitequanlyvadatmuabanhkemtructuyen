<?php
include '../config/connect.php';

$sql = "SELECT * FROM san_pham WHERE NoiBat = 1 ORDER BY MaBanh DESC LIMIT 8";
$result = mysqli_query($mysqli, $sql);
?>

<section class="SanPhamNoiBat">
    <div class="container py-4">
        <h3 class="my-4 text-center fw-bold">Sản Phẩm Nổi Bật</h3>

        <div class="row">
            <?php while ($sp = mysqli_fetch_assoc($result)) { ?>
                <div class="col-6 col-lg-3 mb-4">

                    <div class="card shadow border-0 h-100 position-relative">

                        <!-- LINK PHỦ CARD (KHÔNG ĐÈ NÚT) -->
                        <a href="chitietsp.php?id=<?= $sp['MaBanh'] ?>"
                           class="stretched-link"></a>

                        <!-- Ảnh -->
                        <img 
                            src="../anhbanhkem/<?= $sp['DuongDanAnh'] ?>" 
                            class="card-img-top product-img"
                            alt="<?= $sp['TenBanh'] ?>"
                        >

                        <!-- Nội dung -->
                        <div class="card-body text-center">
                            <h6 class="fw-bold"><?= $sp['TenBanh'] ?></h6>

                            <p class="text-danger fw-bold fs-5 mb-2">
                                <?= number_format($sp['GiaBanh']) ?> ₫
                            </p>

                            <!-- NÚT RIÊNG -->
                            <div class="d-flex justify-content-center gap-2 position-relative" style="z-index:2;">
                                <a href="chitietsp.php?id=<?= $sp['MaBanh'] ?>"
                                   class="btn btn-outline-success btn-sm">
                                    Chi tiết
                                </a>

                                <a href="themvaogio.php?id=<?= $sp['MaBanh'] ?>"
                                   class="btn btn-danger btn-sm">
                                    Đặt hàng ngay
                                </a>
                            </div>
                        </div>

                    </div>
                </div>
            <?php } ?>
        </div>
    </div>
</section>
