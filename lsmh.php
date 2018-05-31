
<!DOCTYPE html>
<html>
<head>
<title>Lịch sử mua hàng của bạn</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/CSS.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="icon" href="image/logo.png">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karma">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/CSS2.css">
<link rel="stylesheet" href="css/CSS3.css">
<style>
#overflowTest {
    color: white;
    padding: 15px;
    width: 100%;
    height: 500px;
    overflow:auto;
    border: 1px solid #ccc;
}
</style>
</head>
<body>
<div style="background-color:rgba(34, 34, 51, 0.85)">
    <img class='w3-round' src="image/logo.png" width="8%" style="margin-left:10px;margin-top:10px;margin-bottom:10px">
    <img class='w3-round' src="image/image_top.png" width="88%" height="54px" style="margin-left:10px;margin-top:10px;margin-bottom:10px">
</div>
<?php
    session_start();
    if(isset($_SESSION['username'])){
        $kh=$_SESSION['username'];
        ?>
        <div class="w3-container">
        <table class="w3-table-all">
            <thead>
            <tr style='background-color:rgba(34, 34, 51,0.85) ; color:white'>
                <th>Người nhận sách</th>             
                <th>Số lượng</th>
                <th>Địa chỉ</th>
                <th>Số điện thoại</th>
                <th>Tổng tiền thanh toán</th>
                <th>Thời gian đặt hàng</th>
            </tr>
            </thead>
            <?php
                require_once("connection.php");//ket noi toi co so du lieu 
                $sql = "SELECT * FROM giohang,chitiet WHERE idG=idGct AND nguoidat='$kh'";     
                $result = $conn->query($sql);
                if ($result->num_rows > 0) {
                    while($row = $result->fetch_assoc()) {
                        echo"<tr>";
                        echo"<td>".$row['nguoinhan']."</td>";
                       // echo"<td>".$row['tenSach']."</td>";
                        echo"<td>".$row['soluong']."</td>";
                        echo"<td>".$row['diachi']."</td>";
                        echo"<td>".$row['sdt']."</td>";
                        echo"<td>".$row['tongtien']."</td>";
                        echo"<td>".$row['thoigian']."</td>";
                        echo"</tr>";
                    }
                }          
            ?>
        </table><?php

    }else{
        header('location:login.php');
    }
    
?>


</body>