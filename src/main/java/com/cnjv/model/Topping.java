package com.cnjv.model;

public class Topping {
	 private int idTopping;
	 private String tenTopping;
	 private int donGiaTopping;
	
	 public Topping() {
		 
	 }
	 public Topping(int idTopping, String tenTopping, int donGiaTopping) {
		super();
		this.idTopping = idTopping;
		this.tenTopping = tenTopping;
		this.donGiaTopping = donGiaTopping;
	}
	public int getIdTopping() {
		return idTopping;
	}
	public void setIdTopping(int idTopping) {
		this.idTopping = idTopping;
	}
	public String getTenTopping() {
		return tenTopping;
	}
	public void setTenTopping(String tenTopping) {
		this.tenTopping = tenTopping;
	}
	public int getDonGiaTopping() {
		return donGiaTopping;
	}
	public void setDonGiaTopping(int donGiaTopping) {
		this.donGiaTopping = donGiaTopping;
	}
	 
	 

}
