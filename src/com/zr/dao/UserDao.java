package com.zr.dao;

import com.zr.beans.KeHu;
import com.zr.beans.User;

public interface UserDao {
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
