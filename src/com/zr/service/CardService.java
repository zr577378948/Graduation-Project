package com.zr.service;

import java.util.List;
import java.util.Map;

import com.zr.beans.Bill;
import com.zr.beans.Card;
import com.zr.beans.KeHu;
import com.zr.beans.Pos;

public interface CardService {
	/**
	 * ȫ�����ÿ���Ϣ
	 * @return
	 */
	public List<Card> findAllCard(Map<String, Integer> map);
	/**
	 * ȫ�����ÿ���Ϣ�ܼ�¼��
	 * @return
	 */
	public int findAllCardCount();
	/**
	 * �������ÿ�
	 * @param card
	 * @return
	 */
	public boolean jinyong(Card card);
	/**
	 * �����û����������ÿ�
	 * @param card
	 * @return
	 */
	public List<KeHu> findAllCardByKeHu_name1(KeHu card);
	
	/**
	 * ����ʣ����
	 * @param card
	 * @return
	 */
	public boolean updateCard_remainder(Card card);
	
	/**
	 * ��ѯ��������
	 * @param bill
	 * @return
	 */
	public Bill findBillDate(Bill bill);
	
	/**
	 * �������������ʣ���Ⱥͻ��֣�
	 * @param card
	 * @return
	 */
	public Bill huankuan(Bill bill);
	
	/**
	 * ������������Ѽ�¼��ļ�¼
	 * @param pos
	 * @return
	 */
	public Pos xiaofei(Pos pos);
	
}
