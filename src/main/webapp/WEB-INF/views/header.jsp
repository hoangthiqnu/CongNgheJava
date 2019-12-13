<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"/>
<title>Milk Tea</title>

<link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

</head>
<body>

<div class="container">
	<div class="header-top">
		<div class="row">
			<div class="col-md-8 header-top-left">
				<div class="col-md-3 logo">
					<h1><a href="/MilkTea"><span>Milk</span>Tea</a></h1>
				</div>
				<div class="col-md-5 menu">
				    <ul class="megamenu skyblue">
						<li><a class="color1" href="/MilkTea">Trang chủ</a></li>				
						<li><a class="color1" href="#">Giới thiệu</a></li>
						<li><a class="color1" href="/MilkTea/thucdon?iddm=tatcamon&page=1">Thực đơn</a></li>
					    <li><a class="color1" href="#">Liên hệ</a></li>
					</ul> 
				</div>
			</div>
			<div class="col-md-4 header-top-right">	
			    <div class="search">
				 	<form name ="timkiem" action="timkiem" method="post">	  
						<input type="text" name="tim" class="textbox" placeholder="Tìm thức uống" required>
						<input type="submit" id="submit" name="submit">
					</form>
				</div>
				<div class="box-cart">
					<div class="box-cart-1">
					<c:if test="${sessionScope.tongMon==0 || sessionScope.tongMon==null }">
						<a href="/MilkTea/giohang"><h4><p>Giỏ hàng</p><img src="<c:url value="/resources/image/cart.png" />" alt=""><div class="clearfix"></div></h4></a>
					</c:if>
					<c:if test="${sessionScope.tongMon>0}">
				     	<a href="/MilkTea/giohang"><h4><p>Giỏ hàng (${sessionScope.tongMon})</p><img src="<c:url value="/resources/image/cart.png" />" alt=""><div class="clearfix"></div></h4></a>
				    </c:if>
				    </div>
				</div>
			</div>
		</div>
	</div>
</div>


