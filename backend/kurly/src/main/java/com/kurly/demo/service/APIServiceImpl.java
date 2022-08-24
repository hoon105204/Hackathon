package com.kurly.demo.service;

import java.util.List;

import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kurly.demo.dto.TB_LO_DEVICE;
import com.kurly.demo.dto.TB_LO_WORK;
import com.kurly.demo.dto.TB_LO_WORKDTL;
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

	@Override
	public List<TB_LO_WORKDTL> selectDTL(String WRK_ID) {
		return apiMapper.selectDTL(WRK_ID);
	}

	@Override
	public JSONArray selectposition(List<TB_LO_WORKDTL> arr) {
		JSONArray jsArr = new JSONArray();
		
		for(int i=0; i<arr.size(); i++) {
			TB_LO_WORKDTL tmp = arr.get(i);
			String PROD_ID = tmp.getPROD_ID();
			int DTL_NUMB = tmp.getDTL_NUMB();
			jsArr.put(i, apiMapper.selectposition(PROD_ID, DTL_NUMB));
		}		
		
		return jsArr;
	}

	@Override
	public int ongoDTL(String DTL_ID) {
		return apiMapper.ongoDTL(DTL_ID);
	}

	@Override
	public int complDTL(String DTL_ID) {
		return apiMapper.complDTL(DTL_ID);
	}

	@Override
	public int ongoWRK(String WRK_ID) {
		return apiMapper.ongoWRK(WRK_ID);
	}

	@Override
	public int complWRK(String WRK_ID) {
		return apiMapper.complWRK(WRK_ID);
	}

	@Override
	public String selectProdId(String barcode) {
		return apiMapper.selectProdId(barcode);
	}

	@Override
	public String selectSTKId(String barcode) {
		return apiMapper.selectSTKId(barcode);
	}

	@Override
	public int updateSTKOUT(String[] strArr) {
		for(int i=0; i<strArr.length; i++) {
			apiMapper.updateSTKOUT(strArr[i]);
		}
		return 0;
	}
	
}
