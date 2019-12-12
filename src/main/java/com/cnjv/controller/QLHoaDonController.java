package com.cnjv.controller;

import java.util.List;
import com.cnjv.dao.HoaDonDAO;
import com.cnjv.model.HoaDon;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;



@Controller
public class QLHoaDonController {
	ApplicationContext context = new ClassPathXmlApplicationContext("IoC.xml");
	HoaDonDAO db = (HoaDonDAO) context.getBean("dbhoadon");

	@GetMapping("/qldonhang")
	public String hienThiHoaDonbyIDTinhTrang(@RequestParam("tinhtrang") int id, ModelMap modelMap) {
		
		List<HoaDon> listhd = db.getListHoaDonByIDTinhTrang(id);
		modelMap.addAttribute("idTinhTrang", id);
		modelMap.addAttribute("listHoaDon", listhd);
		return "QLDonHang";
	}
	
	/*@PostMapping("/qldonhang")
	public String xemTinhTrang(@RequestParam String maDanhMuc, String tenDanhMuc, ModelMap modelMap) {
	
		DanhMuc dm = new DanhMuc();
		dm.setMaDanhMuc(maDanhMuc);
		dm.setTenDanhMuc(tenDanhMuc);
		/*String tendm="";
		tendm = db.layTenDanhMuc(maDanhMuc);
		if(tendm.isEmpty()) {
			db.themDanhMuc(dm);
		}else {
			modelMap.addAttribute("result", 0);
		}*//*
		boolean kq = db.kiemTraMaDanhMuc(maDanhMuc);
		if (kq) {
			db.themDanhMuc(dm);
			modelMap.addAttribute("result", 1); // attribute cho alert
		}
		else {
			modelMap.addAttribute("result", 0);
		}
		//db.themDanhMuc(dm);
		List<DanhMuc> listDanhMuc = db.getListDanhMuc();
		modelMap.addAttribute("listDanhMuc", listDanhMuc);
		return "QLDanhMuc";
	}*/
	
}