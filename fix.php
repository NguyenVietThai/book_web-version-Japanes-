<?php
$connect = mysql_connect("localhost","root","") or die("Khong the ket noi den database!");
mysql_select_db("tdt",$connect);
    //echo($_GET['id']);
    $id=$_GET['id'];
?>
<!DOCTYPE html>
<html>
<head>
<title>TDT.Trang chủ</title>
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
<body class='w3-container'>
<div class=" w3-card-4 w3-half" style="margin-left:25%;margin-top:5%">
<div class="w3-xxlarge w3-indigo w3-center w3-text-yellow">Thay đổi mật khẩu cá nhân</div>
<br>
<form class='w3-container' method="POST">
    <label class="w3-text-indigo"><strong>Mật khẩu mới</strong></label>
    <input class="w3-input"type="text" name="up_pass"><br>
    <input class="w3-button w3-indigo" type="submit" value="Hoàn Tất">
    <a href="admin.php" class="w3-button w3-green w3-right">Thoát</a>
</form>
<br>
</div>
</body>

<?php
if(isset($_POST['up_pass'])){
    $reset=$_POST['up_pass'];
    $sql = "UPDATE user SET password = '$reset' WHERE id='$id';";
    mysql_query($sql);
    header("location:admin.php");
}
//file nay dang con SAI can phai sua them
?>
