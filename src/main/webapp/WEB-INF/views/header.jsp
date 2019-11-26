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
<link href='http://fonts.googleapis.com/css?family=Lato:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>

</head>
<body>

<div class="header-top">
	<div class="container">
		<div class="row">
			<div class="col-xs-8 header-top-left">
				<div class="col-xs-3 logo">
					<h1><a href="#"><span>Milk</span>Tea</a></h1>
				</div>
				<div class="col-xs-5 menu">
				    <ul class="megamenu skyblue">
						<li><a class="color1" href="#">Trang chủ</a></li>				
						<li><a class="color1" href="#">Giới thiệu</a></li>
						<li><a class="color1" href="#">Thực đơn</a></li>
					    <li><a class="color1" href="#">Liên hệ</a></li>
					</ul> 
				</div>
			</div>
			<div class="col-xs-4 header-top-right">
				
			    <div class="search">	  
					<input type="text" name="s" class="textbox" placeholder="Tìm thức uống">
					<input type="submit" id="submit" name="submit">
				</div>
				<div class="box-cart">
					<div class="box-cart-1">
				     	<a href="#"><h4><p>Giỏ hàng</p><img src="<c:url value="/resources/image/cart.png" />" alt=""><div class="clearfix"></div></h4></a>
				    </div>
				</div>
			</div>
		</div>
	</div>
</div>