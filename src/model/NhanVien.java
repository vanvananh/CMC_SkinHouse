package model;

public class NhanVien extends Nguoi {
  private String role;

 public NhanVien() {
	super();
}

  public NhanVien(int id, String hoten, String username, String password,String role) {
	super(id, hoten, username, password);
	this.role = role;
}

public String getRole() {
	return role;
}

public void setRole(String role) {
	this.role = role;
}

  
}
