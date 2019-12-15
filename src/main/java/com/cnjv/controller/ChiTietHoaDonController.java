package com.cnjv.controller;

import java.util.List;

import javax.print.attribute.HashDocAttributeSet;

import com.cnjv.dao.ChiTietHoaDonDAO;
import com.cnjv.dao.DMMonDAO;
import com.cnjv.dao.HoaDonDAO;
import com.cnjv.dao.MonDAO;
import com.cnjv.dao.SizeDAO;
import com.cnjv.dao.XuLyHoaDonDAO;
import com.cnjv.model.ChiTietHoaDon;
import com.cnjv.model.HoaDon;
import com.cnjv.model.Mon;
import com.cnjv.model.TinhTrangHD;
import com.cnjv.model.XuLyHoaDon;

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
	SizeDAO sizeDAO = (SizeDAO) context.getBean("dbsize");
	HoaDonDAO HoaDonDAO = (HoaDonDAO) context.getBean("dbhoadon");
	XuLyHoaDonDAO xlhdDAO = (XuLyHoaDonDAO) context.getBean("dbxulyhoadon");
	MonDAO monDao =  (MonDAO)  context.getBean("dbmon");
	
	@GetMapping("chitiethoadon/{id}")
	public String trangChiTietHD(@PathVariable int id, ModelMap modelMap) {

		List<XuLyHoaDon> listChiTietHoaDon = xlhdDAO.layHoaDonTheoIdHoaDon(id);

		HoaDon hoaDon = HoaDonDAO.getHoaDonByIDHoaDon(id);
		/*List<Mon> mons = monDao.getMonByIdHoaDon(id); // Danh sach mon 1 hoa don
		cthd.setListMon(mons);
		List<ChiTietHoaDon> listcthd = db.getChiTietHDById(id); // Chi tiet hoa don
		cthd.setListChiTietHD(listcthd);*/
		//int tongTien= xlhdDAO.TongTienTrenMotHoaDon(id); // Tinh tien 1 hoa don
		
		modelMap.addAttribute("ChiTietHoaDon", listChiTietHoaDon);
		modelMap.addAttribute("hoaDon", hoaDon);
	//	modelMap.addAttribute("tongTien", tongTien);
		return "ChiTietDonHang";
	}
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