package com.zr.beans;
/**
 * �˵���
 * @author Administrator
 *
 */
public class Bill {

	private int bill_id;//�˵�id
	private Card card;//���ÿ�
	private String start_time;//������
	private String end_time;//��󻹿�����
	private double repay;//������
	
	public int getBill_id() {
		return bill_id;
	}
	public void setBill_id(int bill_id) {
		this.bill_id = bill_id;
	}
	public Card getCard() {
		return card;
	}
	public void setCard(Card card) {
		this.card = card;
	}
	public String getStart_time() {
		return start_time;
	}
	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}
	public String getEnd_time() {
		return end_time;
	}
	public void setEnd_time(String end_time) {
		this.end_time = end_time;
	}
	public double getRepay() {
		return repay;
	}
	public void setRepay(double repay) {
		this.repay = repay;
	}
	@Override
	public String toString() {
		return "Bill [bill_id=" + bill_id + ", card=" + card + ", start_time=" + start_time + ", end_time=" + end_time
				+ ", repay=" + repay + "]";
	}
	
	
}
