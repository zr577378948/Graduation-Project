package com.zr.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.zr.beans.KeHu;
import com.zr.beans.User;
import com.zr.dao.UserDao;

public class UserDaoImpl implements UserDao{
//注入sqlSessionFactory
	private SqlSessionFactory sf;
	
	public SqlSessionFactory getSf() {
		return sf;
	}

	public void setSf(SqlSessionFactory sf) {
		this.sf = sf;
	}

	public static final String mappingname = "com.zr.dao.UserDao.";
	
	/**
	 * 后台登陆
	 */
	@Override
	public User findUserByName(User user) {
		SqlSession session = sf.openSession();
		User user1 = session.selectOne(mappingname+"findUserByName",user);
		session.close();
		return user1;
	}

	/**
	 * 前台登陆
	 */
	@Override
	public KeHu findKeHuByKeHu_number(KeHu kehu) {
		SqlSession session = sf.openSession();
		KeHu kehu1 = session.selectOne(mappingname+"findKeHuByKeHu_number",kehu);
		session.close();
		return kehu1;
	}

}
