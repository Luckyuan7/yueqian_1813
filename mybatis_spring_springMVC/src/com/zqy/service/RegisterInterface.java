package com.zqy.service;

import com.zqy.entity.HandleResult;

/**
 * @author asus
 *
 * 业务层接口
 */
public interface RegisterInterface {

		public HandleResult checkUser(String username);
}
