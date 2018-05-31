<?php
	require_once("connection.php");
	if (isset($_POST['Name'])) {
		//lấy thông tin từ các form bằng phương thức POST
		$Name = $_POST["Name"];
		$Email = $_POST["Email"];
		$Message = $_POST["Message"];
		//Kiểm tra điều kiện bắt buộc đối với các field không được bỏ trống
		if ($Name == "" || $Email == "" || $Message =="") {
			?><script>
			alert("Vui lòng nhập đầy đủ thông tin!");
		</script><?php
		}else{
			//thực hiện việc lưu trữ dữ liệu vào db
			$sql = "INSERT INTO commet(name_comment,content,email) VALUES ('$Name','$Message','$Email')";
			// thực thi câu $sql với biến conn lấy từ file connection.php
			mysqli_query($conn,$sql);
		}
    }
    header("location:index.php");
?>