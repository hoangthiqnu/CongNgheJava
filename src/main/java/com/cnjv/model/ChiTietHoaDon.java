package com.cnjv.model;

public class ChiTietHoaDon {
	private int idHoaDon;
	private int idMon;
	private String loaiSize;
	private String ghiChuMon;
	private int soLuong;
	private String dSTopping;
	private int thanhTien;
	
	public ChiTietHoaDon()
	{
		
	}
	
	public ChiTietHoaDon(int idHoaDon, int idMon, String loaiSize, String ghiChuMon, int soLuong, String dSTopping,
			int thanhTien) {
		super();
		this.idHoaDon = idHoaDon;
		this.idMon = idMon;
		this.loaiSize = loaiSize;
		this.ghiChuMon = ghiChuMon;
		this.soLuong = soLuong;
		this.dSTopping = dSTopping;
		this.thanhTien = thanhTien;
	}

	public int getIdHoaDon() {
		return idHoaDon;
	}
	public void setIdHoaDon(int idHoaDon) {
		this.idHoaDon = idHoaDon;
	}
	public int getIdMon() {
		return idMon;
	}
	public void setIdMon(int idMon) {
		this.idMon = idMon;
	}
	public String getLoaiSize() {
		return loaiSize;
	}
	public void setLoaiSize(String loaiSize) {
		this.loaiSize = loaiSize;
	}
	public String getGhiChuMon() {
		return ghiChuMon;
	}
	public void setGhiChuMon(String ghiChuMon) {
		this.ghiChuMon = ghiChuMon;
	}
	public int getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}
	
	
	public String getDSTopping() {
		return dSTopping;
	}

	public void setDSTopping(String dSTopping) {
		this.dSTopping = dSTopping;
	}

	public int getThanhTien() {
		return thanhTien;
	}
	public void setThanhTien(int thanhTien) {
		this.thanhTien = thanhTien;
	}
	
	

}

