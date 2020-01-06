package com.cnjv.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.cnjv.dao.ChiTietHoaDonDAO;
import com.cnjv.dao.HoaDonDAO;
import com.cnjv.dao.MonDAO;
import com.cnjv.model.ChiTietHoaDon;
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
public class ChiTietHoaDonController {
	private String referString;
	ApplicationContext context = new ClassPathXmlApplicationContext("IoC.xml");
	ChiTietHoaDonDAO db = (ChiTietHoaDonDAO) context.getBean("dbchitiethoadon");
	MonDAO monDAO = (MonDAO) context.getBean("dbmon");
	HoaDonDAO HoaDonDAO = (HoaDonDAO) context.getBean("dbhoadon");
	
	@GetMapping("chitiethoadon/{id}")
	public String trangChiTietHD(@PathVariable int id, ModelMap modelMap) {

		List<ChiTietHoaDon> listChiTietHoaDon = db.getChiTietHDById(id);

		HoaDon hoaDon = HoaDonDAO.getHoaDonByIDHoaDon(id);
		int tongTien= db.TongTienTrenMotHoaDon(id); // Tinh tien 1 hoa don
		modelMap.addAttribute("monDAO", monDAO);
		modelMap.addAttribute("ChiTietHoaDon", listChiTietHoaDon);
		modelMap.addAttribute("hoaDon", hoaDon);
		modelMap.addAttribute("tongTien", tongTien);
		modelMap.addAttribute("rsCapNhat", 0);
		return "ChiTietDonHang";
	}
	
	//Xac Nhan Don Hang
	@GetMapping("/chitiethoadon/xacnhan")
	public String xacNhanHoaDon(@RequestParam("id") int idHoaDon, ModelMap modelMap, HttpServletRequest request) {
		HoaDonDAO.xacNhanDonHang(idHoaDon);
		
		//modelMap.addAttribute("result", result);
		referString = request.getHeader("Referer");
		return "redirect:"+referString;
	}
	
	//Thanh Toan Don Hang
	@GetMapping("/chitiethoadon/thanhtoan")
	public String thanhToanHoaDon(@RequestParam("id") int idHoaDon, ModelMap modelMap, HttpServletRequest request) {
		HttpSession session = request.getSession();
		int result = HoaDonDAO.thanhToanDonHang(idHoaDon);
		
		session.setAttribute("resThanhToan", result);
		referString = request.getHeader("Referer");
		return "redirect:"+referString;
	}
		
	//Huy Don Hang
	@GetMapping("/chitiethoadon/huy")
	public String huyHoaDon(@RequestParam("id") int idHoaDon, ModelMap modelMap, HttpServletRequest request) {
		HoaDonDAO.huyDonHang(idHoaDon);
		
		//modelMap.addAttribute("result", result);
		referString = request.getHeader("Referer");
		return "redirect:"+referString;
	}
		
	//Cap Nhat Thong tin Khach Hang
	@PostMapping("/chitiethoadon/{id}")
	public String capnhatHoaDon(@PathVariable int id, String tenKH, String sdt, String diaChi , String ghiChu, ModelMap modelMap, HttpServletRequest request) {
		
		int result = HoaDonDAO.capNhatDonHang(id, tenKH, sdt, diaChi, ghiChu);
		
		modelMap.addAttribute("rsCapNhat", result);
		referString = request.getHeader("Referer");
		return "redirect:"+referString;
	}
	
	
	
}