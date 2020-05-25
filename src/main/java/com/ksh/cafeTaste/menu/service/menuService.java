package com.ksh.cafeTaste.menu.service;

import java.util.HashMap;
import java.util.List;

import com.ksh.cafeTaste.menu.dto.menuDTO;

public interface menuService {

	public List<HashMap> getMenuList();

	public List<menuDTO> getMenuDtlList(String id);

}
