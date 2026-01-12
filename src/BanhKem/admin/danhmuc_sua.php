<?php
include '../config/connect.php';

$id = isset($_GET['id']) ? (int)$_GET['id'] : 0;

$sql = "SELECT * FROM danh_muc WHERE MaDM = $id";
$result = mysqli_query($mysqli, $sql);
$danhmuc = mysqli_fetch_assoc($result);

if (!$danhmuc) {
  header("Location: danhmuc.php");
  exit;
}

if (isset($_POST['capnhat'])) {
  $TenDM = trim($_POST['TenDM']);

  if ($TenDM != '') {
    mysqli_query(
      $mysqli,
      "UPDATE danh_muc SET TenDM = '$TenDM' WHERE MaDM = $id"
    );
    header("Location: danhmuc.php");
    exit;
  }
}
?>

<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <title>Sửa danh mục</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<?php include 'header.php'; ?>

<div class="container py-5">
    <div class="row justify-content-center">
        <div class="col-md-8">

            <div class="card shadow-lg rounded-4">
                <div class="card-header text-center">
                    <h4 class="mb-0">Sửa danh mục</h4>
                </div>

                <div class="card-body p-4">
                    <form method="post">
                        <div class="mb-3">
                            <label class="form-label fw-bold">Tên danh mục</label>
                            <input type="text"
                                   name="TenDM"
                                   class="form-control"
                                   value="<?= htmlspecialchars($danhmuc['TenDM'], ENT_QUOTES) ?>"
                                   required>
                        </div>

                        <div class="d-flex justify-content-between">
                            <a href="danhmuc.php" class="btn btn-secondary">Quay lại</a>
                            <button type="submit" name="capnhat" class="btn btn-warning">Cập nhật</button>
                        </div>
                    </form>
                </div>
            </div>

        </div>
    </div>
</div>

</body>
</html>
