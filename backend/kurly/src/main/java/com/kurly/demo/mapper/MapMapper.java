package com.kurly.demo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.kurly.demo.dto.TB_LO_LOCATION;
import com.kurly.demo.dto.TB_LO_STOCK;

@Mapper
public interface MapMapper {

	@Select("   SELECT CONCAT(LOC_G1,LOC_G2,LOC_G3,LOC_G4,LOC_G5) AS LEFT_LOC_ID, LOC_G1,LOC_G2,LOC_G3,LOC_G4,LOC_G5"
			+ "   FROM TB_LO_LOCATION "
			+ "  WHERE LOC_G1 = #{LOC_G1} "
			+ "    AND LOC_G2 = #{LOC_G2} "
			+ "  GROUP BY LOC_G1,LOC_G2,LOC_G3,LOC_G4,LOC_G5 ")
	public List<TB_LO_LOCATION> getMapList1(TB_LO_LOCATION dto);
	
	@Select("   SELECT LOC_ID, CONCAT(LOC_G1,LOC_G2,LOC_G3,LOC_G4,LOC_G5) AS LEFT_LOC_ID, LOC_G1,LOC_G2,LOC_G3,LOC_G4,LOC_G5,LOC_G6,LOC_G7 "
			+ "   FROM TB_LO_LOCATION "
			+ "  WHERE LOC_G1 = #{LOC_G1} "
			+ "    AND LOC_G2 = #{LOC_G2} "
			+ "    AND LOC_G3 = #{LOC_G3} "
			+ "    AND LOC_G4 = #{LOC_G4} "
			+ "    AND LOC_G5 = #{LOC_G5} "
			+ "  ORDER BY LOC_G6 ASC, LOC_G7 ASC ")
	public List<TB_LO_LOCATION> getMapList2(TB_LO_LOCATION dto);
	
	@Select(" SELECT LS.PROD_NM "
			+ "     , COUNT(LS.PROD_NM) AS CNT_PROD "
			+ "     , MAX(LS.PROD_NM) AS REPRESENT_PROD_NM "
			+ "     , LS.WRK_ID "
			+ "     , LS.LOC_STAT "
			+ "  FROM "
			+ "( "
			+ "		SELECT S.STK_ID "
			+ "		     , (SELECT PROD_NM FROM TB_LO_PRODUCT WHERE PROD_ID = S.PROD_ID) AS PROD_NM "
			+ "		     , \"\" AS WRK_ID "
			+ "		     , L.LOC_STAT "
			+ "		  FROM TB_LO_STOCK S "
			+ "		     , TB_LO_LOCATION L "
			+ "		 WHERE 1=1 "
			+ "		   AND S.LOC_ID = L.LOC_ID "
			+ "		   AND S.STK_ID IS NOT NULL "
			+ "		   AND S.LOC_ID = #{LOC_ID} "
			+ ") LS "
			+ "GROUP BY LS.PROD_NM "
			+ "LIMIT 1 ")
	public List<TB_LO_STOCK> getMapList3(TB_LO_STOCK dto);
	
}