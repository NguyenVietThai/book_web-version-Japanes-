
<?php
session_start();

if(!isset($_SESSION['username'])){
    header("location:index.php");
}else{
    $id=$_GET['id'];
    require_once("connection.php");//ket noi toi co so du lieu 
    $sqlc = "SELECT username FROM user WHERE id=$id";     
    $resultc = $conn->query($sqlc);
    $rowc = $resultc->fetch_assoc();
    echo($rowc['username']);
    $name=$rowc['username'];
    echo $name;
    $sqlcc = "SELECT nguoidat FROM giohang WHERE nguoidat='$name' GROUP BY nguoidat" ;     
    $resultcc = $conn->query($sqlcc);
    $rowcc = $resultcc->fetch_assoc();
    if($rowcc==NULL){
        $connect = mysql_connect("localhost","root","") or die("Khong the ket noi den database!");
        mysql_select_db("tdt",$connect);
        $sql="DELETE FROM user WHERE id=$id";
        mysql_query($sql);
        header("location:admin.php");
    }else{
        header("location:nhacnho.php");
    }
}
    
?>