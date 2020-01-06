<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file="header.jsp" %>
<div class="duongvien"></div>
<div class="container">
	<div class="content-index">
	<c:if test="${sessionScope.tongMon==0 || sessionScope.tongMon==null }">
		<div class="giohangtrong">
			<img src="resources/image/clearcart.png">
			<h3>Không có món nào trong giỏ hàng!</h3>
			<div class="chonthem">
				<a href="/MilkTea/thucdon?iddm=tatcamon&page=1"><button type="button" class="btn btn-success"> << Về trang thực đơn</button></a>
			</div>
		</div>
	</c:if>
	<c:if test="${sessionScope.tongMon>0}">
		<div class="row">
			<div class="col-md-12">
				<div class="col-md-6 chonthem-cart">
					<a href="/MilkTea/thucdon?iddm=tatcamon&page=1"><button type="button" class="btn btn-default"> << Chọn thêm thức uống khác</button></a>
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
                    <c:forEach items="${sessionScope.dsGioHang}"  var="item">
                        <tr>
                            <td class="colimg">
                            	<div class="hinh-cart">
                            		<a href="/MilkTea/chitietmon?idmon=${item.mon.idMon}"><img src="resources/image/${item.mon.hinhAnh}" class="img-thumbnail"></a>
                            	</div>
                            	<form name ="xoaGioHang" action="xoagiohang" method="post">
                            	<div class="xoa-cart">
                            		<button type="submit" class="btn btn-default" name="xoa" value="${sessionScope.dsGioHang.indexOf(item)}"><img src="resources/image/delete.png">&nbsp;<span>Xóa</span></button>
                            	</div>
                            	</form>
                            </td>
                            <td class="coltenmon">
                            	<a href="/MilkTea/chitietmon?idmon=${item.mon.idMon}">${item.mon.tenMon}</a>
                            	<h5>${item.trangThaiMon}, Size ${item.loaiSizeMua}</h5>
                            	<h5><c:forEach items="${item.dsToppingMua}"  var="topping"> +${topping.tenTopping}</c:forEach></h5>
                            	<h5>${item.mucDuong}, ${item.mucDa} </h5>
                            </td>
                            <td class="colgia"><fmt:formatNumber type = "number" maxFractionDigits = "3" value ="${item.thanhTien/item.soLuongMua}"/>₫</td>
                            <td class="colsl">
                            	<form name ="giamSoLuong" action="giamsoluong" method="post">
                            	<c:if test="${item.soLuongMua==1}">
									<button type="submit" class="btn btn-success" name="giam" value="${sessionScope.dsGioHang.indexOf(item)}" disabled>–</button>
								</c:if>
								<c:if test="${item.soLuongMua>1}">
									<button type="submit" class="btn btn-success" name="giam" value="${sessionScope.dsGioHang.indexOf(item)}">–</button>
								</c:if>
								</form>
								<input type="text" class="form-control" id="inputEmail3" value="${item.soLuongMua}" readonly>
								<form name ="tangSoLuong" action="tangsoluong" method="post">
									<button type="submit" class="btn btn-success" name="tang" value="${sessionScope.dsGioHang.indexOf(item)}">+</button>
								</form>
                            </td>
                            <td class="colgia"><fmt:formatNumber type = "number" maxFractionDigits = "3" value ="${item.thanhTien}"/>₫</td>
                        </tr>
                     </c:forEach>
                        <tr>
                            <td class="colimg">&nbsp;</td>
                            <td class="coltenmon">&nbsp;</td>
                            <td class="colgia">&nbsp;</td>
                            <td class="colsl"><span>Tổng cộng:</span></td>
                            <td class="colgia"><span><fmt:formatNumber type = "number" maxFractionDigits = "3" value ="${sessionScope.tongTien}"/> Đ</span></td>
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
    				<input type="text" class="form-control" name="tenNguoiNhan" value="${sessionScope.tenNguoiNhan}" id="exampleFormControlInput1" placeholder="Nhập họ và tên" required>
				</div>
				<div class="col-md-4 form-group"> 
    				<label>Điện thoại</label>
    				<input type="text" class="form-control" name="soDienThoai" value="${sessionScope.soDienThoai}" id="exampleFormControlInput1" placeholder="Nhập số điện thoại" required>
				</div>
				<div class="col-md-8 form-group">
				    <label>Địa chỉ giao hàng (Số nhà, tên đường, phường)</label>
				    <input type="text" class="form-control" name="diaChi" value="${sessionScope.diaChi}" id="exampleFormControlInput1" placeholder="Nhập địa chỉ" required>
				</div>
				<div class="col-md-8 form-group">
				    <label>Ghi chú (nếu có)</label>
				    <input type="text" class="form-control" name="ghiChu" value="${sessionScope.ghiChu}" id="exampleFormControlInput1" style="height:72px;">
				</div>
				<div class="col-md-4 btndat">
					<button type="submit" class="btn btn-danger ">ĐẶT HÀNG&nbsp;&nbsp;&nbsp;&nbsp;<fmt:formatNumber type = "number" maxFractionDigits = "3" value ="${sessionScope.tongTien}"/> Đ</button>	
				</div>
			</form>
		</div>
		</c:if>
	</div>
</div>

<%@ include file="footer.jsp" %>

