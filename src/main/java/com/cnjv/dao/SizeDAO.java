package com.cnjv.dao;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

public class SizeDAO {

	private JdbcTemplate jdbcTemplate;

	@Autowired
	public void setDataSource(DataSource dbTraSua) {
		this.jdbcTemplate = new JdbcTemplate(dbTraSua);
	}
	
	public int getGiaThemByIdDMMon(int idDM, String loaiSize) {
		String sql = "SELECT GiaThem FROM size where idDMMon = ? and LoaiSize = ? ;";
		int giaThem = jdbcTemplate.queryForObject(sql, Integer.class, idDM, loaiSize);
		return giaThem;
	}
}
