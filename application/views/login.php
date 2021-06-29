<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>E-Vote TSHS 2019</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="shortcut icon" href="<?php echo base_url()?>assets/img/logo.png"/>
  <link rel="stylesheet" href="<?php echo base_url()?>assets/login/style.css">
</head>
<body>
<div class="wrapper">
	<div class="container">
		<h1>E-Pilketos TSHS 2019</h1>
		<img src="<?php echo base_url()?>assets/img/logo_putih.png" width="150px" style="margin-top:10px"/>
		<form action="<?php echo base_url()?>Login/auth" method="post" class="form">
			<input type="text" name="username" placeholder="Username">
			<input type="password" name="password" placeholder="Password">
			<button type="submit" id="login-button">Login</button>
		</form>
	</div>
	<ul class="bg-bubbles">
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
	</ul>
</div>
<!-- partial -->
<script src="<?php echo base_url()?>assets/js/jquery.min.js"></script>
</body>
</html>