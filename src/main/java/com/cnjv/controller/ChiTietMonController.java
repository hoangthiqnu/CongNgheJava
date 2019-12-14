package com.cnjv.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cnjv.dao.MonDAO;
import com.cnjv.dao.SizeDAO;
import com.cnjv.dao.ToppingDAO;
import com.cnjv.model.Mon;
import com.cnjv.model.GioHang;
import com.cnjv.model.Size;
import com.cnjv.model.Topping;
import com.cnjv.service.GioHangService;


@Controller
public class ChiTietMonController {
	
	ApplicationContext context = new ClassPathXmlApplicationContext("IoC.xml");
	MonDAO mondao = (MonDAO) context.getBean("dbmon");
	SizeDAO sizedao = (SizeDAO) context.getBean("dbsize");
	ToppingDAO toppingdao = (ToppingDAO) context.getBean("dbtopping");
	GioHangService gioHangService = new GioHangService();
	
	@RequestMapping("/chitietmon")
	public String hienThiChiTietMon(@RequestParam("idmon") int id,ModelMap modelMap) {
		Mon mon = mondao.layMonTheoId(id);
		String idDMMon = mon.getIdDMMon();
		List<Size> dsSize = sizedao.layDanhSachSizeTheoIdDMMon(idDMMon);
		List<Topping> dsTopping = toppingdao.layDanhSachTopping();
		modelMap.addAttribute("dsTopping", dsTopping);
		modelMap.addAttribute("mon", mon);
		modelMap.addAttribute("dsSize", dsSize);
		return "chitietmon";
	}
	@PostMapping("/themvaogio")
	public String themMonVaoGioHang(HttpSession session, @RequestParam("idmon") int idMon,@RequestParam("trangThai") String trangThai, @RequestParam("loaiSize") String loaiSize, @RequestParam("topping[]") int[] dsIdToppingMua, @RequestParam("mucDuong") String mucDuong, @RequestParam("mucDa") String mucDa, @RequestParam("soLuong") int soLuong, ModelMap modelMap)
	{
		Mon mon = mondao.layMonTheoId(idMon);
		String idDMMon = mon.getIdDMMon();
		List<Topping> dsTopping = toppingdao.layDanhSachTopping();
		List<Size> dsSize = sizedao.layDanhSachSizeTheoIdDMMon(idDMMon);
		ArrayList<Topping> dsToppingMua = new ArrayList<Topping>();
		if (dsIdToppingMua[0] !=  0)
		{
			for(int id:dsIdToppingMua)
			{
				Topping topping = toppingdao.layToppingTheoId(id);
				dsToppingMua.add(topping);
			}
		}
		GioHang gioHang = new GioHang();
	    gioHang.setMon(mon);
	    gioHang.setLoaiSizeMua(loaiSize);
	    gioHang.setDsToppingMua(dsToppingMua);
	    gioHang.setTrangThaiMon(trangThai);
	    gioHang.setMucDuong(mucDuong);
	    gioHang.setMucDa(mucDa);
	    gioHang.setSoLuongMua(soLuong);
	    int giaThem = sizedao.layGiaThem(idDMMon, loaiSize);
	    int thanhTien = gioHang.tinhTien(giaThem);
	    gioHang.setThanhTien(thanhTien);
		ArrayList<GioHang> dsGioHang = (ArrayList<GioHang>) session.getAttribute("dsGioHang");
        dsGioHang = gioHangService.themGioHang(dsGioHang, gioHang);
        int tongTien = gioHangService.tongTienDSGioHang(dsGioHang);
        int tongMon = gioHangService.tongMonTrongDSGioHang(dsGioHang);
        modelMap.addAttribute("mon", mon);
		modelMap.addAttribute("dsTopping", dsTopping);
		modelMap.addAttribute("dsSize", dsSize);
        session.setAttribute("dsGioHang", dsGioHang);
        session.setAttribute("tongTien", tongTien);
        session.setAttribute("tongMon",tongMon);
        return "chitietmon";	
	}

}
