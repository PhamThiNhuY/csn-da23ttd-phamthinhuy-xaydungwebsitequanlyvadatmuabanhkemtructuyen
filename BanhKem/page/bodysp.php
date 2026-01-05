<?php
include_once __DIR__ . '/../config/connect.php';

/* LẤY DANH MỤC ĐANG CHỌN */
$danhmuc = isset($_GET['danhmuc']) ? (int)$_GET['danhmuc'] : 0;

/* TIÊU ĐỀ */
$tieude = "TẤT CẢ SẢN PHẨM";

if ($danhmuc > 0) {
    $sql_dm = mysqli_query(
        $mysqli,
        "SELECT TenDM FROM danh_muc WHERE MaDM = $danhmuc LIMIT 1"
    );

    if ($row_dm = mysqli_fetch_assoc($sql_dm)) {
        $tieude = mb_strtoupper($row_dm['TenDM'], 'UTF-8');
    }
}
?>

<section class="allsanpham">
  <div class="container py-5">
    <h1 class="tieude my-4 text-center fw-bold"><?= $tieude ?></h1>

    <div class="row">
      <?php include 'sidebar.php'; ?>

      <!-- DANH SÁCH SẢN PHẨM -->
      <div class="col-lg-9">
        <div class="row">

        <?php
          if ($danhmuc > 0) {
              $sql = "SELECT * FROM san_pham WHERE MaDM = $danhmuc ORDER BY MaBanh DESC";
          } else {
              $sql = "SELECT * FROM san_pham ORDER BY MaBanh DESC";
          }

          $result = $mysqli->query($sql);

          if ($result && $result->num_rows > 0):
            while ($p = $result->fetch_assoc()):
        ?>

        <div class="col-6 col-lg-4 mb-4 d-flex">
          <div class="card product-card w-100 shadow bg-warning bg-opacity-10 position-relative">

            <!-- LINK PHỦ CARD -->
            <a href="chitietsp.php?id=<?= $p['MaBanh']; ?>" class="stretched-link"></a>

            <!-- ẢNH -->
            <div class="img-box">
              <img src="../anhbanhkem/<?= $p['DuongDanAnh'] ?>" alt="<?= $p['TenBanh'] ?>">
            </div>

            <!-- NỘI DUNG -->
            <div class="card-body text-center d-flex flex-column">
              <h5 class="product-title"><?= $p['TenBanh'] ?></h5>

              <p class="price text-danger fw-bold">
                <?= number_format($p['GiaBanh']) ?> ₫
              </p>

              <!-- NÚT -->
              <div class="mt-auto d-flex justify-content-center gap-2 position-relative" style="z-index:2;">
                <a href="chitietsp.php?id=<?= $p['MaBanh']; ?>" 
                   class="btn btn-outline-success btn-sm">
                   Xem chi tiết
                </a>

                <a href="themvaogio.php?id=<?= $p['MaBanh'] ?>" 
                   class="btn btn-danger btn-sm">
                   Đặt hàng
                </a>
              </div>
            </div>

          </div>
        </div>

        <?php
            endwhile;
          else:
            echo "<p class='text-center'>Chưa có sản phẩm</p>";
          endif;
        ?>

        </div>
      </div>
    </div>
  </div>
</section>
