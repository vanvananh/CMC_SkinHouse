<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Ngôi Nhà Mỹ Phẩm</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div class="container">
<div id="header">
		<div class="wp row">
			<div>
				<div id="logo">
					<a href="index.html"><img src="images/logofinal.png" alt="Logo"/></a>
				</div>
				<div>
					<div>
						<a href="login.html">Login</a>
						<a href="register.html" class="last">Register</a>
					</div>
					<form action="#">
						<input type="text" id="search" maxlength="30" placeholder="Tìm kiếm sản phẩm" />
						<input type="submit" value="" id="searchbtn" />
					</form>
				</div>
			</div>
			<ul class="menu">
				<li class="current"><a href="index.html">Trang Chủ</a></li>
				<li><a href="product.html">Giới Thiệu</a></li>
				<li><a href="sale.html">Khuyến Mãi</a></li>
				<li><a href="tip.html">Bí Kíp Đẹp</a></li>
				<li><a href="label.html">Thương Hiệu</a></li>
				<li><a href="contact.html">Cách Thức Mua Hàng</a></li>
			</ul>
			<div id="section">
				<ul>
					<li><a href="index.html">Chăm sóc da</a></li>
					<li><a href="index.html">Make up nền</a></li>
					<li><a href="index.html">Mắt</a></li>
					<li><a href="index.html">Làm sạch</a></li>
					<li><a href="index.html">Mặt nạ</a></li>
					<li><a href="index.html">Kem chống nắng</a></li>
					<li><a href="index.html">Cơ thể</a></li>
					<li><a href="index.html">Phụ kiện</a></li>
				</ul>
				<a href="index.html"><img class="imglogo" src="images/slogan.PNG" alt="Slogan"/></a>
			</div>
		</div>
	</div>
	<div id="registerform">
	<form class="form-horizontal" action='' method="POST">
  <fieldset>
    <div id="legend">
      <legend class="">Register</legend>
    </div>
    <div class="control-group">
      <!-- Username -->
      <label class="control-label"  for="username">Tài Khoản</label>
      <div class="controls">
        <input type="text" id="username" name="username" placeholder="" class="input-xlarge">
        <p class="help-block">Tên tài khoản gồm số và ký tự không bao gồm khoảng trắng</p>
      </div>
    </div>
 
    <div class="control-group">
      <!-- E-mail -->
      <label class="control-label" for="email">E-mail</label>
      <div class="controls">
        <input type="text" id="email" name="email" placeholder="" class="input-xlarge">
        <p class="help-block">Địa chỉ E-mail của bạn</p>
      </div>
    </div>
 
    <div class="control-group">
      <!-- Password-->
      <label class="control-label" for="password">Password</label>
      <div class="controls">
        <input type="password" id="password" name="password" placeholder="" class="input-xlarge">
        <p class="help-block">Mật khẩu bao gồm ít nhất 4 ký tự</p>
      </div>
    </div>
 
    <div class="control-group">
      <!-- Password -->
      <label class="control-label"  for="password_confirm">Password (Xác nhận)</label>
      <div class="controls">
        <input type="password" id="password_confirm" name="password_confirm" placeholder="" class="input-xlarge">
        <p class="help-block">Nhập lại mật khẩu</p>
      </div>
    </div>
 
    <div class="control-group">
      <!-- Button -->
      <div class="controls">
        <button class="btn btn-success">Đăng ký</button>
      </div>
    </div>
  </fieldset>
</form>
</div>
  <div id="footer">
		<div id="content">
 
    </div>
	</div>
  </div>
</body>
</html>