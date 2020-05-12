package com.ksh.cafeTaste.user.service;

import com.ksh.cafeTaste.user.dto.UserVO;

public interface UserService {

	public void register(UserVO vo);
	
	public UserVO login(UserVO vo);

}
