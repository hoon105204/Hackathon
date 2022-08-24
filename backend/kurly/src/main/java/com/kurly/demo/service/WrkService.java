package com.kurly.demo.service;

import java.util.List;

import com.kurly.demo.dto.TB_LO_WORK;
import com.kurly.demo.dto.TB_LO_WORKDTL;

public interface WrkService {
	public List<TB_LO_WORK> getWrkList(TB_LO_WORK dto);
	public List<TB_LO_WORKDTL> getWrkDtlList(TB_LO_WORKDTL dto);
}
