package com.zr.service;

import com.zr.beans.KeHu;
import com.zr.beans.User;

public interface UserService {
	/**
     * 后台登陆
	 * @param user
	 * @return
	 */
	public User findUserByName(User user);
	
	/**
	 * 前台登录
	 * @param kehu
	 * @return
	 */
	public KeHu findKeHuByKeHu_number(KeHu kehu);
}
