package com.zr.beans;

import java.util.Date;
import java.util.List;

/**
 * Created by zr on 2017/10/16.
 * 客户基本信息表
 */
public class KeHu {

    private int kehu_id;//客户id
    private String kehu_name;//客户名
    private String kehu_sex;//性别
    private String kehu_number;//身份证号
    private Date kehu_birthday;//出生日期
    private String kehu_native;//籍贯
    private String kehu_phone;//手机号
    private String kehu_family;//家庭住址
	private List<Card> cards;//为了显示信用卡的卡号才创建的
	private Card card;
	public int getKehu_id() {
		return kehu_id;
	}
	public void setKehu_id(int kehu_id) {
		this.kehu_id = kehu_id;
	}
	public String getKehu_name() {
		return kehu_name;
	}
	public void setKehu_name(String kehu_name) {
		this.kehu_name = kehu_name;
	}
	public String getKehu_sex() {
		return kehu_sex;
	}
	public void setKehu_sex(String kehu_sex) {
		this.kehu_sex = kehu_sex;
	}
	public String getKehu_number() {
		return kehu_number;
	}
	public void setKehu_number(String kehu_number) {
		this.kehu_number = kehu_number;
	}
	public Date getKehu_birthday() {
		return kehu_birthday;
	}
	public void setKehu_birthday(Date kehu_birthday) {
		this.kehu_birthday = kehu_birthday;
	}
	public String getKehu_native() {
		return kehu_native;
	}
	public void setKehu_native(String kehu_native) {
		this.kehu_native = kehu_native;
	}
	public String getKehu_phone() {
		return kehu_phone;
	}
	public void setKehu_phone(String kehu_phone) {
		this.kehu_phone = kehu_phone;
	}
	public String getKehu_family() {
		return kehu_family;
	}
	public void setKehu_family(String kehu_family) {
		this.kehu_family = kehu_family;
	}
	public List<Card> getCards() {
		return cards;
	}
	public void setCards(List<Card> cards) {
		this.cards = cards;
	}
	public Card getCard() {
		return card;
	}
	public void setCard(Card card) {
		this.card = card;
	}
	@Override
	public String toString() {
		return "KeHu [kehu_id=" + kehu_id + ", kehu_name=" + kehu_name + ", kehu_sex=" + kehu_sex + ", kehu_number="
				+ kehu_number + ", kehu_birthday=" + kehu_birthday + ", kehu_native=" + kehu_native + ", kehu_phone="
				+ kehu_phone + ", kehu_family=" + kehu_family + ", cards=" + cards + ", card=" + card + "]";
	}
	
}