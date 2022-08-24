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
import com.kurly.demo.dto.TB_LO_LOCATION;
import com.kurly.demo.dto.TB_LO_STOCK;
import com.kurly.demo.service.MapService;

@Controller
@RequestMapping("/map")
public class MapController {
	
	@Autowired
	MapService MapService;

	@PostMapping(value="/mapsearch1")
	@ResponseBody
	public String getLocationListSearch1(TB_LO_LOCATION dto) throws JsonProcessingException {
		System.out.println("적치맵 조회");
		
		//자바에서 JSON 객체로 변환해주는 라이브러리
		//1. jackson.Objectmapper (우리가 사용할 것)
		//2. JsonView
		ObjectMapper mapper = new ObjectMapper();
		HashMap<String, Object> hashMap = new HashMap<String, Object>();
		// System.out.println("searchKeyword====" + dto.getSearchKeyword());
		
		//Null check
		/* */
		
		List<TB_LO_LOCATION> MapList = MapService.getMapList1(dto);
		hashMap.put("MapList", MapList);
		
		String json = mapper.writerWithDefaultPrettyPrinter().writeValueAsString(hashMap);
		System.out.println("json String =============================================" + json);
		
		return json;
	}
	
	@PostMapping(value="/mapsearch2")
	@ResponseBody
	public String getLocationListSearch2(TB_LO_LOCATION dto) throws JsonProcessingException {
		System.out.println("적치맵 조회2");
		
		//자바에서 JSON 객체로 변환해주는 라이브러리
		//1. jackson.Objectmapper (우리가 사용할 것)
		//2. JsonView
		ObjectMapper mapper = new ObjectMapper();
		HashMap<String, Object> hashMap = new HashMap<String, Object>();
		// System.out.println("searchKeyword====" + dto.getSearchKeyword());
		
		//Null check
		/* */
		
		List<TB_LO_LOCATION> MapList2 = MapService.getMapList2(dto);
		hashMap.put("MapList2", MapList2);
		
		String json = mapper.writerWithDefaultPrettyPrinter().writeValueAsString(hashMap);
		System.out.println("json String =============================================" + json);
		
		return json;
	}
	
	@PostMapping(value="/mapsearch3")
	@ResponseBody
	public String getStockListSearch(TB_LO_STOCK dto) throws JsonProcessingException {
		System.out.println("STOCK 조회");
		
		//자바에서 JSON 객체로 변환해주는 라이브러리
		//1. jackson.Objectmapper (우리가 사용할 것)
		//2. JsonView
		ObjectMapper mapper = new ObjectMapper();
		HashMap<String, Object> hashMap = new HashMap<String, Object>();
		// System.out.println("searchKeyword====" + dto.getSearchKeyword());
		
		//Null check
		/* */
		
		List<TB_LO_STOCK> StkList = MapService.getMapList3(dto);
		hashMap.put("StkList", StkList);
		
		String json = mapper.writerWithDefaultPrettyPrinter().writeValueAsString(hashMap);
		System.out.println("json String =============================================" + json);
		
		return json;
	}


}
