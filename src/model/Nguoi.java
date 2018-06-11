package model;

public class Nguoi {
  protected int id;
  protected String hoten;
  protected String username;
  protected String password;
  public Nguoi() {
}
  public Nguoi(int id, String hoten, String username, String password) {
	this.id = id;
	this.hoten = hoten;
	this.username = username;
	this.password = password;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getHoten() {
	return hoten;
}
public void setHoten(String hoten) {
	this.hoten = hoten;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
  
}
