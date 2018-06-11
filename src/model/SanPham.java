package model;

public class SanPham {
  private int id;
  private String ten;
  private String hang;
  private String loai;
  private int soluong;
  private String label;
  private double gia;
  private String mota;
  public SanPham() {
	super();
  }
  public SanPham(int id, String ten, String hang, String loai, int soluong,
		String label,double gia,String mota) {
	this.id = id;
	this.ten = ten;
	this.hang = hang;
	this.loai = loai;
	this.soluong = soluong;
	this.label = label;
	this.gia = gia;
	this.mota = mota;
}
  public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getTen() {
	return ten;
}
public void setTen(String ten) {
	this.ten = ten;
}
public String getHang() {
	return hang;
}
public void setHang(String hang) {
	this.hang = hang;
}
public String getLoai() {
	return loai;
}
public void setLoai(String loai) {
	this.loai = loai;
}
public int getSoluong() {
	return soluong;
}
public void setSoluong(int soluong) {
	this.soluong = soluong;
}
public String getLabel() {
	return label;
}
public void setLabel(String label) {
	this.label = label;
}
public double getGia() {
	return gia;
}
public void setGia(double gia) {
	this.gia = gia;
}
public String getMota() {
	return mota;
}
public void setMota(String mota) {
	this.mota = mota;
}
}
