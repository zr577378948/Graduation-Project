package com.zr.service.impl;

import java.util.List;
import java.util.Map;

import com.zr.beans.Bill;
import com.zr.beans.Card;
import com.zr.beans.KeHu;
import com.zr.beans.Pos;
import com.zr.dao.CardDao;
import com.zr.service.CardService;

public class CardServiceImpl implements CardService{

	private CardDao cdao;
	
	public CardDao getCdao() {
		return cdao;
	}

	public void setCdao(CardDao cdao) {
		this.cdao = cdao;
	}

	@Override
	public List<Card> findAllCard(Map<String, Integer> map) {
		return cdao.findAllCard(map);
	}

	@Override
	public boolean jinyong(Card card) {
		return cdao.jinyong(card);
	}

	@Override
	public List<KeHu> findAllCardByKeHu_name1(KeHu card) {
		return cdao.findAllCardByKeHu_name1(card);
	}

	@Override
	public int findAllCardCount() {
		return cdao.findAllCardCount();
	}

	@Override
	public boolean updateCard_remainder(Card card) {
		return cdao.updateCard_remainder(card);
	}

	@Override
	public Bill findBillDate(Bill bill) {
		return cdao.findBillDate(bill);
	}

	@Override
	public Bill huankuan(Bill bill) {
		return cdao.huankuan(bill);
	}

	@Override
	public Pos xiaofei(Pos pos) {
		return null;
	}

}
