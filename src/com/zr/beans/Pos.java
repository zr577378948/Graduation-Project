package com.zr.beans;

import java.sql.Date;

import org.springframework.format.annotation.DateTimeFormat;
/**
 * 客户pos机消费记录表
 * @author Administrator
 *
 */
public class Pos {
	private int pos_id;
	private int pos_number;
	private String custom_type;
	private double pay_num;
	/*@DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")*/
	private String pay_time;
	private KeHu kehu;
	public int getPos_id() {
		return pos_id;
	}
	public void setPos_id(int pos_id) {
		this.pos_id = pos_id;
	}
	public int getPos_number() {
		return pos_number;
	}
	public void setPos_number(int pos_number) {
		this.pos_number = pos_number;
	}
	public String getCustom_type() {
		return custom_type;
	}
	public void setCustom_type(String custom_type) {
		this.custom_type = custom_type;
	}
	public double getPay_num() {
		return pay_num;
	}
	public void setPay_num(double pay_num) {
		this.pay_num = pay_num;
	}
	/*public Date getPay_time() {
		return pay_time;
	}
	public void setPay_time(Date pay_time) {
		this.pay_time = pay_time;
	}*/
	
	public KeHu getKehu() {
		return kehu;
	}
	public String getPay_time() {
		return pay_time;
	}
	public void setPay_time(String pay_time) {
		this.pay_time = pay_time;
	}
	public void setKehu(KeHu kehu) {
		this.kehu = kehu;
	}
	@Override
	public String toString() {
		return "Pos [pos_id=" + pos_id + ", pos_number=" + pos_number + ", custom_type=" + custom_type + ", pay_num="
				+ pay_num + ", pay_time=" + pay_time + ", kehu=" + kehu + "]";
	}
	
	
}
