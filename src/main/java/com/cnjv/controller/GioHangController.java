package com.cnjv.controller;


import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cnjv.model.GioHang;
import com.cnjv.service.GioHangService;

@Controller
public class GioHangController {
	GioHangService gioHangService = new GioHangService();
	
	@RequestMapping("/giohang")
	public String hienThiGioHang(HttpSession session) {
		return "giohang";
	}
	@RequestMapping("/xoagiohang")
	public String xoaGioHang(HttpSession session, @RequestParam("xoa") int idGioHang) {
		ArrayList<GioHang> dsGioHang = (ArrayList<GioHang>) session.getAttribute("dsGioHang");
		dsGioHang.remove(idGioHang);
		int tongTien = gioHangService.tongTienDSGioHang(dsGioHang);
        int tongMon = gioHangService.tongMonTrongDSGioHang(dsGioHang);
        session.setAttribute("dsGioHang", dsGioHang);
        session.setAttribute("tongTien", tongTien);
        session.setAttribute("tongMon",tongMon);
		return "giohang";
	}
	@RequestMapping("/giamsoluong")
	public String giamSoLuong(HttpSession session, @RequestParam("giam") int idGioHang) {
		ArrayList<GioHang> dsGioHang = (ArrayList<GioHang>) session.getAttribute("dsGioHang");
		GioHang item = dsGioHang.get(idGioHang);
		item.setThanhTien(item.getThanhTien()-(item.getThanhTien()/item.getSoLuongMua()));
        item.setSoLuongMua(item.getSoLuongMua() - 1);
        dsGioHang.set(idGioHang,item);
		int tongTien = gioHangService.tongTienDSGioHang(dsGioHang);
        int tongMon = gioHangService.tongMonTrongDSGioHang(dsGioHang);
        session.setAttribute("dsGioHang", dsGioHang);
        session.setAttribute("tongTien", tongTien);
        session.setAttribute("tongMon",tongMon);
		return "giohang";
	}
	@RequestMapping("/tangsoluong")
	public String tangSoLuong(HttpSession session, @RequestParam("tang") int idGioHang) {
		ArrayList<GioHang> dsGioHang = (ArrayList<GioHang>) session.getAttribute("dsGioHang");
		GioHang item = dsGioHang.get(idGioHang);
		item.setThanhTien(item.getThanhTien()+(item.getThanhTien()/item.getSoLuongMua()));
        item.setSoLuongMua(item.getSoLuongMua() + 1);
        dsGioHang.set(idGioHang,item);
		int tongTien = gioHangService.tongTienDSGioHang(dsGioHang);
        int tongMon = gioHangService.tongMonTrongDSGioHang(dsGioHang);
        session.setAttribute("dsGioHang", dsGioHang);
        session.setAttribute("tongTien", tongTien);
        session.setAttribute("tongMon",tongMon);
		return "giohang";
	}
	
	


}
