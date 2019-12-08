package com.cnjv.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.cnjv.model.Topping;


public class ToppingDAO {
	
	private JdbcTemplate jdbcTemplate;

	public void setDataSource(DataSource dbTraSua) {
		this.jdbcTemplate = new JdbcTemplate(dbTraSua);
	}
	
	public List<Topping> layDanhSachTopping() {
		String sql = "select * from topping";
		List<Topping> dsTopping = jdbcTemplate.query(sql, new RowMapper<Topping>() {

			public Topping mapRow(ResultSet rs, int rowNum) throws SQLException {
				Topping topping = new Topping();
				topping.setIdTopping(rs.getInt("idTopping"));
				topping.setTenTopping(rs.getString("TenTopping"));
				topping.setDonGiaTopping(rs.getInt("DonGiaTopping"));
				return topping;
			}
		});
		return dsTopping;
	}

}
