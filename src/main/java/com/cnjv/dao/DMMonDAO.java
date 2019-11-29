package com.cnjv.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.cnjv.model.DMMon;


public class DMMonDAO {
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public void setDataSource(DataSource dbTraSua) {
		this.jdbcTemplate = new JdbcTemplate(dbTraSua);
	}

	public List<DMMon> layDanhSachDMMon() {
		String sql = "select * from dmmon order by TenDMMon";
		List<DMMon> dsDMMon = jdbcTemplate.query(sql, new RowMapper<DMMon>() {

			public DMMon mapRow(ResultSet rs, int rowNum) throws SQLException {
				DMMon dmmon = new DMMon();
				dmmon.setIdDMMon(rs.getString("idDMMon"));
				dmmon.setTenDMMon(rs.getString("TenDMMon"));
				return dmmon;
			}
		});
		return dsDMMon;
	}	

}
