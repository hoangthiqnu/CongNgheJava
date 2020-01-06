package com.cnjv.model;

public class ChiTietHoaDon {

	private int idhoaDon;
    private int idMon;
    private String loaiSize;
    private String ghiChuMon;
    private int soLuong;
    private String dsTopping;
    private int thanhTien;
    
   public ChiTietHoaDon(){}

	public int getIdhoaDon() {
		return idhoaDon;
	}
	
	public void setIdhoaDon(int idhoaDon) {
		this.idhoaDon = idhoaDon;
	}
	
	public int getThanhTien() {
		return thanhTien;
	}
	
	public void setThanhTien(int thanhTien) {
		this.thanhTien = thanhTien;
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

	public String getDsTopping() {
		return dsTopping;
	}

	public void setDsTopping(String dsTopping) {
		this.dsTopping = dsTopping;
	}
    
}


