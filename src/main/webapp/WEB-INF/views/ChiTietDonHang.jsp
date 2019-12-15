<%@page import="com.cnjv.model.XuLyHoaDon"%>
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
				<div class="col-md-4 chonthem-cart">
					<a href="/MilkTea/qldonhang?tinhtrang=4"><button type="button" class="btn btn-default"> << Trở lại trang quản lý đơn hàng</button></a>
				</div>
				<div class="col-md-4 tieude-chitiet">
					<span>Tình trạng đơn hàng:&nbsp;${hoaDon.getTinhtranghd().getTenTinhTrang()}</span>
				</div>
				
				<div class="col-md-4 tieude-cart">
					<span>Mã đơn hàng:&nbsp;${hoaDon.getIdHoaDon()}</span>
				</div>
			</div>
		</div>
		<div class="chitiet-cart">
			<div class="row">
                <table class="table">
                    <thead>
                        <tr>
                        <th>STT</th>
                            <th>&nbsp;</th>
                            <th>Tên món</th>
                            <th>Đơn giá</th>
                            <th>Số lượng</th>
                            <th>Thành tiền</th>
                        </tr>
                    </thead>

                    <tbody>
                    <c:forEach var="cthd" items="${ChiTietHoaDon}">
                        <tr>
                            <td class="colimg">
                            	<div class="hinh-cart">
                            		<a href="/MilkTea/chitietmon"><img src="resources/image/${cthd.getHinhAnh()}" class="img-thumbnail"></a>
                            	</div>
                            </td>
                            <td class="coltenmon" style="width:40%">
                            	<a href="/MilkTea/chitietmon">${cthd.getTenMon()}&nbsp;(${cthd.getIdMon()})</a>
                            	<h5>${cthd.getGhiChuMon()} , Size ${cthd.getLoaiSize()}</h5>
                            	<h5>${cthd.getDsTopping()}</h5>	
                            </td>
                            
                            <td class="colgia">${cthd.getDonGia()}</td>
                            <td class="colsl">${cthd.getSoLuong()}</td>
                            <td class="colgia">${cthd.getThanhTien()}</td>
                        </tr>
                        </c:forEach>
                        <tr>
                        <td></td>
                            <td class="colimg">&nbsp;</td>
                            <td class="coltenmon">&nbsp;</td>
                            <td class="colgia">&nbsp;</td>
                            <td class="colsl"><span>Tổng cộng:</span></td>
                            <td class="colgia"><span>${tongTien}</span></td>
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
				<form name ="thongtin" action="/MilkTea/chitiethoadon/${hoaDon.getIdHoaDon()}" method="post" onsubmit="return Check()">
				<table class="table table-striped">
			  <thead>
			    <tr>
			      <th scope="col" >ID</th>
			      <th scope="col" >Thời gian tạo</th>
			      <th scope="col" >Tên KH</th>
			      <th scope="col" >SĐT</th>
			      <th scope="col" >Địa chỉ giao</th>
			      <th scope="col">Ghi chú</th>
			      <th scope="col" >Thành tiền</th>
			      <th scope="col" >Tình Trạng</th>
			      <th scope="col" >Action</th>
			    </tr>
			  </thead>
		    	<c:forEach var = "hd" items="${listHoaDon}">
		    	
			   <tbody>
					<tr>
						<th scope="row" ><a href="chitiethoadon/${hd.getIdHoaDon()}">${ hd.getIdHoaDon()}</a></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td>
						<c:if test="${hd.getTinhtranghd().getIdTinhTrangHD() == 1 || hd.getTinhtranghd().getIdTinhTrangHD()==0}">
					      	<div class="btn-group">
					      		<a href="/MilkTea/qldonhang/huy?id=${ hd.getIdHoaDon()}"><button type="button" class="btn btn-danger">Hủy</button></a>
					      	</div>
					      	</c:if>
						<c:if test="${ hd.getTinhtranghd().getIdTinhTrangHD()==0}">
							<div class="btn-group">
					      		<a href="/MilkTea/qldonhang/xacnhan?id=${ hd.getIdHoaDon()}"><button type="button" class="btn btn-success">Xác nhận</button></a>
					      	</div>
					      </c:if>
					     <c:if test="${hd.getTinhtranghd().getIdTinhTrangHD()==1}">
					      	<div class="btn-group">
					      		<a href="/MilkTea/qldonhang/thanhtoan?id=${ hd.getIdHoaDon()}"><button type="button" class="btn btn-primary">Thanh Toán</button></a>
					      	</div>
					      	</c:if>
				      	</td>
					</tr>
					</c:forEach>
			  </tbody>
			</table>
					<div class="col-md-3 form-group">
	    				<label>Tên người nhận:</label>
					</div>
					<div class="col-md-7 form-group" style="font-weight: 100;">
	    				<p>${hoaDon.getTenKH()}</p>
					</div>

					<div class="col-md-3 form-group"> 
	    				<label>Điện thoại:</label>
					</div>
					<div class="col-md-7 form-group" style="font-weight: 100;">
	    				<p>${hoaDon.getsDT()}</p>
					</div>

					<div class="col-md-3 form-group">
					    <label>Địa chỉ giao hàng:</label>
					</div>
					<div class="col-md-7 form-group" style="font-weight: 100;">
	    				<p>${hoaDon.getDiaChiGiao()}</p>
					</div>
					
					<div class="col-md-3 form-group">
					    <label>Ghi chú:</label>
					</div>
					<div class="col-md-7 form-group" style="font-weight: 100;">
	    				<p>${hoaDon.getGhiChu()}</p>
					</div>
					
					<div class="col-md-8 btnempty">
					
						<button type="submit" class="btn btn-warning ">Cập nhật</button>
						<button type="button" class="btn btn-danger ">Hủy Đơn Hàng</button>	
					</div>
				</form>
			<script>
			 	function Check(){
			 		let tenKH = document.forms["thongtin"]["tenKH"].value;
			 		let sdt = document.forms["thongtin"]["sdt"].value;
			 		let diaChi = document.forms["thongtin"]["diaChi"].value;
			 		if(tenKH === "" || sdt === "" || diaChi === ""  ){
			 			alert("Vui lòng nhập đầy đủ nội dung");
			 			return false;
			 		}
			 		return true;
			 	}
			</script>
		</div>
	</div>
</div>
<div class="clearfix"></div>
</body>
<%@ include file="footer.jsp" %>
</html>		