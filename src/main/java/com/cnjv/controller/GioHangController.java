package com.cnjv.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class GioHangController {
	@GetMapping("/giohang")
	public String hienThiGioHang() {
		return "giohang";
	}


}
