<%@page import="com.cnjv.model.ChiTietHoaDon"%>
<%@page import="com.cnjv.model.TinhTrangHD"%>
<%@page import="com.cnjv.model.HoaDon"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<title>Chi tiết đơn hàng</title>
<meta charset="UTF-8"/>

<link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

</head>
<body>
<%@ include file="headerAdmin.jsp" %>
	<div style="background-color: #63aa9c;height:35px;color:#fff; font-size:18px; padding:5px; text-align:center;">
	<span>Thông tin chi tiết Đơn Hàng</span>
	</div>
<div class="content_top">
<div class="content-index">
		<div class="row">
			<div class="col-md-12">
				<div class="col-md-6 chonthem-cart">
					<a href="/MilkTea/qldonhang"><button type="button" class="btn btn-default"> << Trở lại trang quản lý đơn hàng</button></a>
				</div>
				
				
				<div class="col-md-6 tieude-cart">
					<span>Mã đơn hàng:<%= (Integer) request.getAttribute("id") %> </span>
				</div>
			</div>
		</div>
		<div class="chitiet-cart">
			<div class="row">
                <table class="table">
                    <thead>
                        <tr>
                            <th>&nbsp;</th>
                            <th>Tên món</th>
                            <th>Đơn giá</th>
                            <th>Số lượng</th>
                            <th>Thành tiền</th>
                        </tr>
                    </thead>
                    
                    <c:forEach items="${listChiTietHoaDon}" var="cthd">
                    <tbody>
                        <tr>
                            <td class="colimg">
                            	<div class="hinh-cart">
                            		<a href="/MilkTea/chitietmon"><img src="resources/image/traden.png" class="img-thumbnail"></a>
                            	</div>
                            </td>
                            <td class="coltenmon" style="width:40%">
                            	<a href="/MilkTea/chitietmon">Trà Sữa Xoài Trân Châu Đen</a>
                            	<h5>${cthd.getGhiChuMon()} , Size ${cthd.getLoaiSize()}</h5>
                            	<h5>+Kem sữa +Pudding +Thạch dừa +Trân châu đen +Trân châu trắng +Thạch đen +Thạch trái cây +Nha đam</h5>
                            	<h5>50% đá, 50% đường</h5>
                            </td>
                            <td class="colgia">100.000₫</td>
                            <td class="colsl">${cthd.getSoLuong()}</td>
                            <td class="colgia">1.100.000₫</td>
                        </tr>
                       </c:forEach>
                        
                        <tr>
                            <td class="colimg">&nbsp;</td>
                            <td class="coltenmon">&nbsp;</td>
                            <td class="colgia">&nbsp;</td>
                            <td class="colsl"><span>Tổng cộng:</span></td>
                            <td class="colgia"><span>10.100.000₫</span></td>
                        </tr>
                    </tbody>
                </table>
            </div>
		</div>
		<div class="ttdonhang">
			<div class="tieude-chitiet">
				<img src="resources/image/check.png">
				<span>Thông tin khách hàng</span>
			</div>
		
				<form name ="donhang" action="chitiethoadon/${id}" method="post">
					<div class="col-md-4 form-group"> 
	    				<label>Tên người nhận</label>
	    				<input type="text" class="form-control" id="exampleInputEmail1" placeholder="Nhập họ và tên" value="${hoaDon.getTenKH()}">
					</div>
					<div class="col-md-4 form-group"> 
	    				<label>Điện thoại</label>
	    				<input type="text" class="form-control" id="exampleInputEmail1" placeholder="Nhập số điện thoại" value="${hoaDon.getsDT()}">
					</div>
					<div class="col-md-8 form-group">
					    <label>Địa chỉ giao hàng (Số nhà, tên đường, phường)</label>
					    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Nhập địa chỉ" value="${hoaDon.getDiaChiGiao()}">
					</div>
					<div class="col-md-8 form-group">
					    <label>Ghi chú (nếu có)</label>
					    <textarea class="form-control" rows="3" value="${hoaDon.getGhiChu()}"></textarea>
					</div>
					<div class="col-md-4 btnempty">
						<button type="submit" class="btn btn-warning ">Cập nhật</button>
						<button type="button" class="btn btn-danger ">Hủy Đơn Hàng</button>	
					</div>
				</form>
			
		</div>
	</div>
</div>
</body>
</html>		