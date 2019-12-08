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
						<li><a href="/MilkTea/thucdon?iddm=tatcamon&page=1">TẤT CẢ</a></li>
						<c:set var="dsDMMon" value="${DanhSachDanhMuc}"></c:set>	
						<c:forEach items="${dsDMMon}" var="danhmuc">
							<li><a href="/MilkTea/thucdon?iddm=${danhmuc.getIdDMMon()}&page=1">${danhmuc.getTenDMMon()}</a></li> 
						</c:forEach>
					</ul>	
				</div>
			</div>	
			<div class="col-md-9 title-danhmuc">
				<span>${TenDM}</span>
			</div>
			<ul class="col-md-9 products-menu">
			<c:set var="dsMon" value="${DanhSachMon}"></c:set>	
				<c:forEach items="${dsMon}" var="mon">
					<li class="col-md-3 each-pro-menu"> 
						<div class="info-pro-menu" >
							<img src="resources/image/${mon.getHinhAnh()}" alt="">
							<h3>${mon.getTenMon()}</h3>
							<h4><fmt:formatNumber type = "number" maxFractionDigits = "3" value ="${mon.getDonGiaMon()}"/> Đ</h4>
						</div>
						<div class="btn-pro-menu">
							<a href="/MilkTea/chitietmon?idmon=${mon.getIdMon()}" class="btn-pro-css"><span>CHỌN</span></a>
						</div>
					</li>		
				</c:forEach>
			</ul>
			<div class="col-md-3"></div>
			<c:if test ="${SoTrang != 1 }">
			<div class="col-md-9 pagination-0">
				<nav aria-label="Page navigation example">
				  <ul class="pagination">
				    <li class="page-item">
				    <c:choose>
    					<c:when test="${TrangHienTai <= 1}">
      						<a class="page-link" href="/MilkTea/thucdon?iddm=${idDMMon}&page=1" aria-label="Previous">
				        		<span aria-hidden="true">&laquo;</span>
				        		<span class="sr-only">Previous</span>
				      		</a>
    					</c:when>    
    					<c:otherwise>
    						<a class="page-link" href="/MilkTea/thucdon?iddm=${idDMMon}&page=${TrangHienTai-1}" aria-label="Previous">
				        		<span aria-hidden="true">&laquo;</span>
				        		<span class="sr-only">Previous</span>
				      		</a>
    					</c:otherwise>
					</c:choose>
				    </li>
				    <c:forEach var="i" begin = "1" end = "${SoTrang}" step="1">
				    	<c:if test ="${TrangHienTai==i}">
				    	<li class="page-item"><a class="page-link" href="/MilkTea/thucdon?iddm=${idDMMon}&page=${i}" ><span class="tranghientai">${i}</span></a></li>
				    	</c:if>
				    	<c:if test ="${TrangHienTai!=i}">
				    	<li class="page-item"><a class="page-link" href="/MilkTea/thucdon?iddm=${idDMMon}&page=${i}" >${i}</a></li>
				    	</c:if>
				    </c:forEach>
				    <li class="page-item">
				    <c:choose>
	    				<c:when test="${TrangHienTai >= SoTrang}">
	      					<a class="page-link" href="/MilkTea/thucdon?iddm=${idDMMon}&page=${SoTrang}" aria-label="Next">
					        	<span aria-hidden="true">&raquo;</span>
					        	<span class="sr-only">Next</span>
					      	</a>
	    				</c:when>    
	    				<c:otherwise>
	    					<a class="page-link" href="/MilkTea/thucdon?iddm=${idDMMon}&page=${TrangHienTai+1}" aria-label="Next">
					        	<span aria-hidden="true">&raquo;</span>
					        	<span class="sr-only">Next</span>
					      	</a>
	    				</c:otherwise>
					</c:choose>
				    </li>
				  </ul>
				</nav>
			</div>
			</c:if>
		</div>
</div>
<%@ include file="footer.jsp" %>