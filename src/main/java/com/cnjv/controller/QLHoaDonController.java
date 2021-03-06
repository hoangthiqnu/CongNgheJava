package com.cnjv.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.cnjv.dao.ChiTietHoaDonDAO;
import com.cnjv.dao.HoaDonDAO;
import com.cnjv.dao.MonDAO;
import com.cnjv.dao.TinhTrangHDDAO;
import com.cnjv.model.HoaDon;
import com.cnjv.model.TaiKhoan;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;



@Controller
public class QLHoaDonController {
	private String referString;
	HttpSession session;
	ApplicationContext context = new ClassPathXmlApplicationContext("IoC.xml");
	HoaDonDAO db = (HoaDonDAO) context.getBean("dbhoadon");
	TinhTrangHDDAO tinhTrangHDDAO = (TinhTrangHDDAO) context.getBean("dbtinhtranghd");
	ChiTietHoaDonDAO chitiethdDAO = (ChiTietHoaDonDAO) context.getBean("dbchitiethoadon");
	
	@GetMapping("/qldonhang")
	public String hienThiHoaDonbyIDTinhTrang(@RequestParam("tinhtrang") int id, ModelMap modelMap,
			HttpServletRequest request) throws ServletException, IOException{
		
		session = request.getSession();
		TaiKhoan tk = new TaiKhoan();
		tk = (TaiKhoan) session.getAttribute("TaiKhoan");
		
		if(tk != null) {
			List<HoaDon> listhd = db.getListHoaDonByIDTinhTrang(id);
			for(HoaDon hDon : listhd) {
				int tongTien = chitiethdDAO.TongTienTrenMotHoaDon(hDon.getIdHoaDon()); // Tinh tien 1 hoa don
				hDon.setTongTien(tongTien);
			}
			
			modelMap.addAttribute("listHoaDon", listhd);
			modelMap.addAttribute("ttDAO", tinhTrangHDDAO);
			return "QLDonHang";
		}else {
			return "LoginAdmin";
		}
	}
	 
	//Xac Nhan Don Hang
	@GetMapping("/qldonhang/xacnhan")
	public String xacNhanHoaDon(@RequestParam("id") int idHoaDon, HttpServletRequest request) {
		session = request.getSession();
		int result = db.xacNhanDonHang(idHoaDon);
		session.setAttribute("rsXacNhan", result);
		referString = request.getHeader("Referer");
		return "redirect:"+referString;
	}
	
	//Thanh Toan Don Hang
	@GetMapping("/qldonhang/thanhtoan")
	public String thanhToanHoaDon(@RequestParam("id") int idHoaDon, ModelMap modelMap, HttpServletRequest request) {
		session = request.getSession();
		int rs = db.thanhToanDonHang(idHoaDon);

		session.setAttribute("rsThanhToan", rs);
		referString = request.getHeader("Referer");
		return "redirect:"+referString;
	}
	
	//Huy Don Hang
	@GetMapping("/qldonhang/huy")
	public String huyHoaDon(@RequestParam("id") int idHoaDon, ModelMap modelMap, HttpServletRequest request) {
		session = request.getSession();
		int rs = db.huyDonHang(idHoaDon);
		
		session.setAttribute("rsHuy", rs);
		referString = request.getHeader("Referer");
		return "redirect:"+referString;
	}
}