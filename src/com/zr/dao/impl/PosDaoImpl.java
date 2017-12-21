package com.zr.dao.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.zr.beans.Pos;
import com.zr.dao.PosDao;

public class PosDaoImpl implements PosDao{
	private SqlSessionFactory sf;
	

	public SqlSessionFactory getSf() {
		return sf;
	}


	public void setSf(SqlSessionFactory sf) {
		this.sf = sf;
	}

	public static final String mappingname = "com.zr.dao.PosDao.";
	@Override
	public List<Pos> findAllPosInfo(Map<String, Integer> map) {
		SqlSession session = sf.openSession();
		List<Pos> pos = session.selectList(mappingname+"findAllPosInfo",map);
		session.close();
		return pos;
	}


	@Override
	public List<Pos> findAllPosInfoByKeHu_name(Pos pos) {
		SqlSession session = sf.openSession();
		List<Pos> pos1 = session.selectList(mappingname+"findAllPosInfoByKeHu_name",pos);
		session.close();
		return pos1;
	}


	@Override
	public int findAllPosInfoCount() {
		SqlSession session = sf.openSession();
		int ret = session.selectOne(mappingname+"findAllPosInfoCount");
		session.close();
		return ret;
	}


	@Override
	public List<Pos> find(Pos pos) {
		SqlSession session = sf.openSession();
		List<Pos> pos1 = session.selectList(mappingname+"find",pos);
		session.close();
		return pos1;
	}


	@Override
	public boolean insertPosInfo(Pos pos) {
		SqlSession session = sf.openSession();
		int ret = session.insert(mappingname+"insertPosInfo", pos);
		session.commit();
		session.close();
		return ret>0?true:false;
	}


}
