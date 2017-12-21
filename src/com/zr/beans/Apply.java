package com.zr.beans;

import java.util.Date;
/**
 * 客户申请信息表
 * @author zr
 *
 */
public class Apply {
	private int apply_id;
	private double apply_salary;
	private String work_name;
	private String workplace;
	private String apply_time;
	private String apply_status;
	private KeHu kehu;
	private Pay pay;
	public int getApply_id() {
		return apply_id;
	}
	public void setApply_id(int apply_id) {
		this.apply_id = apply_id;
	}
	public double getApply_salary() {
		return apply_salary;
	}
	public void setApply_salary(double apply_salary) {
		this.apply_salary = apply_salary;
	}
	public String getWork_name() {
		return work_name;
	}
	public void setWork_name(String work_name) {
		this.work_name = work_name;
	}
	public String getWorkplace() {
		return workplace;
	}
	public void setWorkplace(String workplace) {
		this.workplace = workplace;
	}
	public String getApply_status() {
		return apply_status;
	}
	public void setApply_status(String apply_status) {
		this.apply_status = apply_status;
	}
	public KeHu getKehu() {
		return kehu;
	}
	public void setKehu(KeHu kehu) {
		this.kehu = kehu;
	}
	public Pay getPay() {
		return pay;
	}
	public void setPay(Pay pay) {
		this.pay = pay;
	}
	public String getApply_time() {
		return apply_time;
	}
	public void setApply_time(String apply_time) {
		this.apply_time = apply_time;
	}
	
	@Override
	public String toString() {
		return "Apply [apply_id=" + apply_id + ", apply_salary=" + apply_salary + ", work_name=" + work_name
				+ ", workplace=" + workplace + ", apply_time=" + apply_time + ", apply_status=" + apply_status
				+ ", kehu=" + kehu + ", pay=" + pay + "]";
	}
	
}
