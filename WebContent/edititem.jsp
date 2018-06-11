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
	<link rel="stylesheet" type="text/css" href="css/styleadditem.css">
</head>
<body>
<div class="container">
	<div id="content">
	<form action="<%=request.getContextPath()%>/addItemServlet" method="post">
			 <div class="form-group">
                   <label>Mã sản phẩm : </label>
                    <div class="relative"><input type="text" name="id" class="form-control"></div>
                </div>
                <div class="form-group">
                   <label>Tên Sản Phẩm : </label>
                    <div class="relative"><input type="text" name="ten" class="form-control"></div>
                </div>
        		<div class="form-group">
                   <label>Hãng Sản Xuất : </label>
                    <div class="relative"><input type="text" name="hang" class="form-control"></div>
                </div>
                <div class="form-group">
                    <label>Loại Sản Phẩm : </label>
                    <div class="relative"><input type="text" name="loai" class="form-control"></div>
                </div>
                <div class="form-group">
                    <label>Giá tiền : </label>
                    <div class="relative"><input type="money" name="gia" class="form-control"></div>
                </div>
                <div class="form-group">
                    <label>Số lượng : </label>
                    <div class="relative"><input type="number" name="soluong" class="form-control"></div>
                </div>
       
        		<div class="form-group">
                    <label>Label: </label>
                    <div class="relative"><input type="text" name="label" class="form-control"></div>
                </div>
                <div class="form-group">
                    <label>Mô Tả: </label>
                    <div class="relative"><input type="text" name="mota" class="form-control"></div>
                </div>
         		<button type="submit" class="btn btn-default">Submit</button>
      		</form>
	</div>
</div>
</body>
</html>