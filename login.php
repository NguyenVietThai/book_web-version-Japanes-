<?php
session_start();
?>
<html>
<head>
	<title>Log in</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="css/CSS.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins">
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<link rel="icon" href="image/logo.png">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<?php
	//Gọi file connection.php ở bài trước
	require_once("connection.php");
	// Kiểm tra nếu người dùng đã ân nút đăng nhập thì mới xử lý
	if (isset($_POST["btn_submit"])) {
		// lấy thông tin người dùng
		$username = $_POST["username"];
		$password = $_POST["password"];
		//làm sạch thông tin, xóa bỏ các tag html, ký tự đặc biệt 
		//mà người dùng cố tình thêm vào để tấn công theo phương thức sql injection
		$username = strip_tags($username);
		$username = addslashes($username);
		$password = strip_tags($password);
		$password = addslashes($password);
		if ($username == "" || $password =="") {
			?>  <script>
					alert("Tên đăng nhập và mật khẩu không được bỏ trống!");
				</script><?php
		}else{
			$sql = "select * from user where username = '$username' and password = '$password' ";
			$query = mysqli_query($conn,$sql);//$query xuat ra se la dang bang.. co chua du lieu tim kiem duoc
			$num_rows = mysqli_num_rows($query);
			if ($num_rows==0) {//neu bang ko co cot hay hang nao.. tuc la khong tim duoc du lieu voi cau lenh SQL nhu tren->ko co du lieu
				?><script>
					alert("Tên đăng nhập hoặc mật khẩu không đúng!\nVui lòng thử lại!");
				</script><?php
			}else{
				//tiến hành lưu tên đăng nhập vào session để tiện xử lý sau này
				$_SESSION['username'] = $username;
                // Thực thi hành động sau khi lưu thông tin vào session
				// ở đây mình tiến hành chuyển hướng trang web tới một trang gọi là index.php
				if($username == "admin"){
					header('Location: admin.php');
				}else{
					header('Location: index.php');
				}             
			}
		}
	}
?>
	<div style="margin-left:43%">
		<img class="w3-circle" src="image/logo.png" width="24%"><br><br>
	</div>
	<div class="w3-border w3-container w3-round-xlarge" style="margin-left:30%;margin-right:30%">
		<div class="w3-container">
			<h2 style="text-align:center">Đăng nhập thông tin</h2>
		</div>
		<form method="POST" action="login.php">
			<label class="w3-text-brown w3-small"><b>Tên đăng nhập</b></label>
			<input class="w3-input w3-border w3-sand" type="text" name="username" size="30">
			<label class="w3-text-brown w3-small"><b>Mật khẩu</b></label>
			<input class="w3-input w3-border w3-sand" type="password" name="password" size="30"><hr>
			<div class="w3-center"><input class="w3-button w3-blue" name="btn_submit" type="submit" value="Đăng nhập"></div>
		</form>
		<p class="w3-border w3-center">Tạo tài khoản TDT-shoponline mới</p>
		<div class="w3-center"> <a href="register.php"class="w3-button w3-green">Đăng kí</a><span>*****</span><a href="index.php"><div class="w3-button w3-red">Cancel</div></a></div><br>
	</div>
	<br>
	<footer class="w3-center" style="background-color:rgba(34, 34, 51, 0.85)"> 
        <p style="color:white">Copyright by TDT-shoponline 2017</p>
        <b>Bài tập lớn môn thực hành cơ sở dữ liệu</b>
    </footer>	
</body>
</html>