package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import ultil.DataHelper;
import model.SanPham;

public class SanPhamDao {
  public List<SanPham> getAllItem() throws ClassNotFoundException, SQLException{
	  List<SanPham> li = new ArrayList<SanPham>();
	  Connection con = DataHelper.connect();
	  String sql = "SELECT * FROM SanPham";
	  PreparedStatement ps = con.prepareStatement(sql);
	  ResultSet rs = ps.executeQuery();
	  while (rs.next()) {
		  li.add(new SanPham(rs.getInt(1),rs.getString(2),rs.getString(3),
				  rs.getString(4),rs.getInt(5),rs.getString(6),rs.getDouble(7),rs.getString(8)));
	  }
	  return li;
  }
  public boolean addItem(SanPham sp){
	  Connection con;;
	  String sql = "INSERT INTO SanPham VALUES(?,?,?,?,?,?,?,?)";
	  try{
		  con = DataHelper.connect();
		  PreparedStatement ps = con.prepareStatement(sql);
		  ps.setInt(1,sp.getId());
		  ps.setString(2,sp.getTen());
		  ps.setString(3, sp.getHang());
		  ps.setString(4, sp.getLoai());
		  ps.setInt(5, sp.getSoluong());
		  ps.setString(6, sp.getLabel());
		  ps.setDouble(7, sp.getGia());
		  ps.setString(8, sp.getMota());
		  ps.executeUpdate();
		  return true; 
	  } catch (Exception ex) {
		  ex.printStackTrace();
		  return false;
	  }
  }
  public SanPham getItemByName(int id) {
	  SanPham sp = new SanPham();
	  Connection con;
	  try {
		  con = DataHelper.connect();
		  String sql = "SELECT * FROM SanPham WHERE ID = ?";
		  PreparedStatement ps = con.prepareStatement(sql);
		  ps.setInt(1,id);
		  ResultSet rs = ps.executeQuery();
		  if (rs.next()) {
			  sp = new SanPham(rs.getInt(1),rs.getString(2),rs.getString(3),
					  rs.getString(4),rs.getInt(5),rs.getString(6),rs.getDouble(7),rs.getString(8));
		  } else {
			  return null;
		  }
		  return sp;
	  } catch (Exception ex) {
		  ex.printStackTrace();
		  return null;
	  }
  }
}
