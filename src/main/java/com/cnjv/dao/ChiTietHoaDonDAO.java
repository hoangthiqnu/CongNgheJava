package com.cnjv.dao;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.cnjv.model.ChiTietHoaDon;


public class ChiTietHoaDonDAO {
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public void setDataSource(DataSource dbTraSua) {
		this.jdbcTemplate = new JdbcTemplate(dbTraSua);
	}
	public void themChiTietHoaDon(ChiTietHoaDon chiTietHoaDon) {
		String sql = "INSERT INTO `trasua`.`chitiethd` (`idHoaDon`, `idMon`, `LoaiSize`, `GhiChuMon`, `DSTopping`, `SoLuong`, `ThanhTien`) VALUES (?, ?, ?, ?, ?, ?, ?)";
		jdbcTemplate.update(sql, chiTietHoaDon.getIdHoaDon(), chiTietHoaDon.getIdMon(), chiTietHoaDon.getLoaiSize(),chiTietHoaDon.getGhiChuMon(),chiTietHoaDon.getDSTopping(),chiTietHoaDon.getSoLuong(),chiTietHoaDon.getThanhTien());
	}

}
