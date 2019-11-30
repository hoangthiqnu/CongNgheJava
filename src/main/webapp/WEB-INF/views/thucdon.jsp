<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@page import="com.cnjv.model.DMMon"%>
<%@page import="com.cnjv.model.Mon"%>
<%@page import="java.util.List"%>

<%@ include file="header.jsp" %>
<div class="container-fuild">
	<div class="banner">
		<div class="banner_desc">
		</div>
	</div>
</div>
<div class="container">
		<div class="col-md-12 ">
			<div class="col-md-3">
				<div class="danh_muc">
					<ul>
						<li><a href="/MilkTea/thucdon?iddm=tatcamon">TẤT CẢ</a></li>
						<c:set var="dsDMMon" value="${DanhSachDanhMuc}"></c:set>	
						<c:forEach items="${dsDMMon}" var="danhmuc">
							<li><a href="/MilkTea/thucdon?iddm=${danhmuc.getIdDMMon()}">${danhmuc.getTenDMMon()}</a></li> 
						</c:forEach>
					</ul>	
				</div>
			</div>
			<c:set var="tieude" value="KẾT QUẢ TÌM"></c:set>	
			<c:if test ="${TenDM != null}">
				<c:set var="tieude" value="${TenDM}"></c:set>
			</c:if>
			<div class="col-md-9 title-danhmuc">
				<span>${tieude}</span>
			</div>
			<ul class=" col-md-9 products-menu">
				<c:if test ="${DanhSachMon != null}">
					<c:set var="dsMon" value="${DanhSachMon}"></c:set>	
				</c:if>
				<c:if test ="${DanhSachMonTimKiem != null}">
					<c:set var="dsMon" value="${DanhSachMonTimKiem}"></c:set>	
				</c:if>
				<c:forEach items="${dsMon}" var="mon">
					<li class="col-md-3 each-pro-menu"> 
						<div class="info-pro-menu" >
							<img src="resources/image/${mon.getHinhAnh()}" alt="">
							<h3>${mon.getTenMon()}</h3>
							<h4><fmt:formatNumber type = "number" maxFractionDigits = "3" value ="${mon.getDonGiaMon()}"/> Đ</h4>
						</div>
						<div class="btn-pro-menu">
							<a href="#" class="btn-pro-css"><span>CHỌN</span></a>
						</div>
					</li>		
				</c:forEach>
				<c:if test ="${DanhSachMonTimKiem.size()==0}">
			 		<span class="title-tim">Không tìm thấy kết quả!</span>
				</c:if>
			</ul>
		</div>
</div>
<%@ include file="footer.jsp" %>