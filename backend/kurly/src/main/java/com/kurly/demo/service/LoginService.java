package com.kurly.demo.service;

import com.kurly.demo.dto.TB_CM_EMP;

public interface LoginService {
	public TB_CM_EMP checkID(TB_CM_EMP dto);
	public int insertUser(TB_CM_EMP dto);
	public int idChk(String user_Id);
}
