package com.zr.beans;
/**
 * ÷ß∏∂±¶–≈œ¢
 * @author Administrator
 *
 */
public class Pay {
	private int pay_id;
	private int zfb_credit;
	private String zfb_pic;
	private KeHu kehu;
	public int getPay_id() {
		return pay_id;
	}
	public void setPay_id(int pay_id) {
		this.pay_id = pay_id;
	}
	public int getZfb_credit() {
		return zfb_credit;
	}
	public void setZfb_credit(int zfb_credit) {
		this.zfb_credit = zfb_credit;
	}
	public String getZfb_pic() {
		return zfb_pic;
	}
	public void setZfb_pic(String zfb_pic) {
		this.zfb_pic = zfb_pic;
	}
	public KeHu getKehu() {
		return kehu;
	}
	public void setKehu(KeHu kehu) {
		this.kehu = kehu;
	}
	@Override
	public String toString() {
		return "Pay [pay_id=" + pay_id + ", zfb_credit=" + zfb_credit + ", zfb_pic=" + zfb_pic + ", kehu=" + kehu + "]";
	}
	
	
}
