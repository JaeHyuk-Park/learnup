package vo;

import java.util.ArrayList;

public class TalentQnaDataType {
	int product_num, qna_num;
	ArrayList<String> qna_title;
	ArrayList<String> qna_answer;
	
	public int getProduct_num() {
		return product_num;
	}
	public void setProduct_num(int product_num) {
		this.product_num = product_num;
	}
	public int getQna_num() {
		return qna_num;
	}
	public void setQna_num(int qna_num) {
		this.qna_num = qna_num;
	}
	public ArrayList<String> getQna_title() {
		return qna_title;
	}
	public void setQna_title(ArrayList<String> qna_title2) {
		this.qna_title = qna_title2;
	}
	public ArrayList<String> getQna_answer() {
		return qna_answer;
	}
	public void setQna_answer(ArrayList<String> qna_answer2) {
		this.qna_answer = qna_answer2;
	}
	
}
