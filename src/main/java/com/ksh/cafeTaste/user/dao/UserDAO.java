package com.ksh.cafeTaste.user.dao;

import com.ksh.cafeTaste.user.dto.UserVO;

public interface UserDAO {

	public void register(UserVO vo);
	
	public UserVO login(UserVO vo);
	
}
