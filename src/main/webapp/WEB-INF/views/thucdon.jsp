<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file="header.jsp" %>
<div class="container-fuild">
	<div class="banner">
		<div class="banner_desc">
		</div>
	</div>
</div>
<div class="container">
		<div class="col-md-12 ">
			<div class="col-md-3">
				<div class="danh_muc">
					<ul>
						<li><a href="/MilkTea/thucdon?iddm=tatcamon">TẤT CẢ</a></li>
						<c:set var="dsDMMon" value="${DanhSachDanhMuc}"></c:set>	
						<c:forEach items="${dsDMMon}" var="danhmuc">
							<li><a href="/MilkTea/thucdon?iddm=${danhmuc.getIdDMMon()}">${danhmuc.getTenDMMon()}</a></li> 
						</c:forEach>
					</ul>	
				</div>
			</div>
			<c:set var="tieude" value="KẾT QUẢ TÌM"></c:set>	
			<c:if test ="${TenDM != null}">
				<c:set var="tieude" value="${TenDM}"></c:set>
			</c:if>
			<div class="col-md-9 title-danhmuc">
				<span>${tieude}</span>
			</div>
			<ul class="col-md-9 products-menu">
				<c:if test ="${DanhSachMon != null}">
					<c:set var="dsMon" value="${DanhSachMon}"></c:set>	
				</c:if>
				<c:if test ="${DanhSachMonTimKiem != null}">
					<c:set var="dsMon" value="${DanhSachMonTimKiem}"></c:set>	
				</c:if>
				<c:forEach items="${dsMon}" var="mon">
					<li class="col-md-3 each-pro-menu"> 
						<div class="info-pro-menu" >
							<img src="resources/image/${mon.getHinhAnh()}" alt="">
							<h3>${mon.getTenMon()}</h3>
							<h4><fmt:formatNumber type = "number" maxFractionDigits = "3" value ="${mon.getDonGiaMon()}"/> Đ</h4>
						</div>
						<div class="btn-pro-menu">
							<a href="/MilkTea/chitietmon" class="btn-pro-css"><span>CHỌN</span></a>
						</div>
					</li>		
				</c:forEach>
				<c:if test ="${DanhSachMonTimKiem.size()==0}">
			 		<span class="title-tim">Không tìm thấy kết quả!</span>
				</c:if>
			</ul>
			<div class="col-md-3"></div>
			<div class="col-md-9 pagination-0">
				<nav aria-label="Page navigation example">
				  <ul class="pagination">
				    <li class="page-item">
				      <a class="page-link" href="#" aria-label="Previous">
				        <span aria-hidden="true">&laquo;</span>
				        <span class="sr-only">Previous</span>
				      </a>
				    </li>
				    <li class="page-item"><a class="page-link" href="#" >1</a></li>
				    <li class="page-item"><a class="page-link" href="#">2</a></li>
				    <li class="page-item"><a class="page-link" href="#">3</a></li>
				    <li class="page-item">
				      <a class="page-link" href="#" aria-label="Next">
				        <span aria-hidden="true">&raquo;</span>
				        <span class="sr-only">Next</span>
				      </a>
				    </li>
				  </ul>
				</nav>
			</div>
		</div>
</div>
<%@ include file="footer.jsp" %>