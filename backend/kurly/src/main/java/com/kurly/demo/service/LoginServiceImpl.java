package com.kurly.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kurly.demo.dto.TB_CM_EMP;
import com.kurly.demo.mapper.LoginMapper;

@Service
public class LoginServiceImpl implements LoginService{
	
	@Autowired
	LoginMapper loginMapper;

	@Override
	public TB_CM_EMP checkID(TB_CM_EMP dto) {
		return loginMapper.checkID(dto);
	}

	@Override
	public int insertUser(TB_CM_EMP dto) {
		return loginMapper.insertUser(dto);
	}

	@Override
	public int idChk(String user_Id) {
		return loginMapper.idChk(user_Id);
	}

}
