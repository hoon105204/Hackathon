package com.kurly.demo.controller;

import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.kurly.demo.dto.TB_CM_EMP;

@RestController
@RequestMapping(value="/api")
public class APIController {
	
	@GetMapping(value="/hello")
	public String hello() {
		return "hello";
	}
	
	@GetMapping(value="/json", produces = MediaType.APPLICATION_JSON_VALUE)
	public TB_CM_EMP json() {
		TB_CM_EMP tmp = new TB_CM_EMP();
		tmp.setEMP_ID("1234");
		tmp.setEMP_NM("콩이");
		tmp.setEMP_PW("1234");
		return tmp;
	}
	
	@PostMapping(value="/json1", produces = MediaType.APPLICATION_JSON_VALUE)
	public TB_CM_EMP json1() {
		TB_CM_EMP tmp = new TB_CM_EMP();
		tmp.setEMP_ID("1234");
		tmp.setEMP_NM("콩이");
		tmp.setEMP_PW("1234");
		return tmp;
	}

}
