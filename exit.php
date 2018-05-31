<?php
session_start();
echo '<title>Exit</title>';
if (session_destroy()) {
    header("location:index.php");
}
else{
	echo"The Action not TRUE!Try again!";
}
?> 