package vo;

import java.util.ArrayList;

public class TalentOptionDataType {
	int product_num, op_num;
	ArrayList<Integer> op_price;
	ArrayList<Integer> op_date;
	ArrayList<String> op_title;
	ArrayList<String> op_descript;
	
	public int getProduct_num() {
		return product_num;
	}
	public void setProduct_num(int product_num) {
		this.product_num = product_num;
	}
	public int getOp_num() {
		return op_num;
	}
	public void setOp_num(int op_num) {
		this.op_num = op_num;
	}
	public ArrayList<Integer> getOp_date() {
		return op_date;
	}
	public void setOp_date(ArrayList<Integer> op_date2) {
		this.op_date = op_date2;
	}
	public ArrayList<Integer> getOp_price() {
		return op_price;
	}
	public void setOp_price(ArrayList<Integer> op_price2) {
		this.op_price = op_price2;
	}
	public ArrayList<String> getOp_title() {
		return op_title;
	}
	public void setOp_title(ArrayList<String> op_title2) {
		this.op_title = op_title2;
	}
	public ArrayList<String> getOp_descript() {
		return op_descript;
	}
	public void setOp_descript(ArrayList<String> op_descript2) {
		this.op_descript = op_descript2;
	}
	
}
