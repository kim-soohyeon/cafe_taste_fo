package com.ksh.cafeTaste.menu.dto;

import lombok.Data;

@Data
public class ratingDTO {
	
	private String menuId;
	private String userId;
	private String rating;
	private Integer count; 
}
