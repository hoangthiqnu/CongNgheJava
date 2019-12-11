<%@page import="com.cnjv.model.TinhTrangHD"%>
<%@page import="com.cnjv.model.HoaDon"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Quản Lý Đơn Hàng</title>
<meta charset="UTF-8"/>

<link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

</head>
<body>
<%@ include file="headerAdmin.jsp" %>
	<div style="background-color: #63aa9c;height:35px;color:#fff; font-size:18px; padding:5px; text-align:center;">
	<span>Quản lý Đơn Hàng</span>
	</div>
<div class="content_top">
	<div class="container">
	   <div class="content-index" style="display: flex; justify-content: center;">
	   <div class="btn-group" style="width:20%">
			<a href="/MilkTea/qldonhang?tinhtrang=4" ><button type="button" class="btn btn-success">Tất cả</button></a>
		</div>
	   <div class="btn-group" style="width:20%">
			<a href="/MilkTea/qldonhang?tinhtrang=0" ><button type="button" class="btn btn-success">Chờ xác nhận</button></a>
		</div>
		<div class="btn-group" style="width:20%">
			<a href="/MilkTea/qldonhang?tinhtrang=1" ><button type="button" class="btn btn-success">Đã Xác nhận</button></a>
		</div>
		<div class="btn-group" style="width:20%">
			<a href="/MilkTea/qldonhang?tinhtrang=2" ><button type="button" class="btn btn-success">Đã thanh toán</button></a>
		</div>
		<div class="btn-group" style="width:20%">
			<a href="/MilkTea/qldonhang?tinhtrang=3" ><button type="button" class="btn btn-success">Đã hủy</button></a>
		</div>
		  
		</div>
		
			<table class="table table-striped">
			  <thead>
			    <tr>
			      <th scope="col" >ID</th>
			      <th scope="col" >Thời gian tạo</th>
			      <th scope="col" >Tên KH</th>
			      <th scope="col" >SĐT</th>
			      <th scope="col" >Địa chỉ giao</th>
			      <th scope="col">Ghi chú</th>
			      <th scope="col" >Tình Trạng</th>
			      <th scope="col" >Thành tiền</th>
			      <th scope="col" >Action</th>
			    </tr>
			  </thead>
			  <%
			  			List<HoaDon> listHoaDon = (List<HoaDon>) request.getAttribute("listHoaDon");
		    				for(HoaDon hd : listHoaDon){ 
		    	%>	  
			   <tbody>
					<tr>
						<th scope="row" ><a href="chitiethoadon/<%=hd.getIdHoaDon()%>"><%= hd.getIdHoaDon() %></a></td>
						<td><%= hd.getThoiGianTao() %></td>
						<td><%= hd.getTenKH() %></td>
						<td><%= hd.getsDT() %></td>
						<td><%= hd.getDiaChiGiao() %></td>
						<td><%= hd.getGhiChu() %></td>
						<td ><%= (hd.getTinhtranghd()).getTenTinhTrang() %></td>
						<td>75000</td>
						<td>
							<div class="btn-group">
					      		<a href="/MilkTea/qlhoadon/xacnhan?id=<%= hd.getIdHoaDon() %>" ><button type="button" class="btn btn-success">Xác nhận</button></a>
					      	</div>
					      	<div class="btn-group">
					      		<a href="/MilkTea/qlhoadon/huy?id=<%= hd.getIdHoaDon() %>"><button type="button" class="btn btn-danger">Hủy</button></a>
					      	</div>
				      	</td>
					</tr>
					<%
						}
					%>
			  </tbody>
			</table>
		
		<div class="clearfix"></div>
</div>
</div>
</body>
</html>		