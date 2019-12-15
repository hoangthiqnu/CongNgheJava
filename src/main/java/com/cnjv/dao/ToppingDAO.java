package com.cnjv.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.RowMapper;

import com.cnjv.model.Mon;
import com.cnjv.model.Topping;

public class ToppingDAO {
	
//	 public List<Topping> getMonByIdHoaDon(int idHoaDon) {
////			String sql = "SELECT * FROM mon, chitiethd  where mon.idMon = chitiethd.idMon and chitiethd.idHoaDon= ?;";
////			List<Topping> mon1 = jdbcTemplate.query(sql, new RowMapper<Topping>() {
////				public Topping mapRow(ResultSet rs, int rowNum) throws SQLException {
////					Topping topping = new Topping();
//////					mon.setIdMon(rs.getInt("idMon"));
//////					mon.setIdDMMon(rs.getString("idDMMon"));
//////					mon.setTenMon(rs.getString("TenMon"));
//////					mon.setDonGiaMon(rs.getInt("DonGiaMon"));
//////					mon.setHinhAnh(rs.getString("HinhAnh"));
//////					mon.setMoTa(rs.getString("MoTa"));
//////					mon.setChiDa(rs.getBoolean("ChiDa"));
//////					mon.setSoLuong(rs.getInt("SoLuong"));
////					return topping;
////	            }
////			}, idHoaDon);
////			return mon1;
////		}
//}
}
