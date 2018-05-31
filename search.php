<!DOCTYPE html>
<html>
<head>
<title>Search book</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/CSS.css">
<link rel="icon" href="image/logo.png">
</head>
<body> 
<div style="background-color:rgba(34, 34, 51, 0.85);position:fixed;width:260px;height:100%" class='w3-container'>
    <a href='index.php'><img class='w3-round' src="image/logo.png" width="80%" style="margin-left:20px;margin-top:20px"></a>
    <hr>
    <h2 class="w3-yellow">Kết quả :<?php echo($_POST['search']);?></h2>
    <a href="index.php" class="w3-button w3-green w3-small">Back to Home</a><br><hr>
</div>
    
    <div style='margin-left:380px;margin-right:80px'>
    <?php
    if(isset($_POST['search'])){
        // var_dump($_POST);
        $name=$_POST['search'];
        require_once("connection.php");//ket noi toi co so du lieu 
        $sql_nt = "SELECT * FROM `sach` WHERE tenSach like '%$name%'";
        $result_nt = $conn->query($sql_nt);
        if ($result_nt->num_rows > 0) {
            while($row_nt = $result_nt->fetch_assoc()) {
                echo "<div style='margin-left:50px;margin-top:50px' class='w3-quarter w3-card w3-small w3-center'>";?>
                <a href="info.php?id='<?php echo($row_nt['idSach']);?>'"><button class="w3-button"><img title="click vào ảnh để xem chi tiết hơn" src='<?php echo($row_nt['image']);?>' style='width:100%;height:320px'/></button></a>
                <?php
                echo "<p class='w3-border w3-yellow'>".$row_nt['gia']."</p>";
                //echo "<a href='info.php?id=".$row_nt['idSach']."'><button class='w3-button w3-blue w3-round'>Mua</button></a>";                             
                echo "</div>";
            }
        }else{
            echo"Không có thông tin về : "."<b class='w3-red w3-xxlarge'>".$name."</b>";
            echo"<br><img class='w3-display-middle' src='image/search.jpg' width='400px'>";
        }
    }else{
        header("location:index.php");
    }
        
    ?>
    </div>
</body>
