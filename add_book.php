<?php
	require_once("connection.php");
	if (isset($_POST['idDM'])) {
		date_default_timezone_set("Asia/Ho_Chi_Minh");
		//lấy thông tin từ các form bằng phương thức POST
		$idDM = $_POST["idDM"];
		$tensach = $_POST["tensach"];
		$tenTG = $_POST["tenTG"];
        $gia = $_POST["gia"];
        $mota = $_POST["mota"];
		$image = $_POST['image'];
		$date=date("Y-m-d H:i:s");
		//Kiểm tra điều kiện bắt buộc đối với các field không được bỏ trống
		if ($idDM == "" || $tensach == "" || $tenTG == "" || $gia == "" || $mota == "" || $image =="") {
			?><script>
			alert("Vui lòng nhập đầy đủ thông tin!");
		</script><?php
		}else{
			//thực hiện việc lưu trữ dữ liệu vào db
			$sql = "INSERT INTO sach(idDM,tenSach,tenTG,gia,mota,image,ngay) VALUES ('$idDM','$tensach','$tenTG','$gia','$mota','$image','$date')";
			// thực thi câu $sql với biến conn lấy từ file connection.php
			mysqli_query($conn,$sql);
		}
	}
?>
<!DOCTYPE html>
<html>
<head>
<title>Add book</title>
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
<style>
   td{
    border:0.2px solid black;
    border-collapse: collapse;
    font-size:18px;
}
</style>
</head>
<body>
<div class="w3-container w3-quarter">
<?php
    require_once("connection.php");
    $sql_ls = "SELECT * FROM danhmuc";
    $result_ls = $conn->query($sql_ls); 
    echo "<table class='w3-table-all'>";
    echo "<tr>";
    echo "<th class='w3-indigo'>";echo "ID Danh Mục";echo "</th>";
    echo "<th class='w3-indigo'>";echo "Tên Danh Mục";echo "</th>";
    echo "</tr>"; 
    if ($result_ls->num_rows > 0) {
        while($row_ls = $result_ls->fetch_assoc()) {
            echo "<tr>";
            echo "<th>";echo($row_ls['id']);echo "</th>";
            echo "<th>";echo($row_ls['tenDM']);echo "</th>";
            echo "</tr>";
        }
    } echo "</table>";
?>
</div>
<div class="w3-container w3-round w3-card-4 w3-threequarter">

	<form method="POST">
		<div class="w3-center"><b style="font-size:30px">Add book</b></div>
		<label class="w3-text-brown w3-small"><b>ID Danh Mục</b></label>
		<input class="w3-input w3-border w3-sand" type="number"name="idDM" required>
		<label class="w3-text-brown w3-small"><b>Tên Sách</b></label>
		<input class="w3-input w3-border w3-sand" type="text"name="tensach" required>
		<label class="w3-text-brown w3-small"><b>Tên Tác Giả</b></label>
		<input class="w3-input w3-border w3-sand" type="text"name="tenTG" required>
		<label class="w3-text-brown w3-small"><b>Giá tiền ( đơn vị : VND )</b></label>
		<input class="w3-input w3-border w3-sand" type="number"name="gia" required>
		<label class="w3-text-brown w3-small"><b>Mô tả</b></label>
		<textarea class="w3-input w3-border w3-sand" type="text"name="mota" required></textarea>
		<label class="w3-text-brown w3-small"><b>Hình Ảnh(link của hình ảnh)</b></label>
		<input class="w3-input w3-border w3-sand" type="text" name="image" required><br>
		<div style="float:right"><input class="w3-button w3-blue" type="submit" value=" + Add book to TDT shop Online"></div><br><br>
    </form>

    <div style="float:right"><a href="admin.php"><button class="w3-button w3-green">Back</button></a></div>
    <br><br>
</div>
</body>
</html>