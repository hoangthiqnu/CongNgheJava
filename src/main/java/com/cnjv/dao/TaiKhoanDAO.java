package com.cnjv.dao;
import com.cnjv.model.TaiKhoan;

import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class TaiKhoanDAO {
	
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public void setDataSource(DataSource dbTraSua) {
		this.jdbcTemplate = new JdbcTemplate(dbTraSua);
	}

	public boolean kiemtraLogin(TaiKhoan tk){	
		String id = tk.getTaiKhoan();
		String pass = tk.getMatKhau();
		String sql = "select count(*) from taikhoan where idTaiKhoan = ? and MatKhau = ?";
		Integer result =  jdbcTemplate.queryForObject(sql, Integer.class,id,pass);
		if(result == 0) {
			return true; // tk ko có trong csdl
		}
		else {
			return false;
		}
	}
}
