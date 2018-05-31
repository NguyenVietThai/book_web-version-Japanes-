<?php
    session_start();
    $idsach=$_GET['id'];
    require_once("connection.php");
    $sqls = "SELECT * FROM sach WHERE idSach=$idsach";
    $results = $conn->query($sqls);  
    $rows = $results->fetch_assoc();?> 
<!DOCTYPE html>
<html>
<head>
<title>Info book</title>
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
    <div class='w3-card-4 w3-threequarter' id="le">        
        <table>
            <tr>
                <th><img width="300px" height="500px" class='w3-card-4'src="<?php echo($rows['image']); ?>"></th>
                <th>*</th>
                <th style="text-align:left" class="w3-border">
                    <h2 style="text-align:center"class="w3-text-blue"><strong><?php echo($rows['tenSach']); ?></strong></h2>
                    <div class="w3-text-yellow w3-small"><u>Tác giả: <?php echo($rows['tenTG']); ?></u></div><br>
                    <div class="w3-text-yellow w3-small"><u>Mã số sách của cửa hàng : <?php echo($rows['idSach']); ?></u></div><br>
                    
                    <?php
                        if($rows['gia_sale']==0){
                            $giaca=$rows['gia'];
                            echo " <div class='w3-border w3-text-orange'>".$giaca." đồng / 1 bản</div><br> ";
                        }else{
                            $giaca=$rows['gia_sale'];
                            echo " <div class='w3-border w3-text-orange'>".$giaca." đồng / 1 bản</div><br> ";
                        }
                    ?>
                    <p>Mô tả:</p>
                    <div class="w3-text-blue w3-border"><i>
                    <?php
                    echo($rows['mota']);
                    ?></i></div>
                    <br>
                    <?php
                        if(isset($_SESSION['username'])){
                            ?>
                            <form method="POST" action="shop.php">
                                <input id="hidden_input" name="idSach" type=text value="<?php echo($rows['idSach']);?>"><br>
                                <input id="hidden_input" name="tien" type=text value="<?php echo($giaca);?>"><br>
                                <label>Số Lượng:</label><br>
                                <input type="number" name="number" value='1' required>
                                <input class='w3-button w3-blue w3-small' type="submit" value="Mua Sách">
                            </form>
                            <?php
                        }else{
                            echo"<div class='w3-text-red'> (!) Bạn phải đăng nhập thì mới có thể mua hàng</div>";
                            echo "<a href='login.php'><button class='w3-button w3-blue w3-small'>Đăng nhập</button></a>";
                        }
                    ?>
                    
                    <a href='index.php'><button style="float:right" class="w3-button w3-green w3-small">Quay lại --></button></a>
                </th>
            </tr>            
        </table>
    </div>
    
</body>