<?php 
// Header giao diện admin (chứa html, head, body, navbar)
include 'header.php'; 
?>

<!-- Nội dung trang thêm sản phẩm -->
<div class="container py-5">
    <div class="row justify-content-center">
        <div class="col-md-8">

            <!-- Card form -->
            <div class="card shadow-lg rounded-4">
                <div class="card-header text-center">
                    <h4 class="mb-0">Thêm sản phẩm mới</h4>
                </div>

                <div class="card-body p-4">
                    <!-- Form thêm sản phẩm -->
                    <form action="xuly_themsp.php"
                          method="POST"
                          enctype="multipart/form-data">

                        <!-- Nhập tên bánh -->
                        <div class="mb-3">
                            <label class="form-label fw-bold">Tên bánh</label>
                            <input type="text" name="ten"
                                   class="form-control" required>
                        </div>

                        <!-- Nhập mô tả -->
                        <div class="mb-3">
                            <label class="form-label fw-bold">Mô tả</label>
                            <textarea name="mota"
                                      class="form-control"
                                      rows="3"></textarea>
                        </div>

                        <!-- Nhập giá -->
                        <div class="mb-3">
                            <label class="form-label fw-bold">Giá (VNĐ)</label>
                            <input type="number" name="gia"
                                   class="form-control" required>
                        </div>

                        <!-- Upload ảnh sản phẩm -->
                        <div class="mb-4">
                            <label class="form-label fw-bold">Ảnh sản phẩm</label>
                            <input type="file" name="anh"
                                   class="form-control"
                                   accept="image/*"
                                   onchange="previewImage(event)">
                            <!-- Xem trước ảnh -->
                            <img id="preview"
                                 class="img-thumbnail mt-2"
                                 style="max-width:200px; display:none;">
                        </div>

                        <!-- Chọn danh mục -->
                        <div class="mb-3">
                            <label class="form-label fw-bold">Danh mục</label>
                            <select name="MaDM" class="form-select">
                                <option value="1">Bánh Kem Sinh Nhật Hoa</option>
                                <option value="2">Bánh Bông Lan Trứng Muối</option>
                                <option value="3">Bánh Kem Trái Cây Tươi</option>
                                <option value="4">Bánh Bento</option>
                                <option value="5">Bánh Theo Sự Kiện</option>
                            </select>
                        </div>

                        <!-- Đánh dấu sản phẩm nổi bật -->
                        <div class="form-check mb-3">
                            <input class="form-check-input"
                                   type="checkbox"
                                   name="noibat"
                                   value="1">
                            <label class="form-check-label fw-bold">
                                Sản phẩm nổi bật
                            </label>
                        </div>

                        <!-- Các nút thao tác -->
                        <div class="d-flex justify-content-between">
                            <a href="sanpham.php"
                               class="btn btn-outline-secondary">
                                Quay lại
                            </a>
                            <button type="submit"
                                    class="btn btn-success px-4">
                                Lưu sản phẩm
                            </button>
                        </div>

                    </form>
                </div>
            </div>

        </div>
    </div>
</div>

<!-- Script xem trước ảnh upload -->
<script>
function previewImage(event) {
    const img = document.getElementById('preview');
    img.src = URL.createObjectURL(event.target.files[0]);
    img.style.display = 'block';
}
</script>

<?php 
include 'footer.php'; 
?>
