<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file="header.jsp" %>
<div class="duongvien"></div>
<div class="container">
	<div class="giohangtrong">
		<img src="resources/image/clearcart.png">
		<h4>Không có món nào trong giỏ hàng</h4>
		<div class="chonthem">
			<a href="/MilkTea/thucdon?iddm=tatcamon"><button type="button" class="btn btn-success"> << Về trang thực đơn</button></a>
		</div>
	</div>
</div>

<%@ include file="footer.jsp" %>

