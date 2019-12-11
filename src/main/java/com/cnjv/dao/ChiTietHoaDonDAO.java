package com.cnjv.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.cnjv.model.ChiTietHoaDon;
import com.cnjv.model.DMMon;
import com.cnjv.model.HoaDon;
import com.cnjv.model.Mon;
import com.cnjv.model.TinhTrangHD;

public class ChiTietHoaDonDAO {
private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public void setDataSource(DataSource dbTraSua) {
		this.jdbcTemplate = new JdbcTemplate(dbTraSua);
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

	 public List<ChiTietHoaDon> getListChiTietHoaDon() {
			String sql = "select * from chitiethd ;";
			List<ChiTietHoaDon> dscthd = jdbcTemplate.query(sql, new RowMapper<ChiTietHoaDon>() {

				public ChiTietHoaDon mapRow(ResultSet rs, int rowNum) throws SQLException {
					ChiTietHoaDon cthd = new ChiTietHoaDon();
					cthd.setHoaDon(getHoaDonByIDHoaDon(rs.getInt("idHoaDon")));
					cthd.setIdMon(rs.getInt("idMon")); /// edit fail
					cthd.setLoaiSize(rs.getString("LoaiSize"));
					cthd.setGhiChuMon(rs.getString("GhiChuMon"));
					cthd.setSoLuong(rs.getInt("SoLuong"));
					cthd.setToppingMon(rs.getInt("idToppingMon"));
					return cthd;
				}
			});
			return dscthd;
		}
			
	 /*
	 public Mon getMonByIDMon(int idMon) {
			String sql = "SELECT * FROM Mon where idMon = ?;";
			Mon mon1 = jdbcTemplate.queryForObject(sql, new RowMapper<Mon>() {
				public Mon mapRow(ResultSet rs, int rowNum) throws SQLException {
					Mon mon = new Mon();
					mon.setIdMon(rs.getInt("idMon"));
					mon.setIdDMMon(getDanhMucByID(rs.getInt("idDMMon")));
					mon.setTenMon(rs.getString("TenMon"));
					mon.setDonGiaMon(rs.getInt("DonGia"));
					mon.setHinhAnh(rs.getString("HinhAnh"));
					mon.setMoTa(rs.getString("MoTa"));
					mon.setChiDa(rs.getBoolean("ChiDa"));
					return mon;
	            }
			}, idMon);
			return mon1;
		}*/

	public List<ChiTietHoaDon> getChiTietHDById(int id) {
		
		String sql = "SELECT * FROM chitiethd where idHoaDon = ?;";
		List<ChiTietHoaDon> dscthd = jdbcTemplate.query(sql, new RowMapper<ChiTietHoaDon>() {

			public ChiTietHoaDon mapRow(ResultSet rs, int rowNum) throws SQLException {
				ChiTietHoaDon cthd = new ChiTietHoaDon();
				cthd.setHoaDon(getHoaDonByIDHoaDon(rs.getInt("idHoaDon")));
				cthd.setIdMon(rs.getInt("idMon")); /// edit fail
				cthd.setLoaiSize(rs.getString("LoaiSize"));
				cthd.setGhiChuMon(rs.getString("GhiChuMon"));
				cthd.setSoLuong(rs.getInt("SoLuong"));
				cthd.setToppingMon(rs.getInt("idToppingMon"));
				return cthd;
			}
		}, id);
		return dscthd;
	}
	
	public HoaDon getHoaDonByIDHoaDon(int idHoaDon) {
		String sql = "SELECT * FROM hoadon where idHoaDon = ?;";
		HoaDon hd = jdbcTemplate.queryForObject(sql, new RowMapper<HoaDon>() {
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
		}, idHoaDon);
		return hd;
	}
}
