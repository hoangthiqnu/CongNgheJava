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
					<p>Tên người nhận: <span>Nguyễn Phương Hoàng Thi</span></p>
					<p>Điện thoại: <span>0353488887</span></p>
					<p>Địa chỉ giao hàng: <span>960 Trần Hưng Đạo, phường Đống Đa, Quy Nhơn, Bình Định</span></p>
					<p>Ghi chú: <span>Giao nhanh nhanh đúng giờ giúp mình nhé. Cảm ơn</span></p>
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
		                        <tr>
		                            <td class="coltenmon-dh">
		                            	<h4>Trà Sữa Xoài Trân Châu Đen</h4>
		                            	<h5>Lạnh, Size M</h5>
		                            	<h5>+Kem sữa +Pudding +Thạch dừa +Trân châu đen +Trân châu trắng +Thạch đen +Thạch trái cây +Nha đam</h5>
		                            	<h5>50% đá, 50% đường</h5>
		                            </td>
		                            <td class="colgia-dh">100.000₫</td>
		                            <td class="colsl-dh">5</td>
		                            <td class="colgia-dh">1.100.000₫</td>
		                        </tr>
		                        <tr>
		                            <td class="coltenmon-dh">
		                            	<h4>Trà Sữa Xoài Trân Châu Đen</h4>
		                            	<h5>Lạnh, Size M</h5>
		                            	<h5>+Kem sữa +Pudding +Thạch dừa +Trân châu đen +Trân châu trắng +Thạch đen +Thạch trái cây +Nha đam</h5>
		                            	<h5>50% đá, 50% đường</h5>
		                            </td>
		                            <td class="colgia-dh">100.000₫</td>
		                            <td class="colsl-dh">5</td>
		                            <td class="colgia-dh">1.100.000₫</td>
		                        </tr>
		                        <tr>
		                            <td class="coltenmon-dh">&nbsp;</td>
		                            <td class="colgia-dh">&nbsp;</td>
		                            <td class="colsl-dh"><span>Tổng cộng:</span></td>
		                            <td class="colgia-dh"><span>10.100.000₫</span></td>
		                        </tr>
		                    </tbody>
		                </table>
		                <div class="btndat">
							<button type="submit" class="btn btn-danger ">XÁC NHẬN MUA HÀNG</button>	
						</div>
            		</div>
				</div>
			</div>
		</div>	
</div>

<%@ include file="footer.jsp" %>

