package com.ksh.cafeTaste.menu.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ksh.cafeTaste.menu.dao.menuDAO;
import com.ksh.cafeTaste.menu.dto.menuDTO;
import com.ksh.cafeTaste.menu.dto.ratingDTO;
import com.ksh.cafeTaste.menu.service.menuService;

@Service
public class menuServiceImpl implements menuService{

	@Autowired
	private menuDAO dao;
	
	@Override
	public List<HashMap> getMenuList() {
		return dao.getMenuList();
	}

	@Override
	public List<menuDTO> getMenuDtlList(String id) {
		return dao.getMenuDtlList(id);
	}

	@Override
	public void regRating(ratingDTO reqDto) {
		dao.regRating(reqDto);
	}


}
