<?php
include "../config/connect.php";

// Lấy danh sách đơn hàng từ bảng don_hang, sắp xếp theo ngày đặt giảm dần
$sql = "SELECT * FROM don_hang ORDER BY NgayDat DESC";
$res = mysqli_query($mysqli, $sql);
?>

<?php include 'header.php'; ?>

<h4> DANH SÁCH ĐƠN HÀNG</h4>

<table border="1" cellpadding="10">
<tr>
    <th>Mã</th>
    <th>Khách</th>
    <th>SĐT</th>
    <th>Ngày</th>
    <th>Trạng thái</th>
    <th>Chi tiết</th>
</tr>

<?php while ($row = mysqli_fetch_assoc($res)) { ?>
<tr>
    <td><?= $row['MaDH'] ?></td>
    <td><?= $row['TenKhachHang'] ?></td>
    <td><?= $row['SDT'] ?></td>
    <td><?= $row['NgayDat'] ?></td>
    <td>

    <form method="post" action="capnhat_trangthai.php" style="display:flex; gap:5px;">
        <input type="hidden" name="MaDH" value="<?= $row['MaDH'] ?>">

        <select name="TrangThai">
            <option <?= $row['TrangThai']=='Chờ xác nhận'?'selected':'' ?>>Chờ xác nhận</option>
            <option <?= $row['TrangThai']=='Đã xác nhận'?'selected':'' ?>>Đã xác nhận</option>
            <option <?= $row['TrangThai']=='Đang giao'?'selected':'' ?>>Đang giao</option>
            <option <?= $row['TrangThai']=='Đã hủy'?'selected':'' ?>>Đã hủy</option>
        </select>

        <button type="submit" class="btn btn-sm btn-success"> Lưu </button>

    </form>
</td>

    <td>
        <a href="chitietdonhang.php?id=<?= $row['MaDH'] ?>" 
        class="btn btn-sm btn-success"> Xem </a>

    </td>
</tr>
<?php } ?>
</table>

<?php include 'footer.php'; ?>
