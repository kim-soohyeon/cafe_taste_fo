package com.ksh.cafeTaste.user.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ksh.cafeTaste.user.dao.UserDAO;
import com.ksh.cafeTaste.user.dto.UserVO;
import com.ksh.cafeTaste.user.service.UserService;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDAO dao;
	
	@Override
	public void register(UserVO vo) {
		dao.register(vo);
	}

	@Override
	public UserVO login(UserVO vo) {
		return dao.login(vo);
	}


}
