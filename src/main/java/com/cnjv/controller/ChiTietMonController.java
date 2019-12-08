package com.cnjv.controller;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cnjv.dao.MonDAO;
import com.cnjv.dao.SizeDAO;
import com.cnjv.dao.ToppingDAO;
import com.cnjv.model.Mon;
import com.cnjv.model.Size;
import com.cnjv.model.Topping;


@Controller
public class ChiTietMonController {
	
	ApplicationContext context = new ClassPathXmlApplicationContext("IoC.xml");
	MonDAO mondao = (MonDAO) context.getBean("dbmon");
	SizeDAO sizedao = (SizeDAO) context.getBean("dbsize");
	ToppingDAO toppingdao = (ToppingDAO) context.getBean("dbtopping");
	
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

}
