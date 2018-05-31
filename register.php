<html>
<head>
	<title>Register</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="css/CSS.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins">
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<link rel="icon" href="image/logo.png">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body class="w3-container">
<div style="margin-left:41%">
	<img src="image/logo.png" width="36%">
</div>
<hr>
<div class="w3-container w3-round w3-card-4 w3-half" style="margin-left:26%">

	<form action="register.php" method="post">
	<div class="w3-center"><b style="font-size:30px">情報を登録する</b></div>
	<label class="w3-text-brown w3-small"><b>ユーザー名</b></label>
	<input class="w3-input w3-border w3-sand" type="text" id="username" name="username">
	<label class="w3-text-brown w3-small"><b>パスワード</b></label>
	<input class="w3-input w3-border w3-sand" type="password" id="pass" name="pass">
	<label class="w3-text-brown w3-small"><b>名前</b></label>
	<input class="w3-input w3-border w3-sand" type="text" id="name" name="name">
	<label class="w3-text-brown w3-small"><b>メール</b></label>
	<input class="w3-input w3-border w3-sand" type="text" id="email" name="email">
	<div style="margin-left:44%"><input type="submit" name="btn_submit" value="サインアップ"></div>
	</form>
</div>
	
</body>
</html>
<?php
	require_once("connection.php");
	if (isset($_POST["btn_submit"])) {
		//lấy thông tin từ các form bằng phương thức POST
		$username = $_POST["username"];
		$password = $_POST["pass"];
		$name = $_POST["name"];
		$email = $_POST["email"];
		//Kiểm tra điều kiện bắt buộc đối với các field không được bỏ trống
		if ($username == "" || $password == "" || $name == "" || $email == "") {
			?><script>
			alert("完全な情報を入力してください!");
		</script><?php
		}else{
			//thực hiện việc lưu trữ dữ liệu vào db
			$sql = "INSERT INTO user(
							username,
							password,
							name,
							email
						) VALUES (
							'$username',
							'$password',
							'$name',
							'$email'
						)";
			// thực thi câu $sql với biến conn lấy từ file connection.php
			mysqli_query($conn,$sql);
			?><script>
				alert("登録成功!");
			</script>
			<div style="margin-left:43%"><a href="login.php"><button class="w3-button">ログイン</button></a></div>			
			<?php
		}
	}
?>