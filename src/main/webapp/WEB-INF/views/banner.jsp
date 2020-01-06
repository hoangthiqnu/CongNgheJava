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
		    <img src="resources/image/banner2.gif" alt="">
		</div>
		<div class="mySlides fade">
		    <img src="resources/image/banner3.gif" alt="">
		</div>
		<div class="mySlides fade">
		    <img src="resources/image/banner4.gif" alt="">
		</div>
	</div>
	<div style="text-align:center">
		<span class="dot" onclick="currentSlide(0)"></span> 
		<span class="dot" onclick="currentSlide(1)"></span> 
		<span class="dot" onclick="currentSlide(2)"></span> 
	</div>
</div>
<script type="text/javascript">
//khai báo biến slideIndex đại diện cho slide hiện tại
var slideIndex;
// KHai bào hàm hiển thị slide
function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
    }
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }

    slides[slideIndex].style.display = "block";  
    dots[slideIndex].className += " active";
    //chuyển đến slide tiếp theo
    slideIndex++;
    //nếu đang ở slide cuối cùng thì chuyển về slide đầu
    if (slideIndex > slides.length - 1) {
      slideIndex = 0
    }    
    //tự động chuyển đổi slide sau 5s
    setTimeout(showSlides, 3000);
}
//mặc định hiển thị slide đầu tiên 
showSlides(slideIndex = 0);


function currentSlide(n) {
  showSlides(slideIndex = n);
}

</script>
