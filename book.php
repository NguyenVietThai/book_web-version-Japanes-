<?php
if(isset($_GET['id'])){
    $number=$_GET['id'];
}
?>

<!DOCTYPE html>
<html>
<head>
<title>Book</title>
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
<div style="position:fixed;background-color:rgba(34, 34, 51, 0.85)">
    <img class='w3-round' src="image/logo.png" width="8%" style="margin-left:10px;margin-top:10px;margin-bottom:10px">
    <img class='w3-round' src="image/image_top.png" width="88%" height="54px" style="margin-left:10px;margin-top:10px;margin-bottom:10px">
</div>
<br><br>
<img style='position:fixed;margin-top:300px;margin-left:85%' src="image/mario.jpg">
<a style='position:fixed;margin-top:50px;margin-left:10px' href="index.php" class='w3-button w3-round w3-small w3-green'>Back to HomePage</a>
<div  style='margin-left:200px;margin-right:200px' class="w3-row-padding w3-padding-16 w3-center">
    <?php
        require_once("connection.php");
        $sql_nt = "SELECT * FROM sach,danhmuc WHERE id=idDM AND idDM=$number";
        $result_nt = $conn->query($sql_nt);  
        if ($result_nt->num_rows > 0) {
            while($row_nt = $result_nt->fetch_assoc()) {
                echo "<div class='w3-quarter w3-card' style='margin-left:50px;margin-top:60px'>";?>
                <a href="info.php?id='<?php echo($row_nt['idSach']);?>'"><button class="w3-button"><img title="click vào ảnh để xem chi tiết hơn" src='<?php echo($row_nt['image']);?>' style='width:100%;height:320px'/></button></a>
                <?php
                echo "<p class='w3-border w3-yellow'>".$row_nt['gia']."</p>";
                //echo "<a href='info.php?id=".$row_nt['idSach']."'><button class='w3-button w3-blue w3-round'>Mua</button></a>";                             
                echo "</div>";
            }
        }
    ?>
</div>

</body>
