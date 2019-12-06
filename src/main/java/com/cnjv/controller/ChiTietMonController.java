package com.cnjv.controller;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class ChiTietMonController {
	@GetMapping("/chitietmon")
	public String hienThiChiTietMon() {
		return "chitietmon";
	}

}
