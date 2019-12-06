package com.cnjv.controller;


import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class ThongTinDonHangController {
	@PostMapping("/dathang")
	public String hienThiThongTinDonHang(HttpSession session) {
		
		return "thongtindonhang";
	}	

}
