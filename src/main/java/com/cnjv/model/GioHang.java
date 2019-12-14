package com.cnjv.model;

import java.util.ArrayList;

public class GioHang {
	
	private Mon mon;
	private String loaiSizeMua;
	private String trangThaiMon;
	private String mucDuong;
	private String mucDa;
	private ArrayList<Topping> dsToppingMua;
	private int soLuongMua;
	private int thanhTien;
	
	
	public GioHang(Mon mon, String loaiSizeMua, String trangThaiMon, String mucDuong, String mucDa,
			ArrayList<Topping> dsToppingMua, int soLuongMua, int thanhTien) {
		super();
		this.mon = mon;
		this.loaiSizeMua = loaiSizeMua;
		this.trangThaiMon = trangThaiMon;
		this.mucDuong = mucDuong;
		this.mucDa = mucDa;
		this.dsToppingMua = dsToppingMua;
		this.soLuongMua = soLuongMua;
		this.thanhTien = thanhTien;
	}
	public GioHang() {
		
	}
	
	public int getThanhTien() {
		return thanhTien;
	}
	public void setThanhTien(int thanhTien) {
		this.thanhTien = thanhTien;
	}
	public Mon getMon() {
		return mon;
	}
	public void setMon(Mon mon) {
		this.mon = mon;
	}
	public String getLoaiSizeMua() {
		return loaiSizeMua;
	}
	public void setLoaiSizeMua(String loaiSizeMua) {
		this.loaiSizeMua = loaiSizeMua;
	}
	public String getTrangThaiMon() {
		return trangThaiMon;
	}
	public void setTrangThaiMon(String trangThaiMon) {
		this.trangThaiMon = trangThaiMon;
	}
	public String getMucDuong() {
		return mucDuong;
	}
	public void setMucDuong(String mucDuong) {
		this.mucDuong = mucDuong;
	}
	public String getMucDa() {
		return mucDa;
	}
	public void setMucDa(String mucDa) {
		this.mucDa = mucDa;
	}
	public ArrayList<Topping> getDsToppingMua() {
		return dsToppingMua;
	}
	public void setDsToppingMua(ArrayList<Topping> dsToppingMua) {
		this.dsToppingMua = dsToppingMua;
	}
	public int getSoLuongMua() {
		return soLuongMua;
	}
	public void setSoLuongMua(int soLuongMua) {
		this.soLuongMua = soLuongMua;
	}
	public String ghiChu() {
		return trangThaiMon + "," + mucDuong + "," + mucDa ;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((dsToppingMua == null) ? 0 : dsToppingMua.hashCode());
		result = prime * result + ((loaiSizeMua == null) ? 0 : loaiSizeMua.hashCode());
		result = prime * result + ((mon == null) ? 0 : mon.hashCode());
		result = prime * result + ((mucDa == null) ? 0 : mucDa.hashCode());
		result = prime * result + ((mucDuong == null) ? 0 : mucDuong.hashCode());
		result = prime * result + ((trangThaiMon == null) ? 0 : trangThaiMon.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		GioHang other = (GioHang) obj;
		if (dsToppingMua == null) {
			if (other.dsToppingMua != null)
				return false;
		} else if (dsToppingMua.size() != other.dsToppingMua.size())
			return false;
		else {
			for(int i=0 ; i < dsToppingMua.size(); i++ ) {
				
					if(dsToppingMua.get(i).getIdTopping() != other.dsToppingMua.get(i).getIdTopping())
						return false;
			}
		}
		if (loaiSizeMua == null) {
			if (other.loaiSizeMua != null)
				return false;
		} else if (!loaiSizeMua.equals(other.loaiSizeMua))
			return false;
		if (mon == null) {
			if (other.mon != null)
				return false;
		} else if (!mon.equals(other.mon))
			return false;
		if (mucDa == null) {
			if (other.mucDa != null)
				return false;
		} else if (!mucDa.equals(other.mucDa))
			return false;
		if (mucDuong == null) {
			if (other.mucDuong != null)
				return false;
		} else if (!mucDuong.equals(other.mucDuong))
			return false;
		if (trangThaiMon == null) {
			if (other.trangThaiMon != null)
				return false;
		} else if (!trangThaiMon.equals(other.trangThaiMon))
			return false;
		return true;
	}
	public int tinhTien(int giaThem)
	{
		int donGiaMon = mon.getDonGiaMon();
		int tienTopping = 0;
		for (Topping tp:dsToppingMua)
		{
			tienTopping += tp.getDonGiaTopping();
		}
		return (donGiaMon + tienTopping + giaThem)*soLuongMua;		
	}
	public String danhSachTopping()
	{
		String danhSach = "";
		if (dsToppingMua.size()==0)
		{
			danhSach = "Không";
		}
		else
		{
			for (Topping tp:dsToppingMua)
			{
				danhSach += tp.getTenTopping() +", ";
			}		
		}
		return danhSach;
	}	
}
