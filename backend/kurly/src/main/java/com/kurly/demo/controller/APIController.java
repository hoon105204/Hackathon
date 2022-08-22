package com.kurly.demo.controller;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.kurly.demo.dto.APIdto;
import com.kurly.demo.dto.TB_CM_EMP;
import com.kurly.demo.dto.TB_LO_DEVICE;
import com.kurly.demo.dto.TB_LO_WORK;
import com.kurly.demo.service.APIService;

@RestController
@RequestMapping(value="/api", produces = MediaType.APPLICATION_JSON_VALUE)
public class APIController {
	
	@Autowired
	APIService apiService;
	
	@PostMapping(value="/button1")
	@ResponseBody
	public ResponseEntity<Object> button1(@RequestBody APIdto dto) {
		String id = dto.getId();
		JSONObject jsObj = new JSONObject();
		
		// 단말기 아이디로 단말기 정보 가져오기
		TB_LO_DEVICE devInfo = apiService.selectDEV(id);
		jsObj.put("TB_LO_DEVICE", devInfo);
		
		// 단말기 아이디로 가장 최근 이용자 아이디 가져오기
		String user_id = apiService.selectUSE_ID(id);
		
		// 이용자 아이디로 작업하나 가져오기
		TB_LO_WORK lo_work= apiService.selectWork(user_id);
		jsObj.put("TB_LO_WORK", lo_work);
		
		// 작업 아이디로 작업세부 리스트 가져오기
		String wrk_id = lo_work.getWRK_ID();
		
		
		
//		TB_CM_EMP tmp = new TB_CM_EMP();
//		tmp.setEMP_ID("1234");
//		tmp.setEMP_NM("콩이");
//		tmp.setEMP_PW("1234");
//		
//		JSONObject jsObj1 = new JSONObject();
//		jsObj1.put("PASS", "1234");
//		jsObj1.put("pass2", tmp);
//		JSONArray jsArr = new JSONArray();
//		jsArr.put(jsObj1.toMap());
//		jsObj.put("first", jsArr);
		return new ResponseEntity<>(jsObj.toMap(), HttpStatus.OK);
	}
	
	@PostMapping(value="/button2")
	public TB_CM_EMP button2() {
		TB_CM_EMP tmp = new TB_CM_EMP();
		tmp.setEMP_ID("1234");
		tmp.setEMP_NM("콩이");
		tmp.setEMP_PW("1234");
		return tmp;
	}
	
	@PostMapping(value="/button3")
	public TB_CM_EMP button3() {
		TB_CM_EMP tmp = new TB_CM_EMP();
		tmp.setEMP_ID("1234");
		tmp.setEMP_NM("콩이");
		tmp.setEMP_PW("1234");
		return tmp;
	}
	
	@PostMapping(value="/button4")
	public TB_CM_EMP button4() {
		TB_CM_EMP tmp = new TB_CM_EMP();
		tmp.setEMP_ID("1234");
		tmp.setEMP_NM("콩이");
		tmp.setEMP_PW("1234");
		return tmp;
	}

}
