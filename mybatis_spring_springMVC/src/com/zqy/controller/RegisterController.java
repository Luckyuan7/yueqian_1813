package com.zqy.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zqy.entity.HandleResult;
import com.zqy.service.RegisterInterface;

@Controller
@RequestMapping("/register")
public class RegisterController {
	
	@Autowired
//  @Qualifier("registerInterfaceImpl")
	RegisterInterface service;
	
	//获取用户名，并调用模型层，查询该用户是否注册
	@RequestMapping("/checkUser.do")
	@ResponseBody//将结果以json格式返回给前端
	public HandleResult checkUserName(String username) {
		System.out.println("用户名:" + username);
		
		//调用模型层 service层
		HandleResult result = service.checkUser(username);
		
		return result;
		
	}
}
