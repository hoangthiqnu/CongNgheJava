package com.cnjv.model;
import java.util.List;

public class XuLyHoaDon {
    private int idHoaDon;
    private List<Mon> listMon;
    private List<ChiTietHoaDon> listChitietHD;
    private List<Topping> listTopping;
    
    public XuLyHoaDon(){}

    public int getIdHoaDon() {
        return idHoaDon;
    }

    public void setIdHoaDon(int idHoaDon) {
        this.idHoaDon = idHoaDon;
    }

    public List<Mon> getListMon() {
        return listMon;
    }

    public void setListMon(List<Mon> listMon) {
        this.listMon = listMon;
    }

    public List<ChiTietHoaDon> getListChitietHD() {
        return listChitietHD;
    }

    public void setListChitietHD(List<ChiTietHoaDon> listChitietHD) {
        this.listChitietHD = listChitietHD;
    }

    public List<Topping> getListTopping() {
        return listTopping;
    }

    public void setListTopping(List<Topping> listTopping) {
        this.listTopping = listTopping;
    } 
    
}