package com.ksh.cafeTaste.menu.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.ksh.cafeTaste.menu.dto.menuDTO;
import com.ksh.cafeTaste.menu.dto.ratingDTO;
import com.ksh.cafeTaste.menu.service.menuService;
import com.ksh.cafeTaste.user.dto.UserVO;

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
	public @ResponseBody String getMenuList() throws JsonGenerationException, JsonMappingException, IOException {
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
	public String menuDetail(@PathVariable String id, Model model, HttpServletRequest req) {
		HttpSession session = req.getSession();
		
		UserVO login = (UserVO)session.getAttribute("member");
		model.addAttribute("rating", "0");
		model.addAttribute("ajaxUrl", "/menu/rating.do");
		
//		로그인 정보가 있으면 평점 데이터 가져오기
		if(login != null) {
			ratingDTO rating = new ratingDTO();
			rating.setUserId(login.getId());
			rating.setMenuId(id);
			ratingDTO ratingData = service.getRating(rating);
			System.out.println(ratingData);
			if(ratingData.getCount() > 0) {
				model.addAttribute("rating", ratingData.getRating());
				model.addAttribute("ajaxUrl", "/menu/updateRating.do");
			}
		}
		
		List<menuDTO> menuDtl = service.getMenuDtlList(id);
        model.addAttribute("menuDtl", menuDtl);
        model.addAttribute("menuId", id);
        System.out.println(menuDtl);
		return "menu/menuDetail"; 
	}
	
//	평점 등록
	@RequestMapping(value = "/rating.do", method = RequestMethod.POST, produces = "application/json; charset=utf8") 
	public @ResponseBody String rating(ratingDTO reqDto, HttpServletRequest req) { 
		HttpSession session = req.getSession();
		UserVO login = (UserVO)session.getAttribute("member");
		JSONObject jsonObject = new JSONObject();
	     
		if(login == null) {
			jsonObject.put("status", "fail");
		    jsonObject.put("msg", "로그인 정보가 없습니다.");
		}else {
			//평점 등록
			reqDto.setUserId(login.getId());
			service.regRating(reqDto);
			jsonObject.put("status", "success");
			jsonObject.put("msg", "평점이 등록되었습니다.");
		}
		String jsonStr = jsonObject.toJSONString();
		System.out.println(jsonStr);
		return jsonStr; 
	}
	
	@RequestMapping(value = "/updateRating.do", method = RequestMethod.POST, produces = "application/json; charset=utf8") 
	public @ResponseBody String updateRating(ratingDTO reqDto, HttpServletRequest req) { 
		HttpSession session = req.getSession();
		UserVO login = (UserVO)session.getAttribute("member");
		JSONObject jsonObject = new JSONObject();
		
		reqDto.setUserId(login.getId());
		service.updateRating(reqDto);
		jsonObject.put("status", "success");
		jsonObject.put("msg", "평점 수정이 완료되었습니다.");
		
		String jsonStr = jsonObject.toJSONString();
		System.out.println(jsonStr);
		return jsonStr; 
	}

}
