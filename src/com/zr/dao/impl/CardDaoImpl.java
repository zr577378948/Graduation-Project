package com.zr.dao.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.zr.beans.Apply;
import com.zr.beans.Bill;
import com.zr.beans.Card;
import com.zr.beans.KeHu;
import com.zr.beans.Pos;
import com.zr.dao.CardDao;

public class CardDaoImpl implements CardDao{

	private SqlSessionFactory sf;
	
	public SqlSessionFactory getSf() {
		return sf;
	}

	public void setSf(SqlSessionFactory sf) {
		this.sf = sf;
	}

	public static final String mappingname = "com.zr.dao.CardDao.";
	@Override
	public List<Card> findAllCard(Map<String, Integer> map) {
		SqlSession session = sf.openSession();
		List<Card> card = session.selectList(mappingname+"findAllCard",map);
		session.commit();
		session.close();
		return card;
	}

	@Override
	public boolean jinyong(Card card) {
		SqlSession session = sf.openSession();
		int ret = session.update(mappingname+"jinyong",card);
		session.commit();
		session.close();
		return ret>0?true:false;
	}

	@Override
	public List<KeHu> findAllCardByKeHu_name1(KeHu card) {
		SqlSession session = sf.openSession();
		List<KeHu> card1 = session.selectList(mappingname+"findAllCardByKeHu_name1",card);
		session.close();
		return card1;
	}

	@Override
	public int findAllCardCount() {
		SqlSession session = sf.openSession();
		int ret = session.selectOne(mappingname+"findAllCardCount");
		session.close();
		return ret;
	}

	@Override
	public boolean updateCard_remainder(Card card) {
		SqlSession session = sf.openSession();
		int ret  = session.update(mappingname+"updateCard_remainder",card);
		session.commit();
		session.close();
		return ret>0?true:false;
	}
	
	/**
	 * <!-- 通过客户名字查询到客户id-->
	 * @param apply
	 * @return
	 */
	/*public int findKeHu_id(){
		SqlSession session = sf.openSession();
		KeHu kehu  = session.selectOne(mappingname+"findKeHu_id");
		System.out.println("客户id:"+kehu.getKehu_id());
		session.close();
		return kehu.getKehu_id();
	}*/
	/**
	 * 	<!-- 通过客户id查询到信用卡信息（card_id） -->
	 * @param apply
	 * @return
	 */
/*	public int findCard_id(Apply apply,KeHu kehu) {
		SqlSession session = sf.openSession();
		kehu.setKehu_id(findKeHu_id());
		Apply apply1  = session.selectOne(mappingname+"findCard_id",apply);
		System.out.println("信用卡信息为："+apply1.getKehu().getCard().getCard_id());
		session.close();
		return apply1.getKehu().getCard().getCard_id();
	}*/

	@Override
	public Bill findBillDate(Bill bill) {
		SqlSession session = sf.openSession();
		Bill bill1  = session.selectOne(mappingname+"findBillDate",bill);
/*		System.out.println("账单"+bill1.getStart_time());*/
		return bill1;
	}

	@Override
	public Bill huankuan(Bill bill){
		SqlSession session = sf.openSession();
		Bill bill1  = session.selectOne(mappingname+"huankuan",bill);
/*		System.out.println("剩余额度"+bill1.getCard().getCard_remainder());*/
		return bill1;
	}

	@Override
	public Pos xiaofei(Pos pos) {
		
		return null;
	}



}
