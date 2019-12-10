package com.cnjv.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.cnjv.model.DMMon;
import com.cnjv.model.HoaDon;
import com.cnjv.model.TinhTrangHD;

public class HoaDonDAO {
private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public void setDataSource(DataSource dbTraSua) {
		this.jdbcTemplate = new JdbcTemplate(dbTraSua);
	}

	public List<HoaDon> getListHoaDon() {
		String sql = "select * from hoadon order by ThoiGianTao ;";
		List<HoaDon> dsHoaDon = jdbcTemplate.query(sql, new RowMapper<HoaDon>() {

			public HoaDon mapRow(ResultSet rs, int rowNum) throws SQLException {
				HoaDon hoaDon = new HoaDon();
				hoaDon.setIdHoaDon(rs.getInt("idHoaDon"));
				hoaDon.setThoiGianTao(rs.getDate("ThoiGianTao"));
				hoaDon.setTenKH(rs.getString("TenKH"));
				hoaDon.setsDT(rs.getString("SDT"));
				hoaDon.setDiaChiGiao(rs.getString("DiaChiGiao"));
				hoaDon.setGhiChu(rs.getString("GhiChu"));
				hoaDon.setTinhtranghd(getTinhTrangHDByID(rs.getInt("idTinhTrangHD")));
				return hoaDon;
			}
		});
		return dsHoaDon;
	}
	
	
	public TinhTrangHD getTinhTrangHDByID(int id) {
		String sql = "SELECT * FROM tinhtranghd where idTinhTrangHD = ?;";
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
}
