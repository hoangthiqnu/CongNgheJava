<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
	.slideshow-container {
	  position: relative;
	  margin-bottom:5px;
	}
	 /* Ẩn các slider */
	.mySlides {
	    display: none;
	}
	.mySlides img{
	width:100%;
	}
	
	/* định dạng các chấm chuyển đổi các slide */
	.dot {
	  cursor:pointer;
	  height: 13px;
	  width: 13px;
	  margin: 0 2px;
	  background-color: #bbb;
	  border-radius: 50%;
	  display: inline-block;
	  transition: background-color 0.6s ease;
	}
	/* khi được hover, active đổi màu nền */
	.active, .dot:hover {
	  background-color: #717171;
	}
	 
	/* Thêm hiệu ứng khi chuyển đổi các slide */
	.fade {
	  -webkit-animation-name: fade;
	  -webkit-animation-duration: 3s;
	  animation-name: fade;
	  animation-duration: 3s;
	}
	 
	@-webkit-keyframes fade {
	  from {opacity: .4} 
	  to {opacity: 1}
	}
	 
	@keyframes fade {
	  from {opacity: .4} 
	  to {opacity: 1}
	}
</style>
<div class="container-fuild">
	<div class="slideshow-container">
		<div class="mySlides fade">
		    <img src="<c:url value="/resources/image/banner2.gif" />" alt="">
		</div>
		<div class="mySlides fade">
		    <img src="<c:url value="/resources/image/banner3.gif" />" alt="">
		</div>
		<div class="mySlides fade">
		    <img src="<c:url value="/resources/image/banner4.gif" />" alt="">
		</div>
	</div>
	<div style="text-align:center">
		<span class="dot" onclick="currentSlide(0)"></span> 
		<span class="dot" onclick="currentSlide(1)"></span> 
		<span class="dot" onclick="currentSlide(2)"></span> 
	</div>
</div>