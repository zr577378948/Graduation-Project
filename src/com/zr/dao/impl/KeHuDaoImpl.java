package com.zr.dao.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.zr.beans.Apply;
import com.zr.beans.KeHu;
import com.zr.dao.KeHuDao;

public class KeHuDaoImpl implements KeHuDao{

	private SqlSessionFactory sf;
	
	public SqlSessionFactory getSf() {
		return sf;
	}

	public void setSf(SqlSessionFactory sf) {
		this.sf = sf;
	}

	public static final String mappingname = "com.zr.dao.KeHuDao.";
	@Override
	public List<KeHu> findAllKeHu(Map<String, Integer> map) {
		SqlSession session = sf.openSession();
		List<KeHu> kehu = session.selectList(mappingname+"findAllKeHu",map);
		session.close();
		return kehu;
	}

	@Override
	public List<KeHu> findByKeHu_name(KeHu kehu) {
		SqlSession session = sf.openSession();
		List<KeHu> kehu1 = session.selectList(mappingname+"fingByKeHu_name",kehu);
		session.close();
		return kehu1;
	}
/*	@Override
	public List<KeHu> findByKeHu_name(Map<String, Object> map) {
		SqlSession session = sf.openSession();
		List<KeHu> kehu1 = session.selectList(mappingname+"fingByKeHu_name",map);
		session.close();
		return kehu1;
	}*/

	@Override
	public List<Apply> findAllApply(Map<String, Integer> map) {
		SqlSession session = sf.openSession();
		List<Apply> apply = session.selectList(mappingname+"findAllApply",map);
		session.close();
		return apply;
	}

	@Override
	public boolean insertKeHu(KeHu kehu) {
		SqlSession session = sf.openSession();
		int ret = session.insert(mappingname+"insertKeHu",kehu);
		session.commit();
		session.close();
		return ret>0?true:false;
	}
	
	@Override
	public KeHu findByKeHu_id(KeHu kehu) {
		SqlSession session = sf.openSession();
		KeHu kehu1 = session.selectOne(mappingname+"findByKeHu_id",kehu);
		System.out.println(kehu1+"kehu1");
		session.close();
		return kehu1;
	}
	
	@Override
	public boolean updateKeHu(KeHu kehu) {
		SqlSession session = sf.openSession();
		int ret = session.update(mappingname+"updateKeHu", kehu);
		session.commit();
		session.close();
		return ret>0?true:false;
	}

	@Override
	public List<Apply> findApplyByKeHu_name(Apply apply) {
		SqlSession session = sf.openSession();
		List<Apply> apply1 = session.selectList(mappingname+"findApplyByKeHu_name",apply);
		session.close();
		return apply1;
	}

	@Override
	public boolean shenpi(Apply apply) {
		SqlSession session = sf.openSession();
		int ret = session.update(mappingname+"shenpi",apply);
		session.commit();
		session.close();
		return ret>0?true:false;
	}

	@Override
	public boolean shenpino(Apply apply) {
		SqlSession session = sf.openSession();
		int ret = session.update(mappingname+"shenpino",apply);
		session.commit();
		session.close();
		return ret>0?true:false;
	}

	@Override
	public int queryAllKeHu() {
		SqlSession session = sf.openSession();
		int ret = session.selectOne(mappingname+"queryAllKeHu");
		session.close();
		return ret;
	}

	@Override
	public int queryAllKeHuByKeHu_nameCount() {
		SqlSession session = sf.openSession();
		int ret = session.selectOne(mappingname+"queryAllKeHuByKeHu_nameCount");
		session.close();
		return ret;
	}

	@Override
	public int findAllApplyCount() {
		SqlSession session = sf.openSession();
		int ret = session.selectOne(mappingname+"findAllApplyCount");
		session.close();
		return ret;
	}

	@Override
	public KeHu find_kehu_name(KeHu kehu) {
		SqlSession session = sf.openSession();
		KeHu kehu1 = session.selectOne(mappingname+"find_kehu_name",kehu);
		session.close();
		return kehu1;
	}



}
