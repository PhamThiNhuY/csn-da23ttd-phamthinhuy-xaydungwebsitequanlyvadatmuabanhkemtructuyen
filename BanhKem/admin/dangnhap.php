<?php
session_start();
include "../config/connect.php";

if (isset($_POST['login'])) {
    $user = $_POST['user'];
    $pass = md5($_POST['pass']);

    $sql = "SELECT * FROM quan_tri 
            WHERE TenDangNhap='$user' AND MatKhauMaHoa='$pass'"; // admin/123
    $res = mysqli_query($mysqli, $sql);

    if (mysqli_num_rows($res) == 1) {
        $_SESSION['admin'] = $user;
        header("Location: dashboard.php");
    } else {
        $err = "Sai tài khoản hoặc mật khẩu";
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="style2.css">

</head>
<body>

<div class="card login-card">
    <div class="card-body">
        <h4 class="text-center fw-bold mb-4">ADMIN LOGIN</h4>

    <?php if (!empty($err)) echo "<div class='alert alert-danger'>$err</div>"; ?>

    <form method="post">
        <input class="form-control mb-3" name="user" placeholder="Tài khoản" required>
        <input class="form-control mb-3" name="pass" type="password" placeholder="Mật khẩu" required>
        <button class="btn btn-success w-100" name="login">Đăng nhập</button>
    </form>
</div>

</body>
</html>
