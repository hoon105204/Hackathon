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
	public TB_CM_EMP userID(TB_CM_EMP dto) {
		return loginMapper.userID(dto);
	}

	@Override
	public int insertUser(TB_CM_EMP dto) {
		return loginMapper.insertUser(dto);
	}

}
