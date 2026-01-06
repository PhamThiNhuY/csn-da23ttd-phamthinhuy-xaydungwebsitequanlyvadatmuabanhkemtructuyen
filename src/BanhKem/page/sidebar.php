<!--sidebar.php-->

<?php
      $danhmuc = isset($_GET['danhmuc']) ? (int)$_GET['danhmuc'] : 0;
      $dm = mysqli_query($mysqli, "SELECT * FROM danh_muc");
    ?>

<div class="col-lg-3 mb-4">
  <div class="sidebar p-3 rounded shadow-sm">

    <h5 class="sidebar-title mb-3 text-white fw-bold">
      Danh mục
    </h5>

    <div class="category-list">
      <a href="product.php" class="category-item">
        Tất cả
      </a>

      <?php while ($row = mysqli_fetch_assoc($dm)): ?>
        <a href="product.php?danhmuc=<?= $row['MaDM'] ?>"
           class="category-item">
           <?= $row['TenDM'] ?>
        </a>
      <?php endwhile; ?>
    </div>

  </div>
</div>
