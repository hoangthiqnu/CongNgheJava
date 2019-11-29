<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@page import="com.cnjv.model.Mon"%>
<%@page import="java.util.List"%>
<%@ include file="header.jsp" %>
<%@ include file="banner.jsp" %>

<div class="container">
	<div class="content-index">
		<div class="row">
			<div class="col-xs-8">
				<span class="title-pro">MÓN MỚI</span>
			</div>
			<div class="col-xs-4">
				<div class="btn-all">
				     <a href="/MilkTea/thucdon?iddm=tatcamon" class="btn-all-css"><span>XEM THÊM TẤT CẢ MÓN</span></a>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12 ">
				<ul class="products">
				<%
					List<Mon> dsMonMoi = (List<Mon>) request.getAttribute("DanhSachMonMoi");
					for(Mon mon : dsMonMoi){
				%>
					<li class="col-md-4 each-pro"> 
						<div class="info-pro" >
							<img src="resources/image/<%= mon.getHinhAnh() %>" alt="">
							<h3><%= mon.getTenMon() %></h3>
							<h4><fmt:formatNumber type = "number" maxFractionDigits = "3" value ="<%= mon.getDonGiaMon() %>"/> Đ</h4>	
						</div>
						<div class="btn-pro">
						<a href="#" class="btn-pro-css"><span>CHỌN</span></a>
						</div>
					</li><%} %>
				</ul>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12">
				<span class="title-pro">MÓN BÁN CHẠY</span>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12 ">
				<ul class="products">
				<%
					List<Mon> dsMonBanChay = (List<Mon>) request.getAttribute("DanhSachMonBanChay");
					for(Mon mon : dsMonBanChay){
				%>
					<li class="col-md-4 each-pro"> 
						<div class="info-pro" >
							<img src="resources/image/<%= mon.getHinhAnh() %>" alt="">
							<h3><%= mon.getTenMon() %></h3>
							<h4><fmt:formatNumber type = "number" maxFractionDigits = "3" value ="<%= mon.getDonGiaMon() %>"/> Đ</h4>	
						</div>
						<div class="btn-pro">
						<a href="#" class="btn-pro-css"><span>CHỌN</span></a>
						</div>
					</li><%} %>
				</ul>
			</div>
		</div>
	</div>
</div>
<%@ include file="footer.jsp" %>

