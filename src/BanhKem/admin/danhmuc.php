<?php
include '../config/connect.php';
include 'header.php';

// Lấy danh sách danh mục, sắp xếp theo MaDM giảm dần
$sql = "SELECT * FROM danh_muc ORDER BY MaDM DESC";
$result = mysqli_query($mysqli, $sql);
?>



<div class="container mt-4">
    <div class="d-flex justify-content-between align-items-center mb-3">
        <h4> Quản lý danh mục</h4>
        <a href="danhmuc_them.php" class="btn btn-success">
            <i class="bi bi-plus-circle"></i> Thêm danh mục
        </a>
    </div>

    <table class="table table-bordered table-hover align-middle text-center">
        <thead class="table-success">
            <tr>
                <th>Mã DM</th>
                <th>Tên danh mục</th>
                <th>Hành động</th>
            </tr>
        </thead>
        <tbody>
            <?php if ($result && mysqli_num_rows($result) > 0): ?>
                 <!-- Duyệt từng danh mục -->
                <?php while ($row = mysqli_fetch_assoc($result)): ?>
                    <tr>
                          <!-- Mã danh mục -->
                        <td><?= $row['MaDM'] ?></td>
                         <!-- Tên danh mục (chống XSS) -->
                        <td><?= htmlspecialchars($row['TenDM'], ENT_QUOTES) ?></td>
                       <td>
                            <a href="danhmuc_sua.php?id=<?= $row['MaDM'] ?>"
                                class="btn btn-warning btn-sm"
                                title="Sửa danh mục">
                                <i class="bi bi-pencil-square"></i>
                            </a>

                            <a href="danhmuc_xoa.php?id=<?= $row['MaDM'] ?>"
                                class="btn btn-danger btn-sm"
                                title="Xoá danh mục"
                                onclick="return confirm('Bạn có chắc muốn xoá danh mục này?')">
                                <i class="bi bi-trash"></i>
                            </a>
                        </td>
                    </tr>
                <?php endwhile; ?>
            <?php else: ?>
                <tr>
                    <td colspan="3">Chưa có danh mục nào</td>
                </tr>
            <?php endif; ?>
        </tbody>
    </table>
</div>

<?php include 'footer.php'; ?>

