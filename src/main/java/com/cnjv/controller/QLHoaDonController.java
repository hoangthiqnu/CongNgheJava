package com.cnjv.controller;

import java.util.List;
import com.cnjv.dao.HoaDonDAO;
import com.cnjv.dao.MonDAO;
import com.cnjv.dao.XuLyHoaDonDAO;
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
import org.springframework.web.bind.annotation.ResponseBody;



@Controller
public class QLHoaDonController {
	ApplicationContext context = new ClassPathXmlApplicationContext("IoC.xml");
	HoaDonDAO db = (HoaDonDAO) context.getBean("dbhoadon");
	XuLyHoaDonDAO xlhdDAO = (XuLyHoaDonDAO) context.getBean("dbxulyhoadon");
	MonDAO monDao =  (MonDAO)  context.getBean("dbmon");
	
	@GetMapping("/qldonhang")
	public String hienThiHoaDonbyIDTinhTrang(@RequestParam("tinhtrang") int id, ModelMap modelMap) {
		List<HoaDon> listhd = db.getListHoaDonByIDTinhTrang(id);
		/*for(HoaDon hDon : listhd) {
			int tongTien= xlhdDAO.TongTienTrenMotHoaDon(hDon.getIdHoaDon()); // Tinh tien 1 hoa don
			hDon.setTongTien(tongTien);
		}*/
		//modelMap.addAttribute("idTinhTrang", id);
		modelMap.addAttribute("listHoaDon", listhd);
		return "QLDonHang";
	}
	 
	//Xac Nhan Don Hang
	@GetMapping("/qldonhang/xacnhan")
	public String xacNhanHoaDon(@RequestParam("id") int idHoaDon, ModelMap modelMap) {
		int result = db.xacNhanDonHang(idHoaDon);
		List<HoaDon> listhd = db.getListHoaDonByIDTinhTrang(idHoaDon);
		/*for(HoaDon hDon : listhd) {
			int tongTien= xlhdDAO.TongTienTrenMotHoaDon(hDon.getIdHoaDon()); // Tinh tien 1 hoa don
			hDon.setTongTien(tongTien);
		}*/
		
		modelMap.addAttribute("result", result);
		modelMap.addAttribute("listHoaDon", listhd);
		return "QLDonHang";
	}
	
	//Thanh Toan Don Hang
		@GetMapping("/qldonhang/thanhtoan")
		public String thanhToanHoaDon(@RequestParam("id") int idHoaDon, ModelMap modelMap) {
			int result = db.thanhToanDonHang(idHoaDon);
			List<HoaDon> listhd = db.getListHoaDonByIDTinhTrang(idHoaDon);
			/*for(HoaDon hDon : listhd) {
				int tongTien= xlhdDAO.TongTienTrenMotHoaDon(hDon.getIdHoaDon()); // Tinh tien 1 hoa don
				hDon.setTongTien(tongTien);
			}*/
			
			modelMap.addAttribute("result", result);
			modelMap.addAttribute("listHoaDon", listhd);
			return "QLDonHang";
		}
		
		//Xac Nhan Don Hang
		@GetMapping("/qldonhang/thanhtoan")
		public String huyHoaDon(@RequestParam("id") int idHoaDon, ModelMap modelMap) {
			int result = db.xacNhanDonHang(idHoaDon);
			List<HoaDon> listhd = db.getListHoaDonByIDTinhTrang(idHoaDon);
			/*for(HoaDon hDon : listhd) {
				int tongTien= xlhdDAO.TongTienTrenMotHoaDon(hDon.getIdHoaDon()); // Tinh tien 1 hoa don
				hDon.setTongTien(tongTien);
			}*/
			
			modelMap.addAttribute("result", result);
			modelMap.addAttribute("listHoaDon", listhd);
			return "QLDonHang";
		}
	
	
	
}