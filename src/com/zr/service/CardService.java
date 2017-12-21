package com.zr.service;

import java.util.List;
import java.util.Map;

import com.zr.beans.Bill;
import com.zr.beans.Card;
import com.zr.beans.KeHu;
import com.zr.beans.Pos;

public interface CardService {
	/**
	 * 全查信用卡信息
	 * @return
	 */
	public List<Card> findAllCard(Map<String, Integer> map);
	/**
	 * 全查信用卡信息总记录数
	 * @return
	 */
	public int findAllCardCount();
	/**
	 * 禁用信用卡
	 * @param card
	 * @return
	 */
	public boolean jinyong(Card card);
	/**
	 * 根据用户名查找信用卡
	 * @param card
	 * @return
	 */
	public List<KeHu> findAllCardByKeHu_name1(KeHu card);
	
	/**
	 * 更新剩余额度
	 * @param card
	 * @return
	 */
	public boolean updateCard_remainder(Card card);
	
	/**
	 * 查询还款日期
	 * @param bill
	 * @return
	 */
	public Bill findBillDate(Bill bill);
	
	/**
	 * 还款操作（增加剩余额度和积分）
	 * @param card
	 * @return
	 */
	public Bill huankuan(Bill bill);
	
	/**
	 * 还款操作在消费记录表的记录
	 * @param pos
	 * @return
	 */
	public Pos xiaofei(Pos pos);
	
}
