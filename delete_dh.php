
<?php
    $id=$_GET['id'];
    require_once("connection.php");//ket noi toi co so du lieu 
    $sqlc = "SELECT nguoidat FROM giohang WHERE idG=$id";     
    $resultc = $conn->query($sqlc);
    $rowc = $resultc->fetch_assoc();
    $name=$rowc['nguoidat'];

    $connect = mysql_connect("localhost","root","") or die("Khong the ket noi den database!");
    mysql_select_db("tdt",$connect);
    $sql="delete from chitiet where idGct='".$id."'";
    $sql2="delete from giohang where idG='".$id."'";
    mysql_query($sql2);
    mysql_query($sql);
    header("location:giohang.php?id=$name");
?>