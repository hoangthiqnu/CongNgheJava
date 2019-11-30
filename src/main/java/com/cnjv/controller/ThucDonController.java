package com.cnjv.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cnjv.dao.DMMonDAO;
import com.cnjv.dao.MonDAO;
import com.cnjv.model.DMMon;
import com.cnjv.model.Mon;

@Controller
public class ThucDonController {
	
	ApplicationContext context = new ClassPathXmlApplicationContext("IoC.xml");
	DMMonDAO dmdao = (DMMonDAO) context.getBean("dbdmmon");
	MonDAO mondao = (MonDAO) context.getBean("dbmon");
	
	
	@GetMapping("/thucdon")
	public String layDanhSachSanPham(HttpSession session, @RequestParam("iddm") String id,ModelMap modelMap) {
		List<Mon> dsMon;
		List<DMMon> dsDMMon = dmdao.layDanhSachDMMon();
		modelMap.addAttribute("DanhSachDanhMuc", dsDMMon);
		String tenDM;
		if(id.equals("tatcamon"))
		{
			dsMon = mondao.layDanhSachMon();
			tenDM = "TẤT CẢ";
		
		}
		else
			{
				dsMon = mondao.layDanhSachMon(id);
				tenDM = dmdao.layTenDanhMuc(id);
			}
		modelMap.addAttribute("TenDM", tenDM);
		modelMap.addAttribute("DanhSachMon", dsMon);
		return "thucdon";
	}
	@PostMapping("/timkiem")
	public String hienThiTimKiem(HttpSession session, @RequestParam("tim") String key,ModelMap modelMap) {
		List<DMMon> dsDMMon = dmdao.layDanhSachDMMon();
		modelMap.addAttribute("DanhSachDanhMuc", dsDMMon);
		List<Mon> dsMonTimKiem = mondao.timKiemMon(key);
		modelMap.addAttribute("DanhSachMonTimKiem", dsMonTimKiem);
		return "thucdon";
	}
	

}
