package com.ksh.cafeTaste.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ksh.cafeTaste.user.dto.UserVO;
import com.ksh.cafeTaste.user.service.UserService;

@Controller
@RequestMapping("/user/*")
public class UserController {

	@Autowired
	private UserService service;
	
	// 회원가입 get
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void getRegister() throws Exception {
		System.out.println("get register");
	}
	
	// 회원가입 post
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String postRegister(UserVO vo) throws Exception {
		System.out.println("post register");
		service.register(vo);
		return null;
	}
}
