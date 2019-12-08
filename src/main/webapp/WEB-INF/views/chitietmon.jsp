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
				 	<img src="resources/image/${mon.getHinhAnh()}">
				</div>
				<div class="col-md-5 thongtinmon">
				 	<h3>${mon.getTenMon()}</h3>
				 	<c:if test="${!mon.isChiDa()}">
				 		<img src="resources/image/ice.png">
				 		<img src="resources/image/hot.png">
				 		<br>
				 		<span>lạnh</span>
				 		<span>nóng</span>
				 	</c:if>
				 	<c:if test="${mon.isChiDa()}">
				 		<img src="resources/image/ice.png">
				 		<br>
				 		<span>lạnh</span>
				 	</c:if>
				 	<h4><fmt:formatNumber type = "number" maxFractionDigits = "3" value ="${mon.getDonGiaMon()}"/> Đ</h4>
				 	<h5>${mon.getMoTa()}</h5>
				</div>
			</div>
		</div>
		<div class="thanhngang"></div>
		<div class="row">
			<div class="col-md-12">
				<c:if test="${!mon.isChiDa()}">
					<div class="col-md-6">
						<div class="tieude-chitiet">
						 	<img src="resources/image/check.png">
						 	<span>Chọn trạng thái thức uống</span>
						</div>
						<div class="radio">
		  					<input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="1"><span>Lạnh</span><br>
		  					<input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="2"><span>Nóng</span>
		  				</div>
					</div>
				</c:if>
				<c:if test="${dsSize.size()>1}">
					<div class="col-md-6">
						<div class="tieude-chitiet">
						 	<img src="resources/image/check.png">
						 	<span>Chọn size thức uống</span>
						</div>
						<div class="radio">
							<c:forEach items="${dsSize}" var="size">
								<c:if test="${size.getGiaThem() == 0}">
			  						<input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="1"><span>${size.getLoaiSize()}</span><br>
			  					</c:if>
			  					<c:if test="${size.getGiaThem() != 0}">
			  						<input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="1"><span>${size.getLoaiSize()} (+<fmt:formatNumber type = "number" maxFractionDigits = "3" value ="${size.getGiaThem()}"/>₫)</span><br>
			  					</c:if>
			  				</c:forEach>	
		  				</div>
					</div>
				</c:if>	
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
					<c:forEach items="${dsTopping}" var="topping">
			  			<input type="checkbox" name="checkbox" id="checkbox" value="1"><span>${topping.getTenTopping()} (+<fmt:formatNumber type = "number" maxFractionDigits = "3" value ="${topping.getDonGiaTopping()}"/>₫)</span><br>
			  		</c:forEach>
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

