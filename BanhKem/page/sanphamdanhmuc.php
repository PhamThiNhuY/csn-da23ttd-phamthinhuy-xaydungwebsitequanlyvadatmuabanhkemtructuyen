<?php
include_once __DIR__ . '/../config/connect.php';

// Lấy toàn bộ danh mục
$sql_dm = mysqli_query($mysqli, "SELECT * FROM danh_muc");
?>

<?php 
// Lặp từng danh mục
while ($dm = mysqli_fetch_assoc($sql_dm)) { 
?>
<section class="py-5">
  <div class="container">

    <div class="position-relative mb-4">

      <!-- Tên danh mục -->
      <h3 class="category-title text-center fw-bold m-0">
        <?= $dm['TenDM'] ?>
      </h3>

      <!-- NÚT XEM THÊM / ẨN BỚT -->
      <!-- đặt tuyệt đối bên phải, không ảnh hưởng tiêu đề -->
      <div class="position-absolute end-0 top-50 translate-middle-y">
        <button class="btn btn-outline-danger btn-sm me-2"
                onclick="showMore(this)">
          Xem thêm
        </button>

        <button class="btn btn-outline-secondary btn-sm d-none"
                onclick="hideMore(this)">
          Ẩn bớt
        </button>
      </div>

    </div>

    <!--
      DANH SÁCH SẢN PHẨM
      row g-4: tránh bị sole layout khi hiện/ẩn
    -->
    <div class="row g-4 product-list">

      <?php
        // Lấy sản phẩm theo đúng danh mục hiện tại
        $sql_sp = mysqli_query(
          $mysqli,
          "SELECT * FROM san_pham WHERE MaDM = {$dm['MaDM']}"
        );

        $i = 0; // đếm số sản phẩm
        while ($sp = mysqli_fetch_assoc($sql_sp)) {
          $i++;
      ?>

        <!--
          Mỗi sản phẩm:
          - 4 sản phẩm đầu: hiện
          - từ sản phẩm thứ 5 trở đi: d-none (ẩn)
        -->
        <div class="col-6 col-md-3 product-item <?= $i > 4 ? 'd-none' : '' ?>">

          <!-- Click vào card → trang chi tiết sản phẩm -->
          <a href="chitietsp.php?id=<?= $sp['MaBanh'] ?>"
             class="text-decoration-none text-dark d-block h-100">

            <div class="card h-100 shadow-sm">

              <!-- Ảnh sản phẩm -->
              <div class="img-box">
                <img src="../anhbanhkem/<?= $sp['DuongDanAnh'] ?>"
                     class="product-img"
                     alt="<?= $sp['TenBanh'] ?>">
              </div>

              <!-- Thông tin sản phẩm -->
              <div class="card-body text-center">
                <h6 class="mb-1"><?= $sp['TenBanh'] ?></h6>
                <p class="text-danger fw-bold mb-0">
                  <?= number_format($sp['GiaBanh']) ?> ₫
                </p>
              </div>

            </div>
          </a>

        </div>
      <?php } ?>

    </div>

  </div>
</section>
<?php } ?>

<!--
  JAVASCRIPT:
  - showMore: hiện toàn bộ sản phẩm trong section đó
  - hideMore: chỉ hiện lại 4 sản phẩm đầu
-->
<script>
function showMore(btn) {
  // tìm section gần nhất (đúng danh mục đang bấm)
  const section = btn.closest('section');

  // hiện tất cả sản phẩm
  section.querySelectorAll('.product-item')
         .forEach(item => item.classList.remove('d-none'));

  // ẩn nút "Xem thêm", hiện nút "Ẩn bớt"
  btn.classList.add('d-none');
  btn.nextElementSibling.classList.remove('d-none');
}

function hideMore(btn) {
  const section = btn.closest('section');

  // chỉ hiện lại 4 sản phẩm đầu
  section.querySelectorAll('.product-item')
         .forEach((item, index) => {
           if (index >= 4) item.classList.add('d-none');
         });

  // đổi lại nút
  btn.classList.add('d-none');
  btn.previousElementSibling.classList.remove('d-none');
}
</script>
