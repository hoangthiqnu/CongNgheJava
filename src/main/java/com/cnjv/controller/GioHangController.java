package com.cnjv.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class GioHangController {
	@GetMapping("/giohang")
	public String hienThiGioHang(HttpSession session) {
		return "giohang";
	}


}
