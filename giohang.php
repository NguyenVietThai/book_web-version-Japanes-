
<?php
     session_start();
     //echo($_SESSION['username']);
     if(isset($_SESSION['username'])){
         if($_SESSION['username']==='admin'){
             if(isset($_POST['ten'])){
                $name=$_POST['ten'];    
             }else{
                $name=$_GET['id'];
             }             
         }else{
            $name=$_SESSION['username'];
         }
     }
?>
<!DOCTYPE html>
<html>
<head>
<title>Giỏ hàng</title>
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
</head>

<body>
<div style="background-color:rgba(34, 34, 51, 0.85)">
    <img class='w3-round' src="image/logo.png" width="8%" style="margin-left:10px;margin-top:10px;margin-bottom:10px">
    <img class='w3-round' src="image/image_top.png" width="88%" height="54px" style="margin-left:10px;margin-top:10px;margin-bottom:10px">
</div>
<?php
if(isset($_SESSION['username'])){
    ?>
        <h2>Đơn hàng của khách hàng: <?php echo($name);?></h2>
        <div class="w3-container">
        <table class="w3-table-all">
            <thead>
            <tr style='background-color:rgba(34, 34, 51,0.85) ; color:white'>
                <th>Người nhận sách</th>
                <th>Tên sách</th>
                <th>Số lượng</th>
                <th>Địa chỉ</th>
                <th>Số điện thoại</th>
                <th>Tổng tiền thanh toán</th>
            </tr>
            </thead>
            <?php
                require_once("connection.php");//ket noi toi co so du lieu 
                $sql = "SELECT idG,nguoinhan,tenSach,soluong,diachi,sdt,tongtien FROM sach,giohang,chitiet,user WHERE username=nguoidat AND idG=idGct AND idSct=idSach AND nguoidat='$name'";     
                $result = $conn->query($sql);
                if ($result->num_rows > 0) {
                    while($row = $result->fetch_assoc()) {
                        echo"<tr>";
                        echo"<td>".$row['nguoinhan']."</td>";
                        echo"<td>".$row['tenSach']."</td>";
                        echo"<td>".$row['soluong']."</td>";
                        echo"<td>".$row['diachi']."</td>";
                        echo"<td>".$row['sdt']."</td>";
                        echo"<td>".$row['tongtien']."</td>";
                            $idG=$row['idG'];
                            echo"<td>"."<a href='delete_dh.php?id=$idG' class='w3-button w3-red w3-small'>Xóa bỏ</a>"."</td>";  
                        echo"</tr>";
                    }
                }          
            ?>
        </table>
        </div>
    <?php
    if($_SESSION['username']=='admin'){
        echo"<a href='admin.php'>Quay về Trang Admin</a>";
    }else{
        echo"<a href='index.php'>Quay về Trang chủ</a>";
    }
}else {
    header("location:index.php");
}
    
?>
</body>