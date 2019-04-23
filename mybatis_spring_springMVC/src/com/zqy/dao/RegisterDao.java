package com.zqy.dao;

import com.zqy.entity.TUser;

/**
 * @author asus
 *	mapper接口
 */
public interface RegisterDao {
	public TUser findUser(String username);
}
