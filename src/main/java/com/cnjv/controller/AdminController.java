package com.cnjv.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cnjv.dao.TaiKhoanDAO;
import com.cnjv.model.TaiKhoan;

@Controller
public class AdminController {
	private String referString;
	HttpSession session;
	ApplicationContext context = new ClassPathXmlApplicationContext("IoC.xml");
	TaiKhoanDAO db = (TaiKhoanDAO) context.getBean("dbtaikhoan");
	TaiKhoan tk = new TaiKhoan();

	@RequestMapping("/admin")
	public String trangLoginAdmin(ModelMap modelMap, HttpServletRequest request) throws ServletException, IOException {
		session = request.getSession();
		tk = (TaiKhoan) session.getAttribute("TaiKhoan");
		
		modelMap.addAttribute("LoginFail", true);
		
		if(tk == null) {
			return "LoginAdmin";
		}else {
			return "IndexAdmin";
		}
		
	}
	
	@PostMapping("/admin")
	public String dangNhap(@RequestParam String tenDangNhap, String matKhau,
			 ModelMap modelMap, HttpServletRequest request) throws ServletException, IOException {
		session = request.getSession();
		TaiKhoan taiKhoan = new TaiKhoan();
		taiKhoan.setTaiKhoan(tenDangNhap);
		taiKhoan.setMatKhau(matKhau);
		boolean test = db.kiemtraLogin(taiKhoan); // true dang nhap sai
		
		
		if(test) {
			modelMap.addAttribute("LoginFail", false);
			return "LoginAdmin";
		}
		else {
			session.setAttribute("TaiKhoan", taiKhoan);
			return "IndexAdmin";
		}
		
	}
	
	@RequestMapping("/admin/logout")
	public String Logout(ModelMap modelMap, HttpServletRequest request) throws ServletException, IOException {
		session = request.getSession();
		session.invalidate();
		
		referString = request.getHeader("Referer");
		return "redirect:"+referString;
		//response.sendRedirect("LoginAdmin.jsp");
		
	}
}

