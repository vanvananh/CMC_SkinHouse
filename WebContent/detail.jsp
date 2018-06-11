<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@page import="model.SanPham"%>
 <%@page import="model.Comment"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!--<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.2, user-scalable=yes" />-->
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
					<a href="index.html"><img style="width: 80px" src="images/giohang.png" alt="Logo"/></a>
				</div>
				<div>
					<div>
						<a href="<%=request.getContextPath()%>/loginServlet">Login</a>
						<a href="register.jsp" class="last">Register</a>
					</div>
					<form action="#">
						<input type="text" id="search" maxlength="30" placeholder="Tim kiếm sản phẩm"/>
						<input type="submit" value="" id="searchbtn" />
					</form>
				</div>
			</div>
			<ul class="menu">
				<li class="current"><a href="index.html">Trang Chủ</a></li>
				<li><a href="product.html">Giới Thiệu</a></li>
				<li><a href="<%=request.getContextPath()%>/sanPhamServlet">Toàn Bộ Sản Phẩm</a></li>
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
 <div id="content">
		<div class="home">
		<%
	  	SanPham sp = (SanPham)request.getAttribute("sp");
		%>
			<div class="aside">
				<h1 style="color: #000000"><%=sp.getTen() %></h1>
				<img style="padding-left=500px; width: 200px" id="imgdetail" alt="" src="images/<%=sp.getLabel()%>">
				<div class="form-group">
                    <label>Số lượng : </label>
                    <div class="relative"><input type="number" name="soluong" class="form-control"></div>
                </div>
				<p class="price"><strong><%=sp.getGia()%></strong><a href="<%=request.getContextPath()%>/cartServlet?id=<%=sp.getId()%>" method="post""><span>MUA HÀNG</span></a></p>
				<p><%=sp.getMota() %></p>
			</div>
			<h4 style="color: #000000">Comment:</h4>
			<%ArrayList<Comment> listComment = (ArrayList<Comment>)request.getAttribute("comment");%>
			<%for (Comment com: listComment) { %>
			  <p style="color: #000000"><%=com.getDesc()%></p><br>
			<%} %>
		</div>
	</div>
	<div id="footer">
		<div id="content">
 
    </div>
	</div>
</div>
	</body>