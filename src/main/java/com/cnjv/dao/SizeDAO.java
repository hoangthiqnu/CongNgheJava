package com.cnjv.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.cnjv.model.Size;

public class SizeDAO {
	
private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public void setDataSource(DataSource dbTraSua) {
		this.jdbcTemplate = new JdbcTemplate(dbTraSua);
	}
	
	public List<Size> layDanhSachSizeTheoIdDMMon(String idDMMon) {
		String sql = "select * from size where idDMMon = ? order by LoaiSize DESC";
		List<Size> dsSize = jdbcTemplate.query(sql, new RowMapper<Size>() {

			public Size mapRow(ResultSet rs, int rowNum) throws SQLException {
				Size size = new Size();
				size.setLoaiSize(rs.getString("LoaiSize"));
				size.setIdDMMon(rs.getString("idDMMon"));
				size.setGiaThem(rs.getInt("GiaThem"));
				return size;
			}
		},idDMMon);
		return dsSize;
	}
	public int layGiaThem(String idDMMon, String loaiSize){	
		String sql = "select GiaThem from size where idDMMon = ? and LoaiSize = ?";
		int giaThem = jdbcTemplate.queryForObject(sql, Integer.class,idDMMon, loaiSize);
		return giaThem;
	}

}
