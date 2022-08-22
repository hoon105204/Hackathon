package com.kurly.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kurly.demo.dto.TB_LO_WORK;
import com.kurly.demo.mapper.WrkMapper;

@Service
public class WrkServiceImpl implements WrkService{
	
	@Autowired
	WrkMapper WrkMapper;

	@Override
	public List<TB_LO_WORK> getWrkList(TB_LO_WORK dto) {
		return WrkMapper.getWrkList(dto);
	}

}
