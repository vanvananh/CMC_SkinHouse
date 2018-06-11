package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import ultil.DataHelper;
import model.Comment;

public class CommentDao {
  public List<Comment> getComment(int iditem) {
	  List<Comment> com = new ArrayList<Comment>();
	  Connection con;
	  try {
		 con = DataHelper.connect();
		 String sql = "SELECT * FROM Comment WHERE id_book=?";
		 PreparedStatement ps = con.prepareStatement(sql);
		 ps.setInt(1, iditem);
		 ResultSet rs = ps.executeQuery();
		 while(rs.next()) {
			 com.add(new Comment(rs.getInt(1),rs.getString(2),rs.getDate(3),rs.getInt(4)));
		 }
		 return com;
	  } catch (Exception ex) {
		  ex.printStackTrace();
		  return null;
	  }

  }
}
