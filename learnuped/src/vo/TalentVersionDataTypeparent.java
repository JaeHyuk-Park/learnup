package vo;

import java.util.ArrayList;

public class TalentVersionDataTypeparent {
	int product_num, vers_num, price, date, num;
	String title, descript;
	ArrayList<String> vers_title, vers_descript;
	ArrayList<Integer> vers_price, vers_date, recruit_num;

	public int getProduct_num() {
		return product_num;
	}
	public void setProduct_num(int product_num) {
		this.product_num = product_num;
	}
	public int getVers_num() {
		return vers_num;
	}
	public void setVers_num(int vers_num) {
		this.vers_num = vers_num;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getDate() {
		return date;
	}
	public void setDate(int date) {
		this.date = date;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescript() {
		return descript;
	}
	public void setDescript(String descript) {
		this.descript = descript;
	}
	public ArrayList<String> getVers_title() {
		return vers_title;
	}
	public void setVers_title(ArrayList<String> vers_title) {
		this.vers_title = vers_title;
	}
	public ArrayList<String> getVers_descript() {
		return vers_descript;
	}
	public void setVers_descript(ArrayList<String> vers_descript) {
		this.vers_descript = vers_descript;
	}
	public ArrayList<Integer> getVers_price() {
		return vers_price;
	}
	public void setVers_price(ArrayList<Integer> vers_price) {
		this.vers_price = vers_price;
	}
	public ArrayList<Integer> getVers_date() {
		return vers_date;
	}
	public void setVers_date(ArrayList<Integer> vers_date) {
		this.vers_date = vers_date;
	}
	public ArrayList<Integer> getRecruit_num() {
		return recruit_num;
	}
	public void setRecruit_num(ArrayList<Integer> recruit_num) {
		this.recruit_num = recruit_num;
	}
	
	
	
}
