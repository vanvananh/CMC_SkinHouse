<%@page import="model.GioHang"%>
<%@page import="sun.java2d.pipe.SpanClipRenderer"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.SanPham"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
					<a href="index.html"><img src="images/logofinal.png" alt="Logo"/></a>
				</div>
				<div>
					<div>
						<a href="login.jsp">Login</a>
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
		<div id="container">
        <div class="tabbed"><h2 href="#" id="hot">Danh Mục Sản Phẩm</h2>
        <div id="borderlinehot"></div>
          <!-- First Tab Content -->
          <div class="tab-content" style="display:block;">
            <div class="items">
              <div class="cl">&nbsp;</div>
              <ul style="width: 100%;margin: 0px;padding: 0px;float: left;"> 
              <%
	  			ArrayList<SanPham> listSanPham = (ArrayList<SanPham>)request.getAttribute("sp");
				%>
              <% for(SanPham sp : listSanPham) { %>
                <li class="col-xs-12">
                  <div class="image col-xs-12"> <a href="<%=request.getContextPath()%>/detailServlet?id=<%=sp.getId()%>">
                  <img class="product" src="images/<%=sp.getLabel()%>" alt="" /></a> </div>
                  <p class="product_name"><%=sp.getTen() %> <br />
                    HÃNG: <a href="#"><%=sp.getHang()%></a> </p>
                  <p class="price"><strong><%=sp.getGia()%></strong><a href="#"><span>MUA HÀNG</span></a></p>
                </li>
                <%} %>
              </ul>
              <div class="cl">&nbsp;</div>
            </div>
          </div>
        </div>
      </div>
    </div>
	</div>
	<div id="footer">
		<div id="content">
 
    </div>
	</div>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	</div>
</body>
</html>