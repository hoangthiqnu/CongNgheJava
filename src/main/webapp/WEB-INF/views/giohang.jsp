<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file="header.jsp" %>
<div class="duongvien"></div>
<div class="container">
	<div class="content-index">
		<div class="row">
			<div class="col-md-12">
				<div class="col-md-6 chonthem-cart">
					<a href="/MilkTea/thucdon?iddm=tatcamon"><button type="button" class="btn btn-default"> << Chọn thêm thức uống khác</button></a>
				</div>
				<div class="col-md-6 tieude-cart">
					<span>Giỏ hàng của bạn</span>
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
                    <tbody>
                        <tr>
                            <td class="colimg">
                            	<div class="hinh-cart">
                            		<a href="/MilkTea/chitietmon"><img src="resources/image/traden.png" class="img-thumbnail"></a>
                            	</div>
                            	<div class="xoa-cart">
                            		<a href="#"><img src="resources/image/delete.png">&nbsp;Xóa</a>
                            	</div>
                            </td>
                            <td class="coltenmon">
                            	<a href="/MilkTea/chitietmon">Trà Sữa Xoài Trân Châu Đen</a>
                            	<h5>Lạnh, Size M</h5>
                            	<h5>+Kem sữa +Pudding +Thạch dừa +Trân châu đen +Trân châu trắng +Thạch đen +Thạch trái cây +Nha đam</h5>
                            	<h5>50% đá, 50% đường</h5>
                            </td>
                            <td class="colgia">100.000₫</td>
                            <td class="colsl">
								<button type="button" class="btn btn-success">–</button>
								<input type="text" class="form-control" id="inputEmail3" value="1">
								<button type="button" class="btn btn-success">+</button>
                            </td>
                            <td class="colgia">1.100.000₫</td>
                        </tr>
                        <tr>
                            <td class="colimg">
                            	<div class="hinh-cart">
                            		<a href="/MilkTea/chitietmon"><img src="resources/image/traden.png" class="img-thumbnail"></a>
                            	</div>
                            	<div class="xoa-cart">
                            		<a href="#"><img src="resources/image/delete.png">&nbsp;Xóa</a>
                            	</div>
                            </td>
                            <td class="coltenmon">
                            	<a href="/MilkTea/chitietmon">Trà Sữa Xoài Trân Châu Đen</a>
                            	<h5>Lạnh, Size M</h5>
                            	<h5>+Kem sữa +Pudding +Thạch dừa +Trân châu đen</h5>
                            	<h5>50% đá, 50% đường</h5>
                            </td>
                            <td class="colgia">100.000₫</td>
                            <td class="colsl">
								<button type="button" class="btn btn-success">–</button>
								<input type="text" class="form-control" id="inputEmail3" value="1">
								<button type="button" class="btn btn-success">+</button>
                            </td>
                            <td class="colgia">1.100.000₫</td>
                        </tr>
                        <tr>
                            <td class="colimg">
                            	<div class="hinh-cart">
                            		<a href="/MilkTea/chitietmon"><img src="resources/image/traden.png" class="img-thumbnail"></a>
                            	</div>
                            	<div class="xoa-cart">
                            		<a href="#"><img src="resources/image/delete.png">&nbsp;Xóa</a>
                            	</div>
                            </td>
                            <td class="coltenmon">
                            	<a href="/MilkTea/chitietmon">Trà Sữa Xoài Trân Châu Đen</a>
                            	<h5>Lạnh, Size M</h5>
                            	<h5></h5>
                            	<h5>50% đá, 50% đường</h5>
                            </td>
                            <td class="colgia">100.000₫</td>
                            <td class="colsl">
								<button type="button" class="btn btn-success">–</button>
								<input type="text" class="form-control" id="inputEmail3" value="1">
								<button type="button" class="btn btn-success">+</button>
                            </td>
                            <td class="colgia">1.100.000₫</td>
                        </tr>
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
				<span>Xác nhận thông tin đơn hàng</span>
			</div>
			<form name ="donhang" action="dathang" method="post">
				<div class="col-md-4 form-group"> 
    				<label>Tên người nhận</label>
    				<input type="text" class="form-control" id="exampleInputEmail1" placeholder="Nhập họ và tên">
				</div>
				<div class="col-md-4 form-group"> 
    				<label>Điện thoại</label>
    				<input type="text" class="form-control" id="exampleInputEmail1" placeholder="Nhập số điện thoại">
				</div>
				<div class="col-md-8 form-group">
				    <label>Địa chỉ giao hàng (Số nhà, tên đường, phường)</label>
				    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Nhập địa chỉ">
				</div>
				<div class="col-md-8 form-group">
				    <label>Ghi chú (nếu có)</label>
				    <textarea class="form-control" rows="3"></textarea>
				</div>
				<div class="col-md-4 btndat">
					<button type="submit" class="btn btn-danger ">ĐẶT HÀNG&nbsp;&nbsp;&nbsp;&nbsp;1.159.000₫</button>	
				</div>
			</form>
		</div>
	</div>
</div>

<%@ include file="footer.jsp" %>

