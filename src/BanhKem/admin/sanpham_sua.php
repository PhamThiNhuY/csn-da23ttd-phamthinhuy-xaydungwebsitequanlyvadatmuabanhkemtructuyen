<?php
include '../config/connect.php';

// Lấy id sản phẩm
$id = $_GET['id'];

// Lấy thông tin sản phẩm cần sửa
$sp = mysqli_fetch_assoc(
    mysqli_query($mysqli, "SELECT * FROM san_pham WHERE MaBanh = $id")
);

// Lấy dữ liệu danh mục phục vụ chức năng thêm/sửa sản phẩm
$categories = mysqli_query($mysqli, "SELECT * FROM danh_muc");

// Xử lý khi submit form
if (isset($_POST['sua'])) {
    $ten  = $_POST['ten'];
    $gia  = $_POST['gia'];
    $mota = $_POST['mota'];
    $madm = $_POST['madm'];

    mysqli_query(
        $mysqli,
        "UPDATE san_pham 
         SET TenBanh='$ten',
             GiaBanh='$gia',
             MoTa='$mota',
             MaDM='$madm'
         WHERE MaBanh = $id"
    );

    header("Location: sanpham.php");
    exit();
}
?>

<?php include 'header.php'; ?>

<div class="container py-5">
    <div class="row justify-content-center">
        <div class="col-md-8">

            <div class="card shadow-lg rounded-4">
                <div class="card-header text-center">
                    <h4 class="mb-0">Sửa sản phẩm</h4>
                </div>

                <div class="card-body p-4">
                    <form action="update_sanpham.php?id=<?= $id ?>"
                          method="POST"
                          enctype="multipart/form-data">

                        <!-- Tên bánh -->
                        <div class="mb-3">
                            <label class="form-label fw-bold">Tên bánh</label>
                            <input type="text"
                                   name="ten"
                                   class="form-control"
                                   value="<?= $sp['TenBanh'] ?>"
                                   required>
                        </div>

                        <!-- Mô tả -->
                        <div class="mb-3">
                            <label class="form-label fw-bold">Mô tả</label>
                            <textarea name="mota"
                                      class="form-control"
                                      rows="3"><?= $sp['MoTa'] ?></textarea>
                        </div>

                        <!-- Giá -->
                        <div class="mb-3">
                            <label class="form-label fw-bold">Giá (VNĐ)</label>
                            <input type="number"
                                   name="gia"
                                   class="form-control"
                                   value="<?= $sp['GiaBanh'] ?>"
                                   required>
                        </div>

                        <!-- Ảnh hiện tại -->
                        <div class="mb-3">
                            <label class="form-label fw-bold">Ảnh hiện tại</label><br>
                            <img src="../anhbanhkem/<?= $sp['DuongDanAnh'] ?>"
                                 class="img-thumbnail mb-2"
                                 style="max-width:200px">
                        </div>

                        <!-- Ảnh mới -->
                        <div class="mb-4">
                            <label class="form-label fw-bold">
                                Ảnh mới (nếu muốn đổi)
                            </label>
                            <input type="file"
                                   name="anh"
                                   class="form-control">
                        </div>

                        <!-- Danh mục -->
                        <div class="mb-3">
                            <label class="form-label fw-bold">Danh mục</label>
                            <select name="madm" class="form-select">
                                <?php while ($cat = mysqli_fetch_assoc($categories)): ?>
                                    <option value="<?=$cat['MaDM']?>" <?=($sp['MaDM']==$cat['MaDM']?'selected':'')?>><?=$cat['TenDM']?></option>
                                <?php endwhile; ?>
                            </select>
                        </div>

                        <!-- Sản phẩm nổi bật -->
                        <div class="form-check mb-4">
                            <input class="form-check-input"
                                   type="checkbox"
                                   name="noibat"
                                   value="1"
                                   <?= ($sp['NoiBat'] == 1) ? 'checked' : '' ?>>
                            <label class="form-check-label fw-bold">
                                Sản phẩm nổi bật
                            </label>
                        </div>

                        <!-- Buttons -->
                        <div class="d-flex justify-content-between">
                            <a href="sanpham.php"
                               class="btn btn-secondary">
                                Quay lại
                            </a>

                            <button type="submit"
                                    name="sua"
                                    class="btn btn-success px-4">
                                Lưu thay đổi
                            </button>
                        </div>

                    </form>
                </div>
            </div>

        </div>
    </div>
</div>

<?php include 'footer.php'; ?>
