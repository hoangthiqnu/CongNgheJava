<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file="header.jsp" %>
<div class="duongvien"></div>
<div class="container">
	<div class="content-index">
		<div class="chonthem">
			<a href="/MilkTea/thucdon?iddm=tatcamon&page=1"><button type="button" class="btn btn-default"> << Chọn thức uống khác</button></a>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="col-md-7 hinhmon">
				 	<img src="resources/image/traden.png">
				</div>
				<div class="col-md-5 thongtinmon">
				 	<h3>Strawberry Earl Grey Latte</h3>
				 	<img src="resources/image/ice.png">
				 	<img src="resources/image/hot.png">
				 	<br>
				 	<span>lạnh</span>
				 	<span>nóng</span>
				 	<h4>30.000 Đ</h4>
				 	<h5>Okinawa Latte dành cho những thực khách vừa muốn thưởng thức trà sữa, vừa muốn giữ dáng, đẹp da. Sữa tươi và trà đen được kết hợp với vị thơm của đường mật mang lại vị giác mới lạ, là lựa chọn cho khách hàng yêu thích sự tươi mát, nhẹ nhàng lại không quá đậm đà của trà.</h5>
				</div>
			</div>
		</div>
		<div class="thanhngang"></div>
		<div class="row">
			<div class="col-md-12">
				<div class="col-md-6">
					<div class="tieude-chitiet">
					 	<img src="resources/image/check.png">
					 	<span>Chọn loại thức uống</span>
					</div>
					<div class="radio">
	  					<input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="1"><span>Lạnh</span><br>
	  					<input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="2"><span>Nóng</span>
	  				</div>
				</div>
				<div class="col-md-6">
					<div class="tieude-chitiet">
					 	<img src="resources/image/check.png">
					 	<span>Chọn size thức uống</span>
					</div>
					<div class="radio">
	  					<input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="1"><span>Vừa</span><br>
	  					<input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="2"><span>Lớn (+6.000₫)</span>
	  				</div>
				</div>	
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="col-md-5">
					<div class="tieude-chitiet">
					 	<img src="resources/image/check.png">
					 	<span>Chọn thêm Topping (nếu muốn)</span>
					</div>
					<div class="checkbox">
			  			<input type="checkbox" name="checkbox" id="checkbox" value="1"><span>Kem sữa (+16.000₫)</span><br>
			  			<input type="checkbox" name="checkbox" id="checkbox" value="2"><span>Pudding (+10.000₫)</span><br>
			  			<input type="checkbox" name="checkbox" id="checkbox" value="2"><span>Thạch dừa (+12.000₫)</span><br>
			  			<input type="checkbox" name="checkbox" id="checkbox" value="2"><span>Trân châu đen (+6.000₫)</span><br>
			  			<input type="checkbox" name="checkbox" id="checkbox" value="2"><span>Trân châu trắng (+6.000₫)</span><br>
			  			<input type="checkbox" name="checkbox" id="checkbox" value="2"><span>Trân châu đen (+6.000₫)</span><br>
			  			<input type="checkbox" name="checkbox" id="checkbox" value="2"><span>Trân châu đen (+6.000₫)</span><br>
			  			<input type="checkbox" name="checkbox" id="checkbox" value="2"><span>Trân châu đen (+6.000₫)</span>
	  				</div>
				</div>
				<div class="col-md-7 step-ordertopping">
					 <img src="resources/image/chontopping.jpg">	
				</div>	
			</div>
		</div>		
		<div class="row">
			<div class="col-md-12">
				<div class="col-md-4">
					<div class="tieude-chitiet">
					 	<img src="resources/image/check.png">
					 	<span>Chọn mức đường</span>
					</div>
					<div class="radio">
	  					<input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="2"><span>100% (Bình thường)</span><br>
	  					<input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="2"><span>70% (Vừa)</span><br>
	  					<input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="2"><span>50% (Ít đường)</span><br>
	  					<input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="2"><span>30% (Rất ít đường)</span><br>
	  					<input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="1"><span>0% (Không đường)</span>
	  				</div>
				</div>
				<div class="col-md-4">
					<div class="tieude-chitiet">
					 	<img src="resources/image/check.png">
					 	<span>Chọn mức đá</span>
					</div>
					<div class="radio">
	  					<input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="2"><span>100% (Bình thường)</span><br>
	  					<input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="2"><span>50% (Ít đá)</span><br>
	  					<input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="1"><span>0% (Không đá)</span>
	  				</div>
				</div>
				<div class="col-md-4">
					<div class="tieude-chitiet">
						 	<img src="resources/image/check.png">
						 	<span>Chọn số lượng</span>
					</div>
					<div class="soluong">
						<button type="button" class="btn btn-success">–</button>
						<input type="text" class="form-control" id="inputEmail3" value="1">
						<button type="button" class="btn btn-success">+</button>
					</div>
				</div>	
			</div>
		</div>
		<div class="row">
			<div class="btnthem">
				<button type="submit" class="btn btn-danger">THÊM VÀO GIỎ&nbsp;&nbsp;&nbsp;&nbsp;159.000₫</button>		
			</div>
		</div>
	</div>
</div>

<%@ include file="footer.jsp" %>

