
<!DOCTYPE html>
<html>
<head>
<title>TDT.KHTT</title>
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
<body style="background-image:url(image/bg-khtt.jpg);background-size:100% 680px">
   
    <a href='index.php'class='w3-button w3-green'>Back</a><br>  
    <div class='w3-fixed w3-center w3-text-yellow'>
        <strong class='w3-center w3-xlarge'><u>Đối với khách hàng thân thiết của TDT</u></strong><br>
        1.Ưu đãi 1<br>
        2.Ưu đãi 2<br>
        3.Ưu đãi 3
    </div>
    <hr>
    <?php
        session_start();
        if(isset($_SESSION['username'])){
            $kh=$_SESSION['username'];
            require_once("connection.php");
            
            $sql_mn = "SELECT SUM(tongtien) AS tien FROM giohang,chitiet WHERE nguoidat='$kh' and idGct=idG";
            $result_mn = $conn->query($sql_mn);
            $row_mn = $result_mn->fetch_assoc();
            $tien=$row_mn['tien'];
            if($tien==NULL){
                $tien=0;
            }
            echo ("<div class='w3-text-white'>Số tiền bạn đã dùng để mua sách tại cửa hàng: </div>"."<div class='w3-text-orange w3-center w3-jumbo'><strong>".$tien."</strong><span class='w3-large w3-text-red'><b> đồng</b></span>"."</div>");
        }else{
            header('location:login.php');
        }
        
    ?>
    <?php
    if($tien>2000000){
        echo"<p class='w3-large'style='color:red;margin-left:46%;margin-top:180px'><b><u>Ghi nhận:</u></b></p>";
        echo"<img src='image/tt.png' style='margin-left:32%'>";
    }else{
        echo"<div class='w3-yellow w3-text-blue w3-large w3-center'>Quý khách sẽ trở thành khách hàng thân thiết của SHOP nếu số tiền mua sản phẩm của quý khách đạt từ <span class='w3-text-red w3-xlarge'>2000.000 đ </span>trở lên</div>";
    }
    ?>

</body>