package com.cnjv.model;

public class Size {
	private String loaiSize;
	private String idDMMon;
	private int giaThem;
	
	public Size() {
		
	}
	public Size(String loaiSize, String idDMMon, int giaThem) {
		super();
		this.loaiSize = loaiSize;
		this.idDMMon = idDMMon;
		this.giaThem = giaThem;
	}
	public String getLoaiSize() {
		return loaiSize;
	}
	public void setLoaiSize(String loaiSize) {
		this.loaiSize = loaiSize;
	}
	public String getIdDMMon() {
		return idDMMon;
	}
	public void setIdDMMon(String idDMMon) {
		this.idDMMon = idDMMon;
	}
	public int getGiaThem() {
		return giaThem;
	}
	public void setGiaThem(int giaThem) {
		this.giaThem = giaThem;
	}
	
	

}
