<?php
include '../config/connect.php';

// Đếm tổng số sản phẩm
$sp = mysqli_fetch_assoc(mysqli_query(
  $mysqli, "SELECT COUNT(*) AS total FROM san_pham"
));

// Đếm tổng số đơn hàng
$dh = mysqli_fetch_assoc(mysqli_query(
  $mysqli, "SELECT COUNT(*) AS total FROM don_hang"
));

// Đếm tổng số danh mục
$dm = mysqli_fetch_assoc(mysqli_query(
  $mysqli, "SELECT COUNT(*) AS total FROM danh_muc"
));
?>

<?php include 'header.php'; ?>

<div class="container py-4">

  <!-- CHÀO ADMIN -->
  <div class="alert alert-success shadow-sm">
    👋 Xin chào <strong>Admin</strong>, chúc bạn một ngày làm việc hiệu quả!
  </div>

  <div class="row g-4">

    <!-- SẢN PHẨM -->
    <div class="col-md-4">
      <div class="card border-0 shadow-lg h-100">
        <div class="card-body text-center p-4">
          <div class="fs-1 mb-2">🍰</div>

          <h5 class="fw-bold">
            Sản phẩm
            <span class="badge bg-danger ms-2">
              <?= $sp['total'] ?>
            </span>
          </h5>

          <p class="text-muted">Quản lý toàn bộ sản phẩm</p>

          <a href="sanpham.php"
             class="btn btn-success w-100 mt-3">
            Quản lý
          </a>
        </div>
      </div>
    </div>

    <!-- ĐƠN HÀNG -->
    <div class="col-md-4">
      <div class="card border-0 shadow-lg h-100">
        <div class="card-body text-center p-4">
          <div class="fs-1 mb-2">📦</div>

          <h5 class="fw-bold">
            Đơn hàng
            <span class="badge bg-danger text-white ms-2">
              <?= $dh['total'] ?>
            </span>
          </h5>

          <p class="text-muted">Theo dõi & xử lý đơn hàng</p>

          <a href="donhang.php"
             class="btn btn-success w-100 mt-3">
            Xem đơn
          </a>
        </div>
      </div>
    </div>

    <!-- DANH MỤC -->
    <div class="col-md-4">
      <div class="card border-0 shadow-lg h-100">
        <div class="card-body text-center p-4">
          <div class="fs-1 mb-2">📂</div>

          <h5 class="fw-bold">
            Danh mục
            <span class="badge bg-danger ms-2">
              <?= $dm['total'] ?>
            </span>
          </h5>

          <p class="text-muted">Quản lý danh mục sản phẩm</p>

          <a href="danhmuc.php"
             class="btn btn-success w-100 mt-3">
            Quản lý
          </a>
        </div>
      </div>
    </div>

  </div>
</div>

<?php include 'footer.php'; ?>
