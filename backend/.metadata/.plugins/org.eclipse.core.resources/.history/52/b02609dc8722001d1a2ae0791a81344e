package com.kurly.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kurly.demo.dto.TB_LO_DEVICE;
import com.kurly.demo.dto.TB_LO_WORK;
import com.kurly.demo.mapper.APIMapper;

@Service
public class APIServiceImpl implements APIService{

	@Autowired
	APIMapper apiMapper;

	@Override
	public TB_LO_DEVICE selectDEV(String DEV_ID) {
		return apiMapper.selectDEV(DEV_ID);
	}

	@Override
	public String selectUSE_ID(String DEV_ID) {
		return apiMapper.selectUSE_ID(DEV_ID);
	}

	@Override
	public TB_LO_WORK selectWork(String EMP_ID) {
		return apiMapper.selectWork(EMP_ID);
	}
	
}
