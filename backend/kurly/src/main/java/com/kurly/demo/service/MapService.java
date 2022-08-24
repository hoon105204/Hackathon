package com.kurly.demo.service;

import java.util.List;

import com.kurly.demo.dto.TB_LO_LOCATION;
import com.kurly.demo.dto.TB_LO_STOCK;

public interface MapService {
	public List<TB_LO_LOCATION> getMapList1(TB_LO_LOCATION dto);
	public List<TB_LO_LOCATION> getMapList2(TB_LO_LOCATION dto);
	public List<TB_LO_STOCK> getMapList3(TB_LO_STOCK dto);
}
