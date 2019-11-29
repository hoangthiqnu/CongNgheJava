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
					<%
						List<DMMon> dsDMMon = (List<DMMon>) request.getAttribute("DanhSachDanhMuc");
						for(DMMon dmmon : dsDMMon){
					%>
						<li><a href="/MilkTea/thucdon?iddm=<%= dmmon.getIdDMMon() %>"><%= dmmon.getTenDMMon() %></a></li> <%} %>
					</ul>	
				</div>
			</div>
			<div class="col-md-9 title-danhmuc">
				<span>THỰC ĐƠN</span>
			</div>
			<ul class=" col-md-9 products-menu">
			<%
				List<Mon> dsMon = (List<Mon>) request.getAttribute("DanhSachMon");
				for(Mon mon : dsMon){
			%>
				<li class="col-md-3 each-pro-menu"> 
					<div class="info-pro-menu" >
						<img src="resources/image/<%= mon.getHinhAnh() %>" alt="">
						<h3><%= mon.getTenMon() %></h3>
						<h4><fmt:formatNumber type = "number" maxFractionDigits = "3" value ="<%= mon.getDonGiaMon() %>"/> Đ</h4>	
					</div>
					<div class="btn-pro-menu">
						<a href="#" class="btn-pro-css"><span>CHỌN</span></a>
					</div>
				</li><%} %>
			</ul>
		</div>
</div>
<%@ include file="footer.jsp" %>