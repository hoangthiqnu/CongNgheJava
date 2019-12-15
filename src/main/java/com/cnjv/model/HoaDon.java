package com.cnjv.model;

import java.sql.Date;
import java.util.List;

import com.cnjv.model.ChiTietHoaDon;

public class HoaDon {
	
	private int idHoaDon; 
    private Date thoiGianTao;
    private String tenKH;
    private String sDT;
    private String diaChiGiao;
    private String ghiChu;
    private TinhTrangHD tinhtranghd;
    private int TongTien;
    
    public HoaDon() {
		
	}
    
	public HoaDon(int idHoaDon, Date thoiGianTao, String tenKH, String sDT, String diaChiGiao, String ghiChu, TinhTrangHD tinhtranghd) {
        this.idHoaDon = idHoaDon;
        this.thoiGianTao = thoiGianTao;
        this.tenKH = tenKH;
        this.sDT = sDT;
        this.diaChiGiao = diaChiGiao;
        this.ghiChu = ghiChu;
        this.tinhtranghd = tinhtranghd;
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

    public String getTenKH() {
        return tenKH;
    }

    public void setTenKH(String tenKH) {
        this.tenKH = tenKH;
    }

    public String getsDT() {
        return sDT;
    }

    public void setsDT(String sDT) {
        this.sDT = sDT;
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

    public TinhTrangHD getTinhtranghd() {
        return tinhtranghd;
    }

    public void setTinhtranghd(TinhTrangHD tinhtranghd) {
        this.tinhtranghd = tinhtranghd;
    }

	public int getTongTien() {
		return TongTien;
	}

	public void setTongTien(int tongTien) {
		TongTien = tongTien;
	}
    
    
}
