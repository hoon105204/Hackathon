package com.kurly.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kurly.demo.dto.TB_LO_LOCATION;
import com.kurly.demo.dto.TB_LO_STOCK;
import com.kurly.demo.mapper.MapMapper;

@Service
public class MapServiceImpl implements MapService{
	
	@Autowired
	MapMapper MapMapper;

	@Override
	public List<TB_LO_LOCATION> getMapList1(TB_LO_LOCATION dto) {
		return MapMapper.getMapList1(dto);
	}
	
	@Override
	public List<TB_LO_LOCATION> getMapList2(TB_LO_LOCATION dto) {
		return MapMapper.getMapList2(dto);
	}
	
	@Override
	public List<TB_LO_STOCK> getMapList3(TB_LO_STOCK dto) {
		return MapMapper.getMapList3(dto);
	}
}
