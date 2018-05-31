<?php
    session_start();
    if(!isset($_SESSION['username'])){
        header("location:index.php");
    }else if(($_SESSION['username'])=="admin"){
        header("location:exit.php");
    }
    date_default_timezone_set("Asia/Ho_Chi_Minh");
    $idSACH=$_POST['idSach'];
    $sl = $_POST["number"];
    $tong = $sl * $_POST["tien"];
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
<body>
    <div class=" w3-gray w3-container w3-half w3-card-4" style="margin-left:25%;margin-top:5%">
        <form method="POST" action="action.php">
            <h2 class="w3-border w3-blue">Vui lòng điền đầy đủ thông tin dưới đây</h2>
            <input id="hidden_input" name="idSach" type=text value="<?php echo($idSACH);?>"><br>
            <input id="hidden_input" name="number" type=text value="<?php echo($sl);?>"><br>
            <input id="hidden_input" name="tien" type=text value="<?php echo($tong);?>"><br>
            <label>Người nhận:</label><br>
            <input class="w3-input" type="text" name="nguoinhan" required><br>
            <label>Địa chỉ người nhận:</label><br>
            <input class="w3-input" type="text" name="diachi" required><br>
            <label>Số điện thoại:</label><br>
            <input class="w3-input" type="text" name="sdt" required><br><br>
            <input class=" w3-button w3-green" type="submit" name="Hoàn tất đơn hàng"><br><br>
        </form>
    </div>
</body>
</html>