<?php
include '../config/connect.php';

if (isset($_POST['them'])) {
  $TenDM = trim($_POST['TenDM']);

  if ($TenDM != '') {
    $sql = "INSERT INTO danh_muc (TenDM) VALUES ('$TenDM')";
    mysqli_query($mysqli, $sql);
    header("Location: danhmuc.php");
    exit;
  }
}
?>

<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <title>Thêm danh mục</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<?php include 'header.php'; ?>

<div class="container py-5">
    <div class="row justify-content-center">
        <div class="col-md-8">

            <div class="card shadow-lg rounded-4">
                <div class="card-header text-center">
                    <h4 class="mb-0">➕ Thêm danh mục</h4>
                </div>

                <div class="card-body p-4">
                    <form method="post">
                        <div class="mb-3">
                            <label class="form-label fw-bold">Tên danh mục</label>
                            <input type="text" name="TenDM" class="form-control" required>
                        </div>

                        <div class="d-flex justify-content-between">
                            <a href="danhmuc.php" class="btn btn-outline-secondary">Quay lại</a>
                            <button type="submit" name="them" class="btn btn-success">Thêm</button>
                        </div>
                    </form>
                </div>
            </div>

        </div>
    </div>
</div>

</body>
</html>
