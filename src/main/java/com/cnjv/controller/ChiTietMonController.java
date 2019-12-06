package com.cnjv.controller;


import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class ChiTietMonController {
	@GetMapping("/chitietmon")
	public String hienThiChiTietMon(HttpSession session) {
		return "chitietmon";
	}

}
