package com.cnjv.model;

public class TinhTrangHD {
    private int idTinhTrangHD;
    private String tenTinhTrang;

    public TinhTrangHD(){}
    
    public TinhTrangHD(int idTinhTrangHD, String tenTinhTrang) {
        this.idTinhTrangHD = idTinhTrangHD;
        this.tenTinhTrang = tenTinhTrang;
    }

    public int getIdTinhTrangHD() {
        return idTinhTrangHD;
    }

    public void setIdTinhTrangHD(int idTinhTrangHD) {
        this.idTinhTrangHD = idTinhTrangHD;
    }

    public String getTenTinhTrang() {
        return tenTinhTrang;
    }

    public void setTenTinhTrang(String tenTinhTrang) {
        this.tenTinhTrang = tenTinhTrang;
    }
    
    
}

