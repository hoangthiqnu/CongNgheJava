package com.cnjv.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.cnjv.model.HoaDon;
import com.cnjv.model.Mon;
import com.cnjv.model.TinhTrangHD;


public class MonDAO {
	private JdbcTemplate jdbcTemplate;

	@Autowired
	public void setDataSource(DataSource dbTraSua) {
		this.jdbcTemplate = new JdbcTemplate(dbTraSua);
	}

	public List<Mon> layDanhSachMonMoi() {
		String sql = "select * from mon order by idMon DESC limit 6";
		List<Mon> dsMonMoi = jdbcTemplate.query(sql, new RowMapper<Mon>() {

			public Mon mapRow(ResultSet rs, int rowNum) throws SQLException {
				Mon mon = new Mon();
				mon.setIdMon(rs.getInt("idMon"));
				mon.setIdDMMon(rs.getString("idDMMon"));
				mon.setTenMon(rs.getString("TenMon"));
				mon.setDonGiaMon(rs.getInt("DonGiaMon"));
				mon.setHinhAnh(rs.getString("HinhAnh"));
				mon.setMoTa(rs.getString("MoTa"));
				mon.setChiDa(rs.getBoolean("ChiDa"));
				return mon;
			}
		});
		return dsMonMoi;
	}
	public List<Mon> layDanhSachMonBanChay() {
		String sql = "SELECT mon.idMon,idDMMon,TenMon,DonGiaMon,HinhAnh,MoTa,ChiDa,SUM(chitiethd.SoLuong) as TongSoLuong FROM chitiethd, mon  where mon.idMon = chitiethd.idMon group by idMon order by TongSoLuong DESC LIMIT 6;";
		List<Mon> dsMonBanChay = jdbcTemplate.query(sql, new RowMapper<Mon>() {

			public Mon mapRow(ResultSet rs, int rowNum) throws SQLException {
				Mon mon = new Mon();
				mon.setIdMon(rs.getInt("idMon"));
				mon.setIdDMMon(rs.getString("idDMMon"));
				mon.setTenMon(rs.getString("TenMon"));
				mon.setDonGiaMon(rs.getInt("DonGiaMon"));
				mon.setHinhAnh(rs.getString("HinhAnh"));
				mon.setMoTa(rs.getString("MoTa"));
				mon.setChiDa(rs.getBoolean("ChiDa"));
				return mon;
			}
		});
		return dsMonBanChay;
	}
	public List<Mon> timKiemMon(String key) {
		String sql = "SELECT * FROM mon  WHERE 	TenMon LIKE '%"+key+"%'";
		List<Mon> dsMon = jdbcTemplate.query(sql, new RowMapper<Mon>() {

			public Mon mapRow(ResultSet rs, int rowNum) throws SQLException {
				Mon mon = new Mon();
				mon.setIdMon(rs.getInt("idMon"));
				mon.setIdDMMon(rs.getString("idDMMon"));
				mon.setTenMon(rs.getString("TenMon"));
				mon.setDonGiaMon(rs.getInt("DonGiaMon"));
				mon.setHinhAnh(rs.getString("HinhAnh"));
				mon.setMoTa(rs.getString("MoTa"));
				mon.setChiDa(rs.getBoolean("ChiDa"));
				return mon;
			}
		});
		return dsMon;
	}
	public List<Mon> layDanhSachMonTrenTrang(String idDMMon, int viTriBatDau, int soMonTrenTrang) {
		String sql;
		List<Mon> dsMon;
		if (idDMMon == "tatcamon")
		{
			sql = "SELECT * FROM mon LIMIT ?,?";
			dsMon = jdbcTemplate.query(sql, new RowMapper<Mon>() {

				public Mon mapRow(ResultSet rs, int rowNum) throws SQLException {
					Mon mon = new Mon();
					mon.setIdMon(rs.getInt("idMon"));
					mon.setIdDMMon(rs.getString("idDMMon"));
					mon.setTenMon(rs.getString("TenMon"));
					mon.setDonGiaMon(rs.getInt("DonGiaMon"));
					mon.setHinhAnh(rs.getString("HinhAnh"));
					mon.setMoTa(rs.getString("MoTa"));
					mon.setChiDa(rs.getBoolean("ChiDa"));
					return mon;
				}
			},viTriBatDau,soMonTrenTrang);
		}
		else
		{
			sql = "SELECT * FROM mon where idDMMon = ? LIMIT ?,?";
			dsMon = jdbcTemplate.query(sql, new RowMapper<Mon>() {

				public Mon mapRow(ResultSet rs, int rowNum) throws SQLException {
					Mon mon = new Mon();
					mon.setIdMon(rs.getInt("idMon"));
					mon.setIdDMMon(rs.getString("idDMMon"));
					mon.setTenMon(rs.getString("TenMon"));
					mon.setDonGiaMon(rs.getInt("DonGiaMon"));
					mon.setHinhAnh(rs.getString("HinhAnh"));
					mon.setMoTa(rs.getString("MoTa"));
					mon.setChiDa(rs.getBoolean("ChiDa"));
					return mon;
				}
			},idDMMon,viTriBatDau,soMonTrenTrang);

		}
		return dsMon;
	}
	public int demSoMon(String idDMMon) {
		int dem = 0;
		String sql;
		if(idDMMon == "tatcamon") {
			sql = "select count(*) from trasua.mon";
			dem = jdbcTemplate.queryForObject(sql, Integer.class);
		}
		else
		{
			sql = "select count(*) from trasua.mon where idDMMon = ?";	
			dem = jdbcTemplate.queryForObject(sql, Integer.class,idDMMon);
		}
		
		return dem;
	}
	
	public int getDonGiaByID(int id) {
		String sql = "SELECT DonGia FROM mon where idMon = ?;";
		int donGia = jdbcTemplate.queryForObject(sql, Integer.class, id);
		return donGia;
	}
	
	public int getIdDMMonByID(int id) {
		String sql = "SELECT idDMMon FROM mon where idMon = ?;";
		int idDMMon = jdbcTemplate.queryForObject(sql, Integer.class, id);
		return idDMMon;
	}
	
	 public List<Mon> getMonByIdHoaDon(int idHoaDon) {
			String sql = "SELECT * FROM mon, chitiethd  where mon.idMon = chitiethd.idMon and chitiethd.idHoaDon = ?";
			List<Mon> mon1 = jdbcTemplate.query(sql, new RowMapper<Mon>() {
				public Mon mapRow(ResultSet rs, int rowNum) throws SQLException {
					Mon mon = new Mon();
					mon.setIdMon(rs.getInt("idMon"));
					mon.setIdDMMon(rs.getString("idDMMon"));
					mon.setTenMon(rs.getString("TenMon"));
					mon.setDonGiaMon(rs.getInt("DonGiaMon"));
					mon.setHinhAnh(rs.getString("HinhAnh"));
					mon.setMoTa(rs.getString("MoTa"));
					mon.setChiDa(rs.getBoolean("ChiDa"));
					return mon;
	            }
			}, idHoaDon);
			return mon1;
		}
	 
	 public Mon layMonTheoId(int id) {
			String sql = "SELECT * FROM mon  WHERE 	idMon = ?";
			Mon mon = jdbcTemplate.queryForObject(sql, new RowMapper<Mon>() {

				public Mon mapRow(ResultSet rs, int rowNum) throws SQLException {
					Mon mon = new Mon();
					mon.setIdMon(rs.getInt("idMon"));
					mon.setIdDMMon(rs.getString("idDMMon"));
					mon.setTenMon(rs.getString("TenMon"));
					mon.setDonGiaMon(rs.getInt("DonGiaMon"));
					mon.setHinhAnh(rs.getString("HinhAnh"));
					mon.setMoTa(rs.getString("MoTa"));
					mon.setChiDa(rs.getBoolean("ChiDa"));
					return mon;
				}
			},id);
			return mon;
	 }
}
