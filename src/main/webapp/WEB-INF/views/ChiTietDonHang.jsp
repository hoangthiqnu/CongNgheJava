
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
					<span>Tình trạng đơn hàng:&nbsp;${tenTT}</span>
				</div>
				
				<div class="col-md-4 tieude-cart">
					<span>Mã đơn hàng:&nbsp;${hoaDon.getIdHoaDon()}</span>
				</div>
			</div>
		</div>
		<div class="ttdonhang">
			<div class="tieude-chitiet">
				<img src="<c:url value="/resources/image/check.png" />" alt="">
				<span>Thông tin đơn hàng</span>
			</div>
			<div style="margin-bottom:20px">
				<form name ="thongtin" action="/MilkTea/chitiethoadon/${hoaDon.getIdHoaDon()}" method="post">
				<div class="col-md-3 form-group">
	    				<label>Thời gian tạo đơn hàng:</label>
					</div>
					<div class="col-md-7 form-group">
	    				<input type="text" class="form-control" value="${hoaDon.getThoiGianTao()}" readonly>
					</div>
					<div class="col-md-3 form-group">
	    				<label>Tên người nhận:</label>
					</div>
					<div class="col-md-7 form-group">
	    				<input type="text" class="form-control" name="tenKH" id="exampleInputEmail1" placeholder="Nhập họ và tên" value="${hoaDon.getTenKhachHang()}" required>
					</div>

					<div class="col-md-3 form-group"> 
	    				<label>Điện thoại:</label>
					</div>
					<div class="col-md-7 form-group">
	    				<input type="text" class="form-control" name="sdt" id="exampleInputEmail1" placeholder="Nhập số điện thoại" value="${hoaDon.getSoDienThoai()}" required>
					</div>

					<div class="col-md-3 form-group">
					    <label>Địa chỉ giao hàng:</label>
					</div>
					<div class="col-md-7 form-group">
	    				<input type="text" class="form-control" name="diaChi" id="exampleInputPassword1" placeholder="Nhập địa chỉ" value="${hoaDon.getDiaChiGiao()}" required>
					</div>
					
					<div class="col-md-3 form-group">
					    <label>Ghi chú:</label>
					</div>
					<div class="col-md-7 form-group">
	    				<textarea class="form-control" name="ghiChu" rows="3">${hoaDon.getGhiChu()}</textarea>
					</div>
					
					<div class="col-md-12 btnempty" style="display: flex; justify-content: center; padding-bottom: 20px">
						<c:if test="${hoaDon.getIdTinhTrangHD() == 1 || hoaDon.getIdTinhTrangHD()==0}">
					 		<div class = "khoangtrang">	
					 		<a href="/MilkTea/chitiethoadon/capnhat?id=${ hoaDon.getIdHoaDon()}"><button type="submit" class="btn btn-warning "  onclick="return AlertCapNhat()">Cập nhật</button></a>
				 		</div>
				 		</c:if>
									   
						<c:if test="${hoaDon.getIdTinhTrangHD()==1 || hoaDon.getIdTinhTrangHD()==0}">
					      <div class = "khoangtrang">	
					       <a href="/MilkTea/chitiethoadon/huy?id=${ hoaDon.getIdHoaDon()}"><button type="button" class="btn btn-danger" onclick="return AlertHuy()">Hủy Đơn Hàng</button></a>
					    </div>
					    </c:if>
					   
					    
					    <c:if test="${hoaDon.getIdTinhTrangHD()==0}">
					    <div class = "khoangtrang">
					       	<a href="/MilkTea/chitiethoadon/xacnhan?id=${ hoaDon.getIdHoaDon()}"><button type="button" class="btn btn-success">Xác nhận</button></a>
					       	</div>
					    </c:if>
					    
					    <div class = "khoangtrang">
					    <c:if test="${hoaDon.getIdTinhTrangHD()==1}">
					    <div class = "khoangtrang">
					        <a href="/MilkTea/chitiethoadon/thanhtoan?id=${ hoaDon.getIdHoaDon()}"><button type="button" class="btn btn-primary" name="btnThanhToan" onClick="ThanhToan">Thanh Toán</button></a>
					        </div>
					    </c:if>
					    

					</div>
				</form>
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
                    <c:set var="i" value="1"></c:set>
                    <c:forEach var="cthd" items="${ChiTietHoaDon}">
                       
                        <tr>
                        <c:set var="mon" value="${monDAO.layMonTheoId(cthd.getIdMon())}"></c:set>
                        <td scope="row" style="padding-top: 55px;">${i}</td>
                            <td class="colimg">
                            	<div class="hinh-cart">
                            	
                            	
                            		<img src="<c:url value="/resources/image/${mon.getHinhAnh()}" />" alt="">
                            	</div>
                            </td>
                            <td class="coltenmon" style="width:40%">
                            	<p style="font-weight: bold;">${mon.getTenMon()}&nbsp;[${mon.getIdMon()}]<p>
                            	<h5>${cthd.getGhiChuMon()} , Size ${cthd.getLoaiSize()}</h5>
                            	<h5>${cthd.getDSTopping()}</h5>	
                            </td>
                            
                            <td class="colgia" style="padding-top: 55px;">
                            <fmt:formatNumber type = "number" maxFractionDigits = "3" value ="${cthd.getThanhTien()/cthd.getSoLuong()}"/> Đ</td>
                            <td class="colsl"  style="padding-left:35px; padding-top: 55px;">${cthd.getSoLuong()}</td>
                            <td class="colgia" style="text-align:right !important; padding-right:15px; padding-top: 55px;">
                            <fmt:formatNumber type = "number" maxFractionDigits = "3" value ="${cthd.getThanhTien()}"/> Đ</td>
                        </tr>
                        <c:set var="i" value="${i+1}"></c:set>
                        </c:forEach>
                        <tr>
                        <td></td>
                            <td class="colimg">&nbsp;</td>
                            <td class="coltenmon">&nbsp;</td>
                            <td class="colgia">&nbsp;</td>
                            <td class="colsl"><span>Tổng cộng:</span></td>
                            <td class="colgia" ><span><fmt:formatNumber type = "number" maxFractionDigits = "3" value ="${tongTien}"/> Đ</span></td>
                        </tr>
                    </tbody>
                </table>
            </div>
		</div>
	</div>
	<script language="javascript">
			function AlertHuy(){
				return confirm("Bạn có chắc chắn muốn hủy đơn hàng này không?");
			}
           		 
			function AlertCapNhat(){
				return confirm("Bạn có chắc chắn muốn cập nhật thông tin cho đơn hàng này không?");
			}
        	</script>
        	<% request.getSession().removeAttribute("rsXacNhan");
			request.getSession().removeAttribute("rsHuy");
			request.getSession().removeAttribute("rsThanhToan");%>
</div>
<div class="clearfix"></div>
</body>
</html>		