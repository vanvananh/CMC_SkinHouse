package model;

import java.util.HashMap;

public class GioHang {
  HashMap<Integer, Integer> cartitem;
  
  public GioHang() {
	super();
  }

  public GioHang(HashMap<Integer, Integer> cartitem) {
	this.cartitem = cartitem;
  }
  public void deleteitem (int id) {
	  cartitem.remove(id);
  }
  public void additem (int id,int soluong) {
	  cartitem.put(id,soluong);
  }
  public int getamount (){
	  return cartitem.size();
  }
}
