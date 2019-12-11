package com.cnjv.controller;

import java.util.List;

import com.cnjv.dao.ChiTietHoaDonDAO;
import com.cnjv.dao.DMMonDAO;
import com.cnjv.dao.HoaDonDAO;
import com.cnjv.dao.MonDAO;
import com.cnjv.dao.SizeDAO;
import com.cnjv.model.ChiTietHoaDon;
import com.cnjv.model.HoaDon;
import com.cnjv.model.TinhTrangHD;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;



@Controller
public class ChiTietHoaDonController {
	ApplicationContext context = new ClassPathXmlApplicationContext("IoC.xml");
	ChiTietHoaDonDAO db = (ChiTietHoaDonDAO) context.getBean("dbchitiethoadon");
	MonDAO mondao = (MonDAO) context.getBean("dbmon");
	SizeDAO sizeDAO = (SizeDAO) context.getBean("dbsize");
	DMMonDAO dmMonDAO = (DMMonDAO) context.getBean("dbdmmon");
	HoaDonDAO HoaDonDAO = (HoaDonDAO) context.getBean("dbhoadon");
	
	@GetMapping("chitiethoadon/{id}")
	public String trangChiTietHD(@PathVariable int id, ModelMap modelMap) {
		
		HoaDon hd = HoaDonDAO.getHoaDonByIDHoaDon(id);
		List<ChiTietHoaDon> listChiTietHoaDon = db.getChiTietHDById(id);
		modelMap.addAttribute("hoaDon", hd);
		modelMap.addAttribute("listChiTietHoaDon", listChiTietHoaDon);
		modelMap.addAttribute("id", id);
		return "ChiTietDonHang";
/*
	@GetMapping("/chitiethoadon")
	public String trangQLMon(ModelMap modelMap) {
		
		List<ChiTietHoaDon> listChiTietHoaDon = db.getListChiTietHoaDon();
		modelMap.addAttribute("listHoaDon", listChiTietHoaDon);
		
		//modelMap.addAttribute("result", 1);
		return "ChiTietDonHang";
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
}