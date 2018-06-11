package dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.NhanVien;
import ultil.DataHelper;

public class NhanVienDao {
	public NhanVien Login(String email, String password) throws ClassNotFoundException, SQLException {
		Connection con = DataHelper.connect();
		String sql = "select * from NhanVien where Username=? and Password=?";
		PreparedStatement prepare = con.prepareStatement(sql);
		prepare.setString(1, email);
		prepare.setString(2, password);
		ResultSet resul = prepare.executeQuery();
		if (resul.next()) {
			NhanVien nv = new NhanVien(resul.getInt(1),resul.getString(2),resul.getString(3),resul.getString(4),resul.getString(5));
			return nv;
		}
		else
		{
			return null;
		}
	}
}
