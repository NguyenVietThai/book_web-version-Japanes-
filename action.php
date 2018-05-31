<?php
    session_start();
    require_once("connection.php");
        date_default_timezone_set("Asia/Ho_Chi_Minh");
        $idSACH=$_POST['idSach'];
        $sl = $_POST["number"];
        $tong = $_POST["tien"];
        $thoigian = date("Y-m-d H:i:s", time());
        $sqls = "INSERT INTO chitiet(idSct,soluong,tongtien,thoigian) VALUES ('$idSACH','$sl','$tong','$thoigian');";
        mysqli_query($conn,$sqls);
        //lấy thông tin từ các form bằng phương thức POST
        $k=$_SESSION['username'];
		$nn = $_POST["nguoinhan"];
		$dc = $_POST["diachi"];
        $phone = $_POST["sdt"];
        //thực hiện việc lưu trữ dữ liệu vào db
        $sql = "INSERT INTO giohang(nguoidat,nguoinhan,diachi,sdt) VALUES ('$k','$nn','$dc','$phone');";
        // thực thi câu $sql với biến conn lấy từ file connection.php
        mysqli_query($conn,$sql);
        header("location:index.php");
?>