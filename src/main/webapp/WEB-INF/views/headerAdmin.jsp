<%@page import="org.springframework.context.ApplicationContext"%>
<%@page import="org.springframework.context.support.ClassPathXmlApplicationContext"%>
<%@page import="com.cnjv.dao.TinhTrangHDDAO"%>
<%@page import="com.cnjv.model.TinhTrangHD"%>
<%@page import="java.util.List"%>
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
	<div class="container" style="width:95%">
	<div class="header-top">
		<div class="row">
			<div class="col-md-11 header-top-left">
				<div class="col-md-3 logo">
					<h1><a href="/MilkTea/admin"><span>MilkTea</span> admin</a></h1>
				</div>
				<div class="col-md-4 menu">
				    <ul class="megamenu skyblue">
						<li><a class="color1" href="#">QL DANH MỤC</a></li>				
						<li><a class="color1" href="#">QL MÓN</a></li>
						<li><a class="color1" href="#">QL SIZE</a></li>
						<li><a class="color1" href="#">QL TOPPING</a></li>
						<li><a class="color1" href="/MilkTea/qldonhang?tinhtrang=4">QL ĐƠN HÀNG</a></li>
					    <li><a class="color1" href="#">THỐNG KÊ</a></li>
					</ul> 
				</div>
			</div>
			<div class="col-md-1 header-top-right">
			    <a href="/MilkTea/admin/logout"><button type="button" class="btn btn-danger">Đăng xuất</button></a>
			</div>
		</div>
	</div>
</div>
</body>
</html>