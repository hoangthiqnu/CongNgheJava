package com.cnjv.controller;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cnjv.dao.MonDAO;
import com.cnjv.model.Mon;

@Controller
public class TimKiemController {
	
	ApplicationContext context = new ClassPathXmlApplicationContext("IoC.xml");
	MonDAO mondao = (MonDAO) context.getBean("dbmon");
	
	@PostMapping("/timkiem")
	public String hienThiTimKiem(@RequestParam("tim") String key,ModelMap modelMap) {
		List<Mon> dsMonTimKiem = mondao.timKiemMon(key);
		modelMap.addAttribute("DanhSachMonTimKiem", dsMonTimKiem);
		return "timkiem";
	}

}
