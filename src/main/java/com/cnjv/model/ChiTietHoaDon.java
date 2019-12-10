package com.cnjv.model;

public class ChiTietHoaDon {

	private HoaDon hoaDon;
    private int idMon;
    private String loaiSize;
    private String ghiChuMon;
    private int soLuong;
    private int toppingMon;
    
   public ChiTietHoaDon(){}

    public ChiTietHoaDon(HoaDon hoaDon, int idMon, String loaiSize, String ghiChuMon, int soLuong, int toppingMon) {
        this.hoaDon = hoaDon;
        this.idMon = idMon;
        this.loaiSize = loaiSize;
        this.ghiChuMon = ghiChuMon;
        this.soLuong = soLuong;
        this.toppingMon = toppingMon;
    }

    public HoaDon getHoaDon() {
        return hoaDon;
    }

    public void setHoaDon(HoaDon hoaDon) {
        this.hoaDon = hoaDon;
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

    public int getToppingMon() {
        return toppingMon;
    }

    public void setToppingMon(int toppingMon) {
        this.toppingMon = toppingMon;
    }
}

