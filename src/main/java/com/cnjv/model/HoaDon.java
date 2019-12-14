package com.cnjv.model;

import java.util.Date;

public class HoaDon {
	private int idHoaDon;
	private Date thoiGianTao;
	private String tenKhachHang;
	private String soDienThoai;
	private String diaChiGiao;
	private String ghiChu;
	private int idTinhTrangHD;
	public HoaDon()
	{
		
	}
	public HoaDon(int idHoaDon, Date thoiGianTao, String tenKhachHang, String soDienThoai, String diaChiGiao,
			String ghiChu, int idTinhTrangHD) {
		super();
		this.idHoaDon = idHoaDon;
		this.thoiGianTao = thoiGianTao;
		this.tenKhachHang = tenKhachHang;
		this.soDienThoai = soDienThoai;
		this.diaChiGiao = diaChiGiao;
		this.ghiChu = ghiChu;
		this.idTinhTrangHD = idTinhTrangHD;
	}
	public int getIdHoaDon() {
		return idHoaDon;
	}
	public void setIdHoaDon(int idHoaDon) {
		this.idHoaDon = idHoaDon;
	}
	public Date getThoiGianTao() {
		return thoiGianTao;
	}
	public void setThoiGianTao(Date thoiGianTao) {
		this.thoiGianTao = thoiGianTao;
	}
	public String getTenKhachHang() {
		return tenKhachHang;
	}
	public void setTenKhachHang(String tenKhachHang) {
		this.tenKhachHang = tenKhachHang;
	}
	public String getSoDienThoai() {
		return soDienThoai;
	}
	public void setSoDienThoai(String soDienThoai) {
		this.soDienThoai = soDienThoai;
	}
	public String getDiaChiGiao() {
		return diaChiGiao;
	}
	public void setDiaChiGiao(String diaChiGiao) {
		this.diaChiGiao = diaChiGiao;
	}
	public String getGhiChu() {
		return ghiChu;
	}
	public void setGhiChu(String ghiChu) {
		this.ghiChu = ghiChu;
	}
	public int getIdTinhTrangHD() {
		return idTinhTrangHD;
	}
	public void setIdTinhTrangHD(int idTinhTrangHD) {
		this.idTinhTrangHD = idTinhTrangHD;
	}
	

}
