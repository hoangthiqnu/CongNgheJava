<%@page import="com.cnjv.model.TinhTrangHD"%>
<%@page import="com.cnjv.model.HoaDon"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
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
	   <div class="content-index">
	   <div style="display: flex; justify-content: center; padding-bottom: 20px" >
		   <div class="btn-group" style="width:20%">
				<a href="/MilkTea/qldonhang?tinhtrang=4" ><button type="button" class="btn btn-default">Tất cả</button></a>
			</div>
		   <div class="btn-group" style="width:20%">
				<a href="/MilkTea/qldonhang?tinhtrang=0" ><button type="button" class="btn btn-warning">Chờ xác nhận</button></a>
			</div>
			<div class="btn-group" style="width:20%">
				<a href="/MilkTea/qldonhang?tinhtrang=1" ><button type="button" class="btn btn-success">Đã Xác nhận</button></a>
			</div>
			<div class="btn-group" style="width:20%">
				<a href="/MilkTea/qldonhang?tinhtrang=2" ><button type="button" class="btn btn-primary">Đã thanh toán</button></a>
			</div>
			<div class="btn-group" style="width:20%">
				<a href="/MilkTea/qldonhang?tinhtrang=3" ><button type="button" class="btn btn-danger">Đã hủy</button></a>
			</div>
			<div class="clearfix"></div>
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
			      <th scope="col" >Thành tiền</th>
			      <th scope="col" >Tình Trạng</th>
			      <th scope="col" style="text-align:center !important" >Action</th>
			    </tr>
			  </thead>
		    	<c:forEach var = "hd" items="${listHoaDon}">
		    	<c:set var="tinhtrang" value="${ttDAO}"></c:set>
			   <tbody>
					<tr>
						<th scope="row" >${ hd.getIdHoaDon()}</th>
						<td>${hd.getThoiGianTao()}</td>
						<td>${hd.getTenKhachHang()}</td>
						<td>${hd.getSoDienThoai()}</td>
						<td>${hd.getDiaChiGiao()}</td>
						<td style="text-align:right !important; padding-right:15px;"><fmt:formatNumber type = "number" maxFractionDigits = "3" value ="${hd.getTongTien()}"/> đ</td>
						<td>${tinhtrang.layTenTinhTrang(hd.getIdTinhTrangHD())}</td>
						<td style="text-align:center !important;">
						<div class="btn-group">
					      		<a href="chitiethoadon/${hd.getIdHoaDon()}"><button type="button" class="btn btn-default">Xem</button></a>
					      	</div>
						<c:if test="${hd.getIdTinhTrangHD() == 1 || hd.getIdTinhTrangHD()==0}">
					      	<div class="btn-group">
					      		<a href="/MilkTea/qldonhang/huy?id=${ hd.getIdHoaDon()}"><button type="button" class="btn btn-danger" onclick="return AlertHuy()">Hủy</button></a>
					      	</div>
					    </c:if>
						<c:if test="${hd.getIdTinhTrangHD()==0}">
							<div class="btn-group">
					      		<a href="/MilkTea/qldonhang/xacnhan?id=${ hd.getIdHoaDon()}"><button type="button" class="btn btn-success">Xác nhận</button></a>
					      	</div>
					     </c:if>
					     <c:if test="${hd.getIdTinhTrangHD()==1}">
					      	<div class="btn-group">
					      		<a href="/MilkTea/qldonhang/thanhtoan?id=${ hd.getIdHoaDon()}"><button type="button" class="btn btn-primary">Thanh Toán</button></a>
					      	</div>
					     </c:if>
					     
				      	</td>
					</tr>
					</c:forEach>
			  </tbody>
			</table>
			<script language="javascript">
			function AlertHuy(){
				return confirm("Bạn có chắc chắn muốn hủy đơn hàng này không?");
			}
           		 
        	</script>
			<c:if test="${sessionScope.rsXacNhan == 1}">
				<script>
			 		alert("Xác nhận đơn hàng thành công.\n ");
				</script>
			</c:if>
			<c:if test="${sessionScope.rsHuy == 1}">
				<script>
			 		alert("Hủy đơn hàng thành công.\n ");
				</script>
			</c:if>
			<c:if test="${sessionScope.rsThanhToan == 1}">
				<script>
			 		alert("Thanh toán đơn hàng thành công.\n ");
				</script>
			</c:if>
			<% request.getSession().removeAttribute("rsXacNhan");
			request.getSession().removeAttribute("rsHuy");
			request.getSession().removeAttribute("rsThanhToan");%>
		<div class="clearfix"></div>
</div>
</div>
</body>
</html>		