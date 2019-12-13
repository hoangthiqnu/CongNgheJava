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
		<form name ="themvaogio" action="themvaogio?idmon=${mon.getIdMon()}" method="post" modelAttribute="gioHang" onsubmit="return check()">	  
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
						 	<span>Trạng thái thức uống</span>
						</div>
						<div class="radio">
		  					<input type="radio" name="trangThai" id="inlineRadio1" value="Lạnh" checked="checked"><span>Lạnh</span><br>
		  					<input type="radio" name="trangThai" id="inlineRadio1" value="Nóng"><span>Nóng</span>
		  				</div>
					</div>
				</c:if>
				<c:if test="${mon.isChiDa()}">
					<div class="col-md-6">
						<div class="tieude-chitiet">
						 	<img src="resources/image/check.png">
						 	<span>Trạng thái thức uống</span>
						</div>
						<div class="radio">
		  					<input type="radio" name="trangThai" id="inlineRadio1" value="Lạnh" checked="checked"><span>Lạnh</span><br>
		  				</div>
					</div>
				</c:if>
				<div class="col-md-6">
					<div class="tieude-chitiet">
						 <img src="resources/image/check.png">
						 <span>Size thức uống</span>
					</div>
					<div class="radio">
							<c:forEach items="${dsSize}" var="size">
								<c:if test="${size.getGiaThem() == 0}">
			  						<input type="radio" name="loaiSize" id="${size.getLoaiSize()}" value="${size.getLoaiSize()}" checked="checked" onclick="giaSize(${size.getLoaiSize()},${size.getGiaThem()})"><span>${size.getLoaiSize()}</span><br>
			  					</c:if>
			  					<c:if test="${size.getGiaThem() != 0}">
			  						<input type="radio" name="loaiSize" id="${size.getLoaiSize()}" value="${size.getLoaiSize()}" onclick="giaSize(${size.getLoaiSize()},${size.getGiaThem()})"><span>${size.getLoaiSize()} (+<fmt:formatNumber type = "number" maxFractionDigits = "3" value ="${size.getGiaThem()}"/>₫)</span><br>
			  					</c:if>
			  				</c:forEach>	
		  			</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="col-md-5">
					<div class="tieude-chitiet">
					 	<img src="resources/image/check.png">
					 	<span>Thêm Topping (nếu muốn)</span>
					</div>
					<div class="checkbox">
					<input type="checkbox" name="topping[]" id="checkboxKhong" value="0" checked="checked"><span>Không thêm topping</span><br>
					<c:forEach items="${dsTopping}" var="topping">
			  			<input class="checktpoping" type="checkbox" name="topping[]" id="checkbox${topping.getIdTopping()}" value="${topping.getIdTopping()}" onclick="giaTopping(${topping.getIdTopping()},${topping.getDonGiaTopping()} )"><span>${topping.getTenTopping()} (+<fmt:formatNumber type = "number" maxFractionDigits = "3" value ="${topping.getDonGiaTopping()}"/>₫)</span><br>
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
					 	<span>Mức đường</span>
					</div>
					<div class="radio">
	  					<input type="radio" name="mucDuong" id="inlineRadio2" value="100% Đường" checked="checked"><span>100% (Bình thường)</span><br>
	  					<input type="radio" name="mucDuong" id="inlineRadio2" value="70% Đường"><span>70% (Vừa)</span><br>
	  					<input type="radio" name="mucDuong" id="inlineRadio2" value="50% Đường"><span>50% (Ít đường)</span><br>
	  					<input type="radio" name="mucDuong" id="inlineRadio2" value="30% Đường"><span>30% (Rất ít đường)</span><br>
	  					<input type="radio" name="mucDuong" id="inlineRadio2" value="0% Đường"><span>0% (Không đường)</span>
	  				</div>
				</div>
				<div class="col-md-4">
					<div class="tieude-chitiet">
					 	<img src="resources/image/check.png">
					 	<span>Mức đá</span>
					</div>
					<div class="radio">
	  					<input type="radio" name="mucDa" id="inlineRadio2" value="100% Đá" checked="checked"><span>100% (Bình thường)</span><br>
	  					<input type="radio" name="mucDa" id="inlineRadio2" value="50% Đá"><span>50% (Ít đá)</span><br>
	  					<input type="radio" name="mucDa" id="inlineRadio2" value="0% Đá"><span>0% (Không đá)</span>
	  				</div>
				</div>
				<div class="col-md-4">
					<div class="tieude-chitiet">
						 	<img src="resources/image/check.png">
						 	<span>Số lượng</span>
					</div>
					<div class="soluong">
						<button id="sub" type="button" class="btn btn-success" onclick="giamSL()">–</button>
						<input type="text" name ="soLuong" class="form-control" id="soluong" value="1" readonly>
						<button id="add" type="button" class="btn btn-success" onclick="tangSL()">+</button>
					</div>
				</div>	
			</div>
		</div>
		<div class="row">
			<div class="btnthem">
				<button type="submit" id="submit" class="btn btn-danger">THÊM VÀO GIỎ&nbsp;&nbsp;&nbsp;&nbsp;<span id ="giatien">${mon.getDonGiaMon()}</span> Đ</button>		
			</div>
		</div>
	</form>
	</div>
</div>
<script type="text/javascript">
function giamSL(){
	var soluong = document.querySelector('#soluong');
	if (soluong.value == 1){
		soluong.value = 1;
	}
	else
		{
			let number = new Number(soluong.value);
			soluong.value = --number;
		}
}

function tangSL(){
	var soluong = document.querySelector('#soluong');
		let number = new Number(soluong.value);
		soluong.value = ++number;
}

function giaSize(id, tien){
	let giatien = document.querySelector("#giatien");
	let tongtien = new Number(giatien.innerHTML);
	if(id.checked){
		tongtien += tien;
	}else{
		tongtien -= tien;
	}
	giatien.innerHTML = tongtien;
}
let kochon = document.querySelector("#checkboxKhong");
	kochon.addEventListener("click", ()=>{
		if(kochon.checked == true){
			let checktpoping = document.querySelectorAll(".checktpoping");
			for(let i= 0; i <checktpoping.length ; i++){
				checktpoping[i].checked = false;
			}
		}
	})
	
 function giaTopping(id, tien){
	 let giatien = document.querySelector("#giatien");
	 kochon.checked = false;
	 let chkTopping = document.querySelector("#checkbox"+id);
	 let tongtien = new Number(giatien.innerHTML);
	 if(chkTopping.checked){
		tongtien += tien;
	 }else{
		tongtien -= tien;
	 }
	 giatien.innerHTML = tongtien;
 }
	
	function check(){
		let checktpoping = document.querySelectorAll(".checktpoping");
		for(let i= 0; i <checktpoping.length ; i++){
			if (checktpoping[i].checked == true)
			{
				kochon.checked = false;
				return true;
			}
		}
		kochon.checked=true;
		return true;
	}
 </script>
 


<%@ include file="footer.jsp" %>

