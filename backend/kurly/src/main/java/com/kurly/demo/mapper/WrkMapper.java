package com.kurly.demo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.kurly.demo.dto.TB_LO_WORK;
import com.kurly.demo.dto.TB_LO_WORKDTL;

@Mapper
public interface WrkMapper {
	
	@Select(" SELECT WRK_ID, EMP_ID, WRK_STAT, WRK_PRODUCE, WRK_START, WRK_END, WRK_DUEDATE "
			+ " FROM TB_LO_WORK "
			+ " WHERE WRK_STAT LIKE #{WRK_STAT} ")
	public List<TB_LO_WORK> getWrkList(TB_LO_WORK dto);
	
	
	@Select(" SELECT DTL_ID, DTL_STAT, DTL_ID, PROD_ID, DTL_NUMB, DTL_START, DTL_END "
			+ " FROM TB_LO_WORKDTL "
			+ " WHERE DTL_STAT LIKE #{DTL_STAT} ")
	public List<TB_LO_WORKDTL> getWrkDtlList(TB_LO_WORKDTL dto);
	
}