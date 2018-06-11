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
						<input type="text" id="search" maxlength="30" />
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
	<div id="loginform">
	<form action="<%=request.getContextPath()%>/loginServlet" method="post"">
    <div class="form-group">
      <label for="email">Username:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password">
    </div>
    <div class="checkbox">
      <label><input type="checkbox" name="remember"> Remember me</label>
    </div>
    <button type="submit" class="btn btn-default">Submit</button>
  </form>
  </div>
  <div id="footer">
		<div id="content">
 
    </div>
	</div>
  </div>
</body>
</html>