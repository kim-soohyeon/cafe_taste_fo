package com.ksh.cafeTaste.menu.dao;

import java.util.HashMap;
import java.util.List;

import com.ksh.cafeTaste.menu.dto.menuDTO;
import com.ksh.cafeTaste.menu.dto.ratingDTO;

public interface menuDAO {

	public List<HashMap> getMenuList();

	public List<menuDTO> getMenuDtlList(String id);

	public void regRating(ratingDTO reqDto);

	public ratingDTO getRating(ratingDTO rating);

	public void updateRating(ratingDTO reqDto);

}
