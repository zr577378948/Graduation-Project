package com.zr.service;

import com.zr.beans.KeHu;
import com.zr.beans.User;

public interface UserService {
	/**
     * ��̨��½
	 * @param user
	 * @return
	 */
	public User findUserByName(User user);
	
	/**
	 * ǰ̨��¼
	 * @param kehu
	 * @return
	 */
	public KeHu findKeHuByKeHu_number(KeHu kehu);
}
