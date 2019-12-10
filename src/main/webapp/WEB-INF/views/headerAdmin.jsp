<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

</head>
<body>
	<div class="container">
	<div class="header-top">
		<div class="row">
			<div class="col-md-10 header-top-left">
				<div class="col-md-3 logo">
					<h1><a href="/MilkTea"><span>Milk</span>Tea</a></h1>
				</div>
				<div class="col-md-5 menu">
				    <ul class="megamenu skyblue">
						<li><a class="color1" href="/MilkTea">QL LOẠI MÓN</a></li>				
						<li><a class="color1" href="#">QL MÓN</a></li>
						<li><a class="color1" href="/MilkTea/thucdon?iddm=tatcamon">QL ĐƠN HÀNG</a></li>
					    <li><a class="color1" href="#">THỐNG KÊ</a></li>
					</ul> 
				</div>
			</div>
			<div class="col-md-1 header-top-right">	
			    <a><button type="button" class="btn btn-danger">Đăng xuất</button></a>
			</div>
		</div>
	</div>
</div>
</body>
</html>