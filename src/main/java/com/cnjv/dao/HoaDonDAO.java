package com.cnjv.dao;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.cnjv.model.HoaDon;


public class HoaDonDAO {
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public void setDataSource(DataSource dbTraSua) {
		this.jdbcTemplate = new JdbcTemplate(dbTraSua);
	}
	public void themHoaDon(HoaDon hoaDon) {
		String sql = " INSERT INTO `trasua`.`hoadon` (`ThoiGianTao`, `TenKH`, `SDT`, `DiaChiGiao`, `GhiChu`, `idTinhTrangHD`) VALUES (?, ?, ?, ?, ?, ?)";
		jdbcTemplate.update(sql, hoaDon.getThoiGianTao(), hoaDon.getTenKhachHang(), hoaDon.getSoDienThoai(), hoaDon.getDiaChiGiao(), hoaDon.getGhiChu(), hoaDon.getIdTinhTrangHD());
	}
	
	public int layMaHoaDon() {
		String sql = "SELECT max(idHoaDon) FROM hoadon";
		int id =jdbcTemplate.queryForObject(sql, Integer.class);
		return id;
	}

}
