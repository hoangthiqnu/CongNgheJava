<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div class="footer">
	<div class="container">
	   <div class="footer_top">
		<div class="col-md-4 box_3">
			<h3>Thông tin liên hệ</h3>
			<address class="address">
              <dl>
                 <dt></dt>
                 <dd>Địa chỉ: </dd>
                 <dd>Điện thoại:</dd>
                 <dd>E-mail:</dd>
              </dl>
           </address>
           <ul class="footer_social">
			  <li><a href=""> <i class="fb"> </i> </a></li>
			  <li><a href=""><i class="tw"> </i> </a></li>
			  <li><a href=""><i class="google"> </i> </a></li>
			  <li><a href=""><i class="instagram"> </i> </a></li>
		   </ul>
		</div>
		<div class="col-md-4 box_3">
			<h3>Tin tức</h3>
			<h4><a href="#">Thông tin cửa hàng </a></h4>
			<p>Những thông tin về trà sữa</p>
			<h4><a href="#">Thông tin khuyến mãi</a></h4>
			<p>Những thông tin khuyến mãi sản phẩm</p>
		</div>
		<div class="col-md-4 box_3">
			<h3>Hỗ trợ khách hàng</h3>
			<ul class="list_1">
				<li><a href="#">Hướng dẫn đặt món</a></li>
				<li><a href="#">Cách thức giao hàng</a></li>
				<li><a href="#">Cách thức thanh toán</a></li>
				<li><a href="#">Quy định, chính sách</a></li>
			</ul>
			<div class="clearfix"> </div>
		</div>
		<div class="clearfix"> </div>
		</div>
		<div class="footer_bottom">
			<div class="copy">
                <p>Copyright © 2015 Buy_shop. All Rights Reserved.<a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
	        </div>
	    </div>
	</div>
</div>

</body>
<script>
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
</html>