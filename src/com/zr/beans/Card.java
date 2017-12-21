package com.zr.beans;

import java.util.Date;

/**
 * Created by zr on 2017/10/16.
 * 信用卡信息表
 */
public class Card {
    private int card_id;
    private int card_number;
    private String card_type;
    private double card_quota;
    private String card_time;
    private String card_status;//信用卡状态
    private int card_password;//信用卡密码
    private double card_remainder;//剩余额度
    private int card_integral;//信用积分
    private int card_overdue;//逾期次数
    
    private double pay_num;
	public double getPay_num() {
		return pay_num;
	}
	public void setPay_num(double pay_num) {
		this.pay_num = pay_num;
	}
	public int getCard_id() {
		return card_id;
	}
	public void setCard_id(int card_id) {
		this.card_id = card_id;
	}
	public int getCard_number() {
		return card_number;
	}
	public void setCard_number(int card_number) {
		this.card_number = card_number;
	}
	public String getCard_type() {
		return card_type;
	}
	public void setCard_type(String card_type) {
		this.card_type = card_type;
	}
	public double getCard_quota() {
		return card_quota;
	}
	public void setCard_quota(double card_quota) {
		this.card_quota = card_quota;
	}
	public String getCard_time() {
		return card_time;
	}
	public void setCard_time(String card_time) {
		this.card_time = card_time;
	}
	public String getCard_status() {
		return card_status;
	}
	public void setCard_status(String card_status) {
		this.card_status = card_status;
	}
	public int getCard_password() {
		return card_password;
	}
	public void setCard_password(int card_password) {
		this.card_password = card_password;
	}
	public double getCard_remainder() {
		return card_remainder;
	}
	public void setCard_remainder(double card_remainder) {
		this.card_remainder = card_remainder;
	}
	public int getCard_integral() {
		return card_integral;
	}
	public void setCard_integral(int card_integral) {
		this.card_integral = card_integral;
	}
	public int getCard_overdue() {
		return card_overdue;
	}
	public void setCard_overdue(int card_overdue) {
		this.card_overdue = card_overdue;
	}
	@Override
	public String toString() {
		return "Card [card_id=" + card_id + ", card_number=" + card_number + ", card_type=" + card_type
				+ ", card_quota=" + card_quota + ", card_time=" + card_time + ", card_status=" + card_status
				+ ", card_password=" + card_password + ", card_remainder=" + card_remainder + ", card_integral="
				+ card_integral + ", card_overdue=" + card_overdue + "]";
	}
	
	
    }