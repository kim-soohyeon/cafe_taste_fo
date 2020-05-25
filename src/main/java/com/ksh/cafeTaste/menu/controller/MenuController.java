package com.ksh.cafeTaste.menu.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.ksh.cafeTaste.menu.dto.menuDTO;
import com.ksh.cafeTaste.menu.service.menuService;

@Controller
@RequestMapping("/menu/*")
public class MenuController {

	@Autowired
	private menuService service;
	
	//메뉴  GET
	@RequestMapping(value = "/menu", method = RequestMethod.GET) 
	public String menu() { 
		return "menu/menu"; 
	}
	
	//메뉴 리스트 조회 POST
	@RequestMapping(value = "/getMenuList.do", method = RequestMethod.POST, produces = "application/json; charset=utf8")
	public @ResponseBody String getMenuList()throws JsonGenerationException, JsonMappingException, IOException {
		List<HashMap> menuList = service.getMenuList();
		for(int i=0; i<menuList.size(); i++) {
			String type=(String) menuList.get(i).get("type");
			if(type.equals("bakery")) {
				menuList.get(i).put("type","베이커리");
			}else {
				menuList.get(i).put("type","음료");
			}
		}
		ObjectMapper mapper = new ObjectMapper();
		String json = mapper.writeValueAsString(menuList);
		System.out.println(json);
	    return json;
	}
	
	//메뉴 상세 GET
	@RequestMapping(value = "/menuDetail/{id}", method = RequestMethod.GET) 
	public String menuDetail(@PathVariable String id, Model model) { 
		System.out.println("=============menuDetail=================");
		System.out.println(id);
		List<menuDTO> menuDtl = service.getMenuDtlList(id);
        model.addAttribute("menuDtl", menuDtl);
        System.out.println(menuDtl);
		return "menu/menuDetail"; 
	}
}
