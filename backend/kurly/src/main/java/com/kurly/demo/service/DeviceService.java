package com.kurly.demo.service;

import java.util.List;

import com.kurly.demo.dto.TB_LO_DEVICE;
import com.kurly.demo.dto.TB_LO_USING;

public interface DeviceService {
	public List<TB_LO_DEVICE> selectAll();
	public List<TB_LO_USING> selectHist(String DEV_ID);
	public TB_LO_USING selectInUse(String EMP_ID);
	public int updateStatus(TB_LO_DEVICE dto);
	public int returnDevice(TB_LO_USING dto);
	public int insertHist(TB_LO_USING dto);

}
