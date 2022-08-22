package com.kurly.demo.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.kurly.demo.service.WrkService;
import com.kurly.demo.dto.TB_LO_WORK;

@Controller
@RequestMapping("/wrk")
public class WrkController {
	
	@Autowired
	WrkService WrkService;

	@PostMapping(value="/wrksearch1")
	@ResponseBody
	public String getBoardListSearch(TB_LO_WORK dto) throws JsonProcessingException {
		System.out.println("작업 Lot 리스트 검색 처리");
		
		//자바에서 JSON 객체로 변환해주는 라이브러리
		//1. jackson.Objectmapper (우리가 사용할 것)
		//2. JsonView
		ObjectMapper mapper = new ObjectMapper();
		HashMap<String, Object> hashMap = new HashMap<String, Object>();
		// System.out.println("searchKeyword====" + dto.getSearchKeyword());
		
		//Null check
		/* */
		
		List<TB_LO_WORK> WrkList = WrkService.getWrkList(dto);
		hashMap.put("WrkList", WrkList);
		
		String json = mapper.writerWithDefaultPrettyPrinter().writeValueAsString(hashMap);
		System.out.println("json String =============================================" + json);
		
		return json;
	}

	
}
