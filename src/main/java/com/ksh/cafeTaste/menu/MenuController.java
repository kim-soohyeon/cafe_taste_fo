package com.ksh.cafeTaste.menu;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/menu/*")
public class MenuController {

	//메뉴  GET
	@RequestMapping(value = "/menu", method = RequestMethod.GET) 
	public String menu() { 
		return "menu/menu"; 
	}
}
