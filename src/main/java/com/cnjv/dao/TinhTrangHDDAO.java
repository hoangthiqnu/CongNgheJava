package com.cnjv.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.cnjv.model.TinhTrangHD;

public class TinhTrangHDDAO {

	private JdbcTemplate jdbcTemplate;

	@Autowired
	public void setDataSource(DataSource dbTraSua) {
		this.jdbcTemplate = new JdbcTemplate(dbTraSua);
	}

	public TinhTrangHD getTinhTrangHDByID(int id) {
		String sql = "SELECT * FROM tinhtranghd where idTinhTrangHD = ?";
		TinhTrangHD tthd = jdbcTemplate.queryForObject(sql, new RowMapper<TinhTrangHD>() {
			public TinhTrangHD mapRow(ResultSet rs, int rowNum) throws SQLException {
                TinhTrangHD tt = new TinhTrangHD();
                tt.setIdTinhTrangHD(rs.getInt("idTinhTrangHD"));
				tt.setTenTinhTrang(rs.getString("TenTinhTrang"));
                return tt;
            }
		}, id);
		return tthd;
	}
	
	public String layTenTinhTrang(int id) {
		String sql = "SELECT TenTinhTrang FROM tinhtranghd where idTinhTrangHD = ?";
		String tenTT = jdbcTemplate.queryForObject(sql, String.class, id);
		return tenTT;
	}
	
	public int layMaTinhTrangByID(int idhoadon) {
		String sql = "SELECT idTinhTrangHD FROM hoadon where idHoaDon = ?";
		int maTT = jdbcTemplate.queryForObject(sql, Integer.class, idhoadon);
		return maTT;
	}
}
