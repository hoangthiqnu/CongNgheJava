<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file="header.jsp" %>
<div class="container-fuild">
	<div class="banner">
		<div class="banner_desc">
		</div>
	</div>
</div>
<div class="container">
<div class="content-index">
	<div class="row">
		<div class="col-md-12">
			<span class="title-pro">KẾT QUẢ TÌM KIẾM</span>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12 ">
			<ul class="products">	
				<c:forEach items="${DanhSachMonTimKiem}" var="mon">
					<li class="col-md-4 each-pro"> 
						<div class="info-pro" >
							<img src="resources/image/${mon.getHinhAnh()}" alt="">
							<h3>${mon.getTenMon()}</h3>
							<h4><fmt:formatNumber type = "number" maxFractionDigits = "3" value ="${mon.getDonGiaMon()}"/> Đ</h4>	
						</div>
						<div class="btn-pro">
						<a href="/MilkTea/chitietmon?idmon=${mon.getIdMon()}" class="btn-pro-css"><span>CHỌN</span></a>
						</div>
					</li>
				</c:forEach>
			</ul>
			<c:if test ="${DanhSachMonTimKiem.size()==0}">
			 	<div class="khongtimthay">
					<img src="resources/image/search.png">
					<h3>Không tìm thấy kết quả!</h3>
					<div class="chonthem">
						<a href="/MilkTea/thucdon?iddm=tatcamon&page=1"><button type="button" class="btn btn-success"> << Về trang thực đơn</button></a>
					</div>
				</div>
			</c:if>
		</div>
	</div>
</div>
</div>
<%@ include file="footer.jsp" %>