package com.ksh.cafeTaste.menu.dao;

import java.util.HashMap;
import java.util.List;

import com.ksh.cafeTaste.menu.dto.menuDTO;

public interface menuDAO {

	public List<HashMap> getMenuList();

	public List<menuDTO> getMenuDtlList(String id);

}
