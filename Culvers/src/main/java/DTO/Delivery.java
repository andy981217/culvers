package DTO;

public class Delivery {
	int order_no;
	int custno;
	String menu1;
	String menu2;
	String menu3;
	String address;
	String req;
	
	public int getOrder_no() {
		return order_no;
	}
	public void setOrder_no(int order_no) {
		this.order_no = order_no;
	}
	public int getCustno() {
		return custno;
	}
	public void setCustno(int custno) {
		this.custno = custno;
	}

	public String getMenu1() {
		return menu1;
	}
	public void setMenu1(String menu1) {
		this.menu1 = menu1;
	}
	public String getMenu2() {
		return menu2;
	}
	public void setMenu2(String menu2) {
		this.menu2 = menu2;
	}
	public String getMenu3() {
		return menu3;
	}
	public void setMenu3(String menu3) {
		this.menu3 = menu3;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getReq() {
		return req;
	}
	public void setReq(String req) {
		this.req = req;
	}
	
	
}
