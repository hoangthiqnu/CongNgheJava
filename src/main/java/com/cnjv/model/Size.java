package com.cnjv.model;

public class Size {
    private String idDMMon;
    private String loaiSize;
    private int giaThem;

    public Size(){}
    
    public Size(String idDMMon, String loaiSize, int giaThem) {
        this.idDMMon = idDMMon;
        this.loaiSize = loaiSize;
        this.giaThem = giaThem;
    }

    public String getIdDMMon() {
        return idDMMon;
    }

    public void setIdDMMon(String idDMMon) {
        this.idDMMon = idDMMon;
    }

    public String getLoaiSize() {
        return loaiSize;
    }

    public void setLoaiSize(String loaiSize) {
        this.loaiSize = loaiSize;
    }

    public int getGiaThem() {
        return giaThem;
    }

    public void setGiaThem(int giaThem) {
        this.giaThem = giaThem;
    }
    
    
}

