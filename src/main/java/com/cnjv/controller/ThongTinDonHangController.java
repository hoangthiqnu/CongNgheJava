package com.cnjv.controller;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class ThongTinDonHangController {
	@PostMapping("/dathang")
	public String hienThiThongTinDonHang() {
		
		return "thongtindonhang";
	}	

}
