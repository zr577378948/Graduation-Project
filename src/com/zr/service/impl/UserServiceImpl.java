package com.zr.service.impl;

import java.util.List;

import com.zr.beans.KeHu;
import com.zr.beans.User;
import com.zr.dao.UserDao;
import com.zr.service.UserService;

public class UserServiceImpl implements UserService {

	private UserDao udao;
	public void setUdao(UserDao udao) {
		this.udao = udao;
	}
	public UserDao getUdao() {
		return udao;
	}
	
	@Override
	public User findUserByName(User user) {
		return udao.findUserByName(user);
	}
	@Override
	public KeHu findKeHuByKeHu_number(KeHu kehu) {
		return udao.findKeHuByKeHu_number(kehu);
	}
   
}
