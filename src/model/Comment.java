package model;

import java.util.Date;

public class Comment {
  private int id;
  private String desc;
  private Date date;
  private int id_item;
  public Comment() {
	super();
  }
  public Comment(int id, String desc, Date date, int id_item) {
	super();
	this.id = id;
	this.desc = desc;
	this.date = date;
	this.id_item = id_item;
  }
  public int getId() {
	return id;
}
  public void setId(int id) {
	this.id = id;
}
  public String getDesc() {
	return desc;
}
  public void setDesc(String desc) {
	this.desc = desc;
}
  public Date getDate() {
	return date;
}
  public void setDate(Date date) {
	this.date = date;
}
  public int getId_item() {
	return id_item;
}
  public void setId_item(int id_item) {
	this.id_item = id_item;
}

  
}
