package com.cnjv.service;

import java.util.ArrayList;

import com.cnjv.model.GioHang;

public class GioHangService {
	
	public ArrayList<GioHang> themGioHang(ArrayList<GioHang> dsGioHang, GioHang gioHang)
	{
		if (dsGioHang == null) {
            dsGioHang = new ArrayList<>();
        }
		if (dsGioHang.contains(gioHang)) 
        {
        		int index = dsGioHang.indexOf(gioHang);
                GioHang item = dsGioHang.get(index);
                item.setSoLuongMua(item.getSoLuongMua() + gioHang.getSoLuongMua());
                item.setThanhTien(item.getThanhTien()+gioHang.getThanhTien());
                
                dsGioHang.set(index,item);
        } 
        else 
        	{
                dsGioHang.add(gioHang);
            }
		return dsGioHang;
	}
	public int tongTienDSGioHang(ArrayList<GioHang> dsGioHang)
	{
		int tongTien = 0;
		for(GioHang gioHang:dsGioHang) {
			tongTien += gioHang.getThanhTien();
		}
		return tongTien;
	}
	public int tongMonTrongDSGioHang(ArrayList<GioHang> dsGioHang)
	{
		int tongMon = 0;
		for(GioHang gioHang:dsGioHang) {
			tongMon += gioHang.getSoLuongMua();
		}
		return tongMon;
	}
	

}
