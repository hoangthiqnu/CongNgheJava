package com.cnjv.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.apache.taglibs.standard.tag.common.core.ForEachSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.cnjv.model.HoaDon;
import com.cnjv.model.Mon;
import com.cnjv.model.TinhTrangHD;
import com.cnjv.model.XuLyHoaDon;

public class XuLyHoaDonDAO {
	
	private JdbcTemplate jdbcTemplate;

	@Autowired
	public void setDataSource(DataSource dbTraSua) {
		this.jdbcTemplate = new JdbcTemplate(dbTraSua);
	}
	HoaDonDAO hdDao = new HoaDonDAO();
	ChiTietHoaDonDAO cthdDao = new ChiTietHoaDonDAO();
	MonDAO monDAO = new MonDAO();
	
	
	public List<XuLyHoaDon> layHoaDonTheoIdHoaDon(int idHoaDon) {
		String sql = "SELECT * FROM mon, chitiethd  where mon.idMon = chitiethd.idMon and chitiethd.idHoaDon =  ?";
		
		/*XuLyHoaDon HoaDon = jdbcTemplate.query(sqlString, new RowMapper<XuLyHoaDon>() {

			public XuLyHoaDon mapRow(ResultSet rs, int rowNum) throws SQLException {
				XuLyHoaDon xlhd = new XuLyHoaDon();
				xlhd.setIdHoaDon(rs.getInt("idHoaDon"));
				xlhd.setThoiGianTao(rs.getDate("ThoiGianTao"));
				xlhd.setTenKH(rs.getString("TenKH"));
				xlhd.setDiaChiGiao(rs.getString("DiaChiGiao"));
				xlhd.setGhiChu(rs.getString("GhiChu"));
				xlhd.setsDT(rs.getString("SDT"));
				xlhd.setIdTinhTrang(rs.getInt("idTinhTrangHD"));
				return xlhd;
			}
		});
		return HoaDon;
		*/
		List<XuLyHoaDon> hd = jdbcTemplate.query(sql, new RowMapper<XuLyHoaDon>() {
			public XuLyHoaDon mapRow(ResultSet rs, int rowNum) throws SQLException {
				XuLyHoaDon hoaDon = new XuLyHoaDon();
				hoaDon.setIdHoaDon(rs.getInt("idHoaDon"));
				hoaDon.setIdMon(rs.getInt("idMon"));
				hoaDon.setTenMon(rs.getString("TenMon"));
				hoaDon.setDonGia(rs.getInt("DonGiaMon"));
				hoaDon.setHinhAnh(rs.getString("HinhAnh"));
				hoaDon.setLoaiSize(rs.getString("LoaiSize"));
				hoaDon.setGhiChuMon(rs.getString("GhiChuMon"));
				hoaDon.setSoLuong(rs.getInt("SoLuong"));
				hoaDon.setDsTopping(rs.getString("DSTopping"));
				hoaDon.setThanhTien(rs.getInt("ThanhTien"));
				return hoaDon;
            }
		}, idHoaDon);
		return hd;
	}
	public int TongTienTrenMotHoaDon(int idHoaDon) {
		int tien = 0;
		String sqlString = "SELECT sum(thanhtien) FROM trasua.chitiethd where idHoaDon = ?";
		tien = jdbcTemplate.queryForObject(sqlString, Integer.class, idHoaDon);
		return tien;
	}
}
