package com.cnjv.controller;



import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cnjv.dao.ChiTietHoaDonDAO;
import com.cnjv.dao.HoaDonDAO;
import com.cnjv.model.ChiTietHoaDon;
import com.cnjv.model.GioHang;
import com.cnjv.model.HoaDon;

@Controller
public class ThongTinDonHangController {
	
	ApplicationContext context = new ClassPathXmlApplicationContext("IoC.xml");
	HoaDonDAO hoadondao = (HoaDonDAO) context.getBean("dbhoadon");
	ChiTietHoaDonDAO chitietdao = (ChiTietHoaDonDAO) context.getBean("dbchitiethoadon");

	@PostMapping("/dathang")
	public String hienThiThongTinDonHang(HttpSession session, @RequestParam("tenNguoiNhan") String tenNguoiNhan,@RequestParam("soDienThoai") String soDienThoai, @RequestParam("diaChi") String diaChi, @RequestParam("ghiChu") String ghiChu) {
		session.setAttribute("tenNguoiNhan", tenNguoiNhan);
		session.setAttribute("soDienThoai", soDienThoai);
		session.setAttribute("diaChi", diaChi);
		session.setAttribute("ghiChu", ghiChu);
		return "thongtindonhang"; 
	}
	@PostMapping("/xacnhan")
	public String xacNhanMuaHang(HttpSession session, ModelMap modelMap) {
		ArrayList<GioHang> dsGioHang = (ArrayList<GioHang>) session.getAttribute("dsGioHang");
		long millis=System.currentTimeMillis();  
		Date date=new Date(millis);
		String tenKhachHang = (String) session.getAttribute("tenNguoiNhan");
		String soDienThoai = (String)session.getAttribute("soDienThoai");
		String diaChi = (String)session.getAttribute("diaChi");
		String ghiChu = (String)session.getAttribute("ghiChu");
		HoaDon hoaDon = new HoaDon();
		hoaDon.setThoiGianTao(date);
		hoaDon.setTenKhachHang(tenKhachHang);
		hoaDon.setSoDienThoai(soDienThoai);
		hoaDon.setDiaChiGiao(diaChi);
		hoaDon.setGhiChu(ghiChu);
		hoaDon.setIdTinhTrangHD(0);
		int result = hoadondao.themHoaDon(hoaDon);
		if (result == 1)
		{
			int idHoaDon = hoadondao.layMaHoaDon();
			for (GioHang gh:dsGioHang)
			{
				ChiTietHoaDon chiTiet = new ChiTietHoaDon();
				chiTiet.setIdHoaDon(idHoaDon);
				chiTiet.setIdMon(gh.getMon().getIdMon());
				chiTiet.setLoaiSize(gh.getLoaiSizeMua());
				chiTiet.setGhiChuMon(gh.ghiChu());
				chiTiet.setDSTopping(gh.danhSachTopping());
				chiTiet.setSoLuong(gh.getSoLuongMua());
				chiTiet.setThanhTien(gh.getThanhTien());
				chitietdao.themChiTietHoaDon(chiTiet);
				
			}
			
		}
		session.invalidate();
		return "thongbao";
	}
	

}
