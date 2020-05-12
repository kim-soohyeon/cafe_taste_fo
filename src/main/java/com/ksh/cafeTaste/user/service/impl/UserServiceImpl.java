package com.ksh.cafeTaste.user.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ksh.cafeTaste.menu.dao.menuDAO;
import com.ksh.cafeTaste.menu.service.menuService;
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


}
