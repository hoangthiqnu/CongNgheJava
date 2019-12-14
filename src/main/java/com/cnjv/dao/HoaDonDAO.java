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
	public int themHoaDon(HoaDon hoaDon) {
		String sql = " INSERT INTO `trasua`.`hoadon` (`ThoiGianTao`, `TenKH`, `SDT`, `DiaChiGiao`, `GhiChu`, `idTinhTrangHD`) VALUES (?, ?, ?, ?, ?, ?)";
		int result = jdbcTemplate.update(sql, hoaDon.getThoiGianTao(), hoaDon.getTenKhachHang(), hoaDon.getSoDienThoai(), hoaDon.getDiaChiGiao(), hoaDon.getGhiChu(), hoaDon.getIdTinhTrangHD());
		return result;
	}
	
	public int layMaHoaDon() {
		String sql = "SELECT max(idHoaDon) FROM hoadon";
		int result =jdbcTemplate.queryForObject(sql, Integer.class);
		return result;
	}

}
