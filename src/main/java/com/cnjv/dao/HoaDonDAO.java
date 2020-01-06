package com.cnjv.dao;

import java.util.List;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.cnjv.model.HoaDon;
import com.cnjv.model.TinhTrangHD;

public class HoaDonDAO {
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public void setDataSource(DataSource dbTraSua) {
		this.jdbcTemplate = new JdbcTemplate(dbTraSua);
	}
	
	
	public List<HoaDon> getListHoaDonByIDTinhTrang(int id) {
		String sql ="";
		if(id == 4) { // id == 4 lay tat ca cac tinh trang hoa don
			sql = "select * from hoadon order by ThoiGianTao;";
		}
		else {
			sql = "select * from hoadon where hoadon.idTinhTrangHD = "+id+" order by ThoiGianTao";
		}
		List<HoaDon> dsHoaDon = jdbcTemplate.query(sql, new RowMapper<HoaDon>() {
			public HoaDon mapRow(ResultSet rs, int rowNum) throws SQLException {
				HoaDon hoaDon = new HoaDon();
				hoaDon.setIdHoaDon(rs.getInt("idHoaDon"));
				hoaDon.setThoiGianTao(rs.getTimestamp("ThoiGianTao"));
				hoaDon.setTenKhachHang(rs.getString("TenKH"));
				hoaDon.setSoDienThoai(rs.getString("SDT"));
				hoaDon.setDiaChiGiao(rs.getString("DiaChiGiao"));
				hoaDon.setGhiChu(rs.getString("GhiChu"));
				hoaDon.setIdTinhTrangHD(rs.getInt("idTinhTrangHD"));
				return hoaDon;
			}
		});
		return dsHoaDon;
	}
	
	public HoaDon getHoaDonByIDHoaDon(int idHoaDon) {
		String sql = "SELECT * FROM hoadon where idHoaDon = ?;";
		HoaDon hd = jdbcTemplate.queryForObject(sql, new RowMapper<HoaDon>() {
			public HoaDon mapRow(ResultSet rs, int rowNum) throws SQLException {
				HoaDon hoaDon = new HoaDon();
				hoaDon.setIdHoaDon(rs.getInt("idHoaDon"));
				hoaDon.setThoiGianTao(rs.getTimestamp("ThoiGianTao"));
				hoaDon.setTenKhachHang(rs.getString("TenKH"));
				hoaDon.setSoDienThoai(rs.getString("SDT"));
				hoaDon.setDiaChiGiao(rs.getString("DiaChiGiao"));
				hoaDon.setGhiChu(rs.getString("GhiChu"));
				hoaDon.setIdTinhTrangHD(rs.getInt("idTinhTrangHD"));
				return hoaDon;
            }
		}, idHoaDon);
		return hd;
	}
	
	public int xacNhanDonHang(int id) {
		String sql = "UPDATE hoaDon SET `idTinhTrangHD` = 1 WHERE (`idHoaDon` = ?);";
		int result = jdbcTemplate.update(sql,id);
		return result;
	}
	
	public int thanhToanDonHang(int id) {
		String sql = "UPDATE hoaDon SET `idTinhTrangHD` = 2 WHERE (`idHoaDon` = ?);";
		int result = jdbcTemplate.update(sql,id);
		return result;
	}
	
	public int huyDonHang(int id) {
		String sql = "UPDATE hoaDon SET `idTinhTrangHD` = 3 WHERE (`idHoaDon` = ?);";
		int result = jdbcTemplate.update(sql,id);
		return result;
	}
	
	public int capNhatDonHang(int id, String tenkh, String sdt, String diachi, String ghiChu) {
		String sql = "UPDATE hoaDon SET `TenKH` = ? ,`SDT` = ? ,`DiaChiGiao`= ?,`GhiChu`= ? WHERE (`idHoaDon` = ?);";
		int result = jdbcTemplate.update(sql, tenkh, sdt, diachi, ghiChu, id);
		return result;
	}
	
	public void themHoaDon(HoaDon hoaDon) {
		String sql = " INSERT INTO `trasua`.`hoadon` (`ThoiGianTao`, `TenKH`, `SDT`, `DiaChiGiao`, `GhiChu`, `idTinhTrangHD`) VALUES (?, ?, ?, ?, ?, ?)";
		jdbcTemplate.update(sql, hoaDon.getThoiGianTao(), hoaDon.getTenKhachHang(), hoaDon.getSoDienThoai(), hoaDon.getDiaChiGiao(), hoaDon.getGhiChu(), hoaDon.getIdTinhTrangHD());
	}
	
	public int layMaHoaDon() {
		String sql = "SELECT max(idHoaDon) FROM hoadon";
		int id =jdbcTemplate.queryForObject(sql, Integer.class);
		return id;
	}

}
