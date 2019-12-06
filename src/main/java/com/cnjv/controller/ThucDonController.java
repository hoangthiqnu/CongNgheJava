package com.cnjv.controller;

import java.util.List;


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
	public String hienThiMon(@RequestParam("iddm") String id,@RequestParam("page") int page,ModelMap modelMap) {
		List<Mon> dsMon;
		List<DMMon> dsDMMon = dmdao.layDanhSachDMMon();
		modelMap.addAttribute("DanhSachDanhMuc", dsDMMon);
		String tenDM;
		int soMonTrenTrang = 6;
		int soTrang=1;
		int soLuongMon = 0;
		int trangHienTai = page > 1 ? page : 1;
		if(id.equals("tatcamon"))
		{
			tenDM = "TẤT CẢ";
			soLuongMon = mondao.demSoMon("tatcamon");
			soTrang = (int) Math.ceil(soLuongMon /(float)soMonTrenTrang );
			trangHienTai = trangHienTai > soTrang ? soTrang : trangHienTai;
			int viTriBatDau = (trangHienTai-1)*soMonTrenTrang;
			dsMon = mondao.layDanhSachMonTrenTrang("tatcamon",viTriBatDau,soMonTrenTrang);
		}
		else
			{
				tenDM = dmdao.layTenDanhMuc(id);
				soLuongMon = mondao.demSoMon(id);
				soTrang = (int) Math.ceil(soLuongMon /(float)soMonTrenTrang );
				trangHienTai = trangHienTai > soTrang ? soTrang : trangHienTai;
				int viTriBatDau = (trangHienTai-1)*soMonTrenTrang;
				dsMon = mondao.layDanhSachMonTrenTrang(id,viTriBatDau,soMonTrenTrang);
			}
		
		modelMap.addAttribute("TenDM", tenDM);
		modelMap.addAttribute("SoTrang", soTrang);
		modelMap.addAttribute("TrangHienTai", page);
		modelMap.addAttribute("idDMMon", id);
		modelMap.addAttribute("DanhSachMon", dsMon);
		return "thucdon";
	}
	@PostMapping("/timkiem")
	public String hienThiTimKiem(@RequestParam("tim") String key,ModelMap modelMap) {
		List<DMMon> dsDMMon = dmdao.layDanhSachDMMon();
		modelMap.addAttribute("DanhSachDanhMuc", dsDMMon);
		List<Mon> dsMonTimKiem = mondao.timKiemMon(key);
		modelMap.addAttribute("DanhSachMonTimKiem", dsMonTimKiem);
		return "thucdon";
	}
	
	
	

}
