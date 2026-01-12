<?php
session_start();
?>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <title>Giỏ hàng</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- Bootstrap -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <!-- CSS riêng -->
  <link rel="stylesheet" href="../style/style.css">
  <!-- Font Awesome -->
  <script src="https://kit.fontawesome.com/f542258c79.js" crossorigin="anonymous"></script>
   <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

</head>

<body>

<?php include 'header.php'; ?>

<div class="container py-5 text-center">

<?php if (empty($_SESSION['cart'])): ?>
  <h4>Giỏ hàng đang trống</h4>

<?php else: ?>
  <table class="table table-bordered align-middle">
    <tr class="text-center">
      <th>Ảnh</th>
      <th>Tên bánh</th>
      <th>Giá</th>
      <th>Số lượng</th>
      <th>Thành tiền</th>
      <th>Xóa</th>
    </tr>

    <?php
    $tong = 0;
    foreach ($_SESSION['cart'] as $id => $sp):
      $thanhtien = $sp['gia'] * $sp['soluong'];
      $tong += $thanhtien;
    ?>
    <tr class="text-center">
      <td><img src="../anhbanhkem/<?= $sp['anh'] ?>" width="80"></td>
      <td><?= $sp['ten'] ?></td>
      <td><?= number_format($sp['gia']) ?> ₫</td>
      <td>
        <div class="d-flex justify-content-center align-items-center gap-2">
          <a href="capnhatsoluong.php?id=<?= $id ?>&action=minus"
            class="btn btn-sm btn-outline-secondary">−</a>

          <span class="fw-bold"><?= $sp['soluong'] ?></span>

          <a href="capnhatsoluong.php?id=<?= $id ?>&action=plus"
            class="btn btn-sm btn-outline-secondary">+</a>
        </div>
      </td>

      <td><?= number_format($thanhtien) ?> ₫</td>
      <td>
          <a href="xoagiohang.php?id=<?= $id ?>"
            class="btn btn-sm btn-danger"
            title="Xoá sản phẩm">
              <i class="bi bi-trash"></i>
          </a>
      </td>
    </tr>
    <?php endforeach; ?>

    <tr>
      <td colspan="4" class="text-end fw-bold">Tổng tiền:</td>
      <td colspan="2" class="fw-bold text-danger">
        <?= number_format($tong) ?> ₫
      </td>
    </tr>
  </table>

  <div class="d-flex justify-content-between mt-4">
    <a href="product.php" class="btn btn-outline-secondary">Tiếp tục mua sắm</a>
    <a href="dathang.php" class="btn btn-success">Đặt hàng</a>
  </div>

<?php endif; ?>

</div>

<?php include 'footer.php'; ?>

</body>
</html>
