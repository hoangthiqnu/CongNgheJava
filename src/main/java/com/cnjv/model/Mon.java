package com.cnjv.model;

public class Mon {
	private int idMon;
	private String idDMMon;
	private String tenMon;
	private int donGiaMon;
	private String hinhAnh;
	private String moTa;
	private boolean chiDa;
	
	public Mon() {
		
	}
	public Mon(int idMon, String idDMMon, String tenMon, int donGiaMon, String hinhAnh, String moTa, boolean chiDa) {
		super();
		this.idMon = idMon;
		this.idDMMon = idDMMon;
		this.tenMon = tenMon;
		this.donGiaMon = donGiaMon;
		this.hinhAnh = hinhAnh;
		this.moTa = moTa;
		this.chiDa = chiDa;
	}
	public int getIdMon() {
		return idMon;
	}
	public void setIdMon(int idMon) {
		this.idMon = idMon;
	}
	public String getIdDMMon() {
		return idDMMon;
	}
	public void setIdDMMon(String idDMMon) {
		this.idDMMon = idDMMon;
	}
	public String getTenMon() {
		return tenMon;
	}
	public void setTenMon(String tenMon) {
		this.tenMon = tenMon;
	}
	public int getDonGiaMon() {
		return donGiaMon;
	}
	public void setDonGiaMon(int donGiaMon) {
		this.donGiaMon = donGiaMon;
	}
	public String getHinhAnh() {
		return hinhAnh;
	}
	public void setHinhAnh(String hinhAnh) {
		this.hinhAnh = hinhAnh;
	}
	public String getMoTa() {
		return moTa;
	}
	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}
	public boolean isChiDa() {
		return chiDa;
	}
	public void setChiDa(boolean chiDa) {
		this.chiDa = chiDa;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + idMon;
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Mon other = (Mon) obj;
		if (idMon != other.idMon)
			return false;
		return true;
	}
	
	
}
