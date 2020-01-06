<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file="header.jsp" %>
<div class="duongvien"></div>
<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="col-md-6 chonthem-cart">
					<a href="/MilkTea/giohang"><button type="button" class="btn btn-default"> << Quay lại giỏ hàng</button></a>
				</div>
				<div class="col-md-6 tieude-cart">
					<span>Đơn hàng của bạn</span>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="col-md-5 ttkhachhang">
					<p>Tên người nhận: <span>${sessionScope.tenNguoiNhan}</span></p>
					<p>Điện thoại: <span>${sessionScope.soDienThoai}</span></p>
					<p>Địa chỉ giao hàng: <span>${sessionScope.diaChi}</span></p>
					<p>Ghi chú: <span>${sessionScope.ghiChu}</span></p>
				</div>
				<div class="col-md-7 chitiet-cart">
					<div class="row">
		                <table class="table table-bordered">
		                    <thead>
		                        <tr>
		                            <th>Tên món</th>
		                            <th>Đơn giá</th>
		                            <th>Số lượng</th>
		                            <th>Thành tiền</th>
		                        </tr>
		                    </thead>
		                    <tbody>
		                    <c:forEach items="${sessionScope.dsGioHang}"  var="item">
		                        <tr>
		                            <td class="coltenmon-dh">
		                            	<h4>${item.mon.tenMon}</h4>
		                            	<h5>${item.trangThaiMon}, Size ${item.loaiSizeMua}</h5>
		                            	<h5><c:forEach items="${item.dsToppingMua}"  var="topping"> +${topping.tenTopping}</c:forEach></h5>
		                            	<h5>${item.mucDuong}, ${item.mucDa}</h5>
		                            </td>
		                            <td class="colgia-dh"><fmt:formatNumber type = "number" maxFractionDigits = "3" value ="${item.thanhTien/item.soLuongMua}"/>₫</td>
		                            <td class="colsl-dh">${item.soLuongMua}</td>
		                            <td class="colgia-dh"><fmt:formatNumber type = "number" maxFractionDigits = "3" value ="${item.thanhTien}"/>₫</td>
		                        </tr>
		                   </c:forEach>
		                        <tr>
		                            <td class="coltenmon-dh">&nbsp;</td>
		                            <td class="colgia-dh">&nbsp;</td>
		                            <td class="colsl-dh"><span>Tổng cộng:</span></td>
		                            <td class="colgia-dh"><span><fmt:formatNumber type = "number" maxFractionDigits = "3" value ="${sessionScope.tongTien}"/> Đ</span></td>
		                        </tr>
		                    </tbody>
		                </table>
		                <form name ="xacnhan" action="xacnhan" method="post">
		                <div class="btndat">
							<button type="submit" class="btn btn-danger ">XÁC NHẬN MUA HÀNG</button>	
						</div>
						</form>
            		</div>
				</div>
			</div>
		</div>	
</div>

<%@ include file="footer.jsp" %>

