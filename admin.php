<?php
session_start();

if($_SESSION['username']!="admin"){
    header("location:index.php");
}
?>
<!DOCTYPE html>
<html>
<head>
    <title>Admin</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/CSS.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="icon" href="image/logo.png">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/CSS2.css">
    <style>
    body,h1,h2,h3,h4,h5,h6 {font-family: "Karma", sans-serif}
    .w3-bar-block .w3-bar-item {padding:20px}
    th{
        border:0.2px solid black;
        border-collapse: collapse;
        font-size:12px;
    }
    #overflowTest1 {
    padding: 15px;
    width: 100%;
    height: 340px;
    overflow:auto;
    border: 1px solid #ccc;
}
    #overflowTest {
    padding: 15px;
    width: 100%;
    height: 500px;
    overflow:auto;
    border: 1px solid #ccc;
}
    </style>
</head>
<body>
    <div class="w3-block w3-border w3-black">
        <a href="#users"><button class="w3-button">Users</button></a>
        <a href="#booklist"><button class="w3-button">Sách</button></a>
        <a href="add_book.php"><button class="w3-button">Thêm sách</button></a>
        <a class="w3-right"href="exit.php"><button class="w3-button w3-red">Thoát</button></a>
    </div>
    <div>
        <button class='w3-hide'>Danh sách tất cả giỏ hàng</button>
    </div>
    <br>
    <div>
        <form method="POST" action="giohang.php">
        <label>Xem giỏ hàng:</label>
        <input type="text" name="ten" placeholder="Nhập tên...">
        <input type="submit" value="Xem">
        </form></div>
    <br><br>
    <div style="margin-left:40%">
        <img class="w3-circle" src="image/logo.png" width="36%"> 
    </div>
    <div>
        <h2 class="w3-center">Welcome back ADMIN</h2>
    </div>
    <div class="w3-card">

    
    <?php
        require_once("connection.php");//ket noi toi co so du lieu 

        //phan users cua tdt----------------------------------------------------------------------------------------
        $sql = "SELECT * FROM user";
        $result = $conn->query($sql);
        ?><div id="users" class="w3-xxlarge w3-black">Users</div><br>
        <div id="overflowTest1">
        <?php    
        echo "<table class='w3-table w3-container'><tr class='w3-green'><th>Username</th><th>Password</th><th>Name</th><th>Email</th><th>Action</th></tr>";
        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                echo "<tr>";
                echo "<th class='w3-yellow'>";
                if($row['username']=="admin"){
                    echo "<span class='w3-gray'>".$row['username']."</span>";
                }else{
                    echo $row['username'];
                }              
                echo "</th>";
                echo "<th>";
                if($row['username']=="admin"){
                    echo "<span class='w3-gray'>".$row['password']."</span>";
                }else{
                    echo $row['password'];
                }   
                echo "</th>";
                echo "<th>";
                if($row['username']=="admin"){
                    echo "<span class='w3-gray'>".$row['name']."</span>";
                }else{
                    echo $row['name'];
                }   
                echo "</th>";
                echo "<th>";
                if($row['username']=="admin"){
                    echo "<span class='w3-gray'>".$row['email']."</span>";
                }else{
                    echo $row['email'];
                }   
                echo "</th>";
                echo "<th>";
                if($row['username']!="admin"){
                    echo "<a href='delete.php?id=".$row['id']."'><button class='w3-button w3-red'>Delete</button></a>";
                    echo " ";
                    echo "<a href='fix.php?id=".$row['id']."'><button class='w3-button w3-green'>Fix</button></a>";
                }else{
                    echo "<span class='w3-text-gray'>"."Can'tDelete"."</span>";
                    echo " ";
                    echo "<a href='fix.php?id=".$row['id']."'><button class='w3-button w3-green'>Fix</button></a>";
                }
                echo "</th>";
                echo "</tr>";
            }
        }   echo "</table>";
        ?>
        </div>
        <?php
        $sqls = "SELECT * FROM sach,danhmuc WHERE id=idDM";
        $results = $conn->query($sqls);
        ?><br><div id="booklist" class="w3-xxlarge w3-black">BOOK LIST</div>
        <div id="overflowTest">
        <?php  
        echo "<table class='w3-table w3-container'><tr class='w3-green'><th>ID</th><th>ID_Danh Mục</th><th>Tên Danh Mục</th><th>Tên Sách</th><th>Giá</th><th>Tác Giả</th><th>Mô tả</th><th>Action</th></tr>";
        if ($results->num_rows > 0) {
            while($rows = $results->fetch_assoc()) {
                echo "<tr>";
                echo "<th class='w3-yellow'>";
                echo $rows['idSach'];
                echo "</th>";
                echo "<th class='w3-gray'>";
                echo $rows['idDM'];
                echo "</th>";
                echo "<th>";
                echo $rows['tenDM'];
                echo "</th>";
                echo "<th>";
                echo $rows['tenSach'];
                echo "</th>";
                echo "<th>";
                if($rows['idDM']==1){
                    echo $rows['gia_sale'];
                }else{
                    echo $rows['gia'];
                }               
                echo "</th>";
                echo "<th>";
                echo $rows['tenTG'];
                echo "</th>";
                echo "<th>";
                echo $rows['mota'];
                echo "</th>";
                echo "<th>";
                echo "<a class='w3-red w3-button w3-round' href='delete_book.php?id=".$rows['idSach']."'>Delete</a>";
                echo"<br><br>";
                echo "<a class='w3-green w3-button w3-round' href='fixSach.php?id=".$rows['idSach']."'>Fix</a>";
                echo"<br><br>";
                echo "<a class='w3-orange w3-button w3-round' href='sale.php?id=".$rows['idSach']."'>Sale</a>";
                echo "</th>";
                echo "</tr>";
            }
        }   echo "</table>";

        //Ket thuc ket noi den co so du lieu-------------------------------------------------------------------------
    ?></div>
    <br>
    <div>
            <strong class='w3-xxlarge w3-blue'>Nhận xét của khách hàng</strong>
            <div id="overflowTest">
                <div>
                <?php
                    require_once("connection.php");
                    $sql_cm = "SELECT * FROM commet ORDER BY ID_comment DESC";
                    $result_cm = $conn->query($sql_cm);  
                    if ($result_cm->num_rows > 0) {
                        while($row_cm = $result_cm->fetch_assoc()) {
                            echo"<div class='w3-border w3-round'>";
                            echo"<div class='w3-text-green'>"."<b>".$row_cm['name_comment']."</b>".".";
                            echo"<span class='w3-small w3-text-red'>"."<b>".$row_cm['email']."</b>"."</span>"."</div>";
                            echo"<div class='w3-text-black'>".$row_cm['content']."</div>";
                            echo"</div><br>";
                        }
                    }
                    $conn->close();
                ?>
                </div>
            </div>
    </div>
    </div>
    <footer class="w3-center" style="background-color:rgba(34, 34, 51, 0.85)"> 
        <p style="color:white">Copyright by TDT-shoponline 2017</p>
        <b>Bài tập lớn môn thực hành cơ sở dữ liệu</b>
    </footer>
</body>
</html> 