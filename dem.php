
<?php
    require_once("connection.php");
    $sql_cm = "SELECT COUNT(idG) AS so FROM sach,giohang,chitiet,user 
    WHERE username=nguoidat AND idG=idGct AND idSct=idSach AND nguoidat='vietanh'";
    $result_cm = $conn->query($sql_cm);
   // var_dump($result_cm);
    $row_cm = $result_cm->fetch_assoc();
    echo($row_cm['so']); 
?>
