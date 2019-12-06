package com.cnjv.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cnjv.dao.MonDAO;
import com.cnjv.model.Mon;

@Controller
public class TrangChuController {
	
	ApplicationContext context = new ClassPathXmlApplicationContext("IoC.xml");
	MonDAO mondao = (MonDAO) context.getBean("dbmon");
	@RequestMapping("/")
	public String hienThiDanhSachMonMoi(HttpSession session, ModelMap modelMap) {
		List<Mon> dsMonMoi = mondao.layDanhSachMonMoi();
		modelMap.addAttribute("DanhSachMonMoi", dsMonMoi);
		List<Mon> dsMonBanChay = mondao.layDanhSachMonBanChay();
		modelMap.addAttribute("DanhSachMonBanChay", dsMonBanChay);
		return "trangchu";
	}
	

}
