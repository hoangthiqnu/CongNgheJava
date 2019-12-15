package com.cnjv.model;
import java.sql.Date;
import java.util.List;

public class XuLyHoaDon {
	
	private int idHoaDon;
	private int idMon;
    private String hinhAnh;
    private String tenMon;
    private int donGia ;
    private String ghiChuMon;
	private String dsTopping;
    private String loaiSize;
    private int soLuong;
    private int thanhTien ;
    
    public XuLyHoaDon() {}

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

	public String getHinhAnh() {
		return hinhAnh;
	}

	public void setHinhAnh(String hinhAnh) {
		this.hinhAnh = hinhAnh;
	}

	public String getTenMon() {
		return tenMon;
	}

	public void setTenMon(String tenMon) {
		this.tenMon = tenMon;
	}

	public int getDonGia() {
		return donGia;
	}

	public void setDonGia(int donGia) {
		this.donGia = donGia;
	}

	public String getDsTopping() {
		return dsTopping;
	}

	public void setDsTopping(String dsTopping) {
		this.dsTopping = dsTopping;
	}

	public String getLoaiSize() {
		return loaiSize;
	}

	public void setLoaiSize(String loaiSize) {
		this.loaiSize = loaiSize;
	}

	public int getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}

	public int getThanhTien() {
		return thanhTien;
	}

	public void setThanhTien(int thanhTien) {
		this.thanhTien = thanhTien;
	}
    
   public String getGhiChuMon() {
		return ghiChuMon;
	}

	public void setGhiChuMon(String ghiChuMon) {
		this.ghiChuMon = ghiChuMon;
	}

    
}