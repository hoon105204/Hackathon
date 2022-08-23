package com.kurly.demo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.kurly.demo.dto.TB_LO_DEVICE;
import com.kurly.demo.dto.TB_LO_STOCK;
import com.kurly.demo.dto.TB_LO_WORK;
import com.kurly.demo.dto.TB_LO_WORKDTL;

@Mapper
public interface APIMapper {

	// 단말기 아이디로 단말기 정보 가져오기
	@Select(" SELECT * FROM TB_LO_DEVICE WHERE DEV_ID=#{DEV_ID} ")
	public TB_LO_DEVICE selectDEV(String DEV_ID);
	
	// 단말기 아이디로 가장 최근 이용자 아이디 가져오기
	@Select(" SELECT EMP_ID FROM TB_LO_USING WHERE DEV_ID=#{DEV_ID} ORDER BY USE_START DESC LIMIT 1 ")
	public String selectUSE_ID(String DEV_ID);
	
	// 이용자 아이디로 생성된지 오래된 작업하나 가져오기
	@Select(" SELECT * FROM TB_LO_WORK WHERE EMP_ID=#{EMP_ID} AND WRK_STAT IN (100,200) ORDER BY WRK_PRODUCE LIMIT 1 ")
	public TB_LO_WORK selectWork(String EMP_ID);
	
	// 작업아이디로 작업세부 리스트와 제품정보 가져오기
	@Select(" SELECT * FROM TB_LO_WORKDTL wrk LEFT OUTER JOIN TB_LO_PRODUCT prod ON wrk.PROD_ID = prod.PROD_ID WHERE WRK_ID=#{WRK_ID} ")
	public List<TB_LO_WORKDTL> selectDTL(String WRK_ID);
	
	// 작업세부 수량과 제품정보아이디로 입고날짜가 가장 오래된 재고품과 위치를 가져온다, 조건은 재고품 수가 작업세부 수량보다 많아야 함
	@Select(" SELECT * FROM "
			+ " (SELECT "
			+ "	s.STK_ID, s.PROD_ID, s.STK_IN, s.STK_OUT, s.STK_QR, l.LOC_ID, l.LOC_STAT, l.LOC_G1, l.LOC_G2, l.LOC_G3, l.LOC_G4, l.LOC_G5, l.LOC_G6, l.LOC_X, l.LOC_Y, l.LOC_Z "
			+ " FROM TB_LO_STOCK s LEFT OUTER JOIN TB_LO_LOCATION l ON s.LOC_ID = l.LOC_ID "
			+ " WHERE PROD_ID = #{PROD_ID} "
			+ "	 AND STK_OUT IS NULL) AS JOINTAB "
			+ " WHERE  "
			+ "	 LOC_ID IN ( "
			+ "					SELECT LOC_ID FROM  "
			+ "						(SELECT LOC_ID, COUNT(LOC_ID) AS CNT  "
			+ "						FROM  "
			+ "							(SELECT "
			+ "								s.STK_ID, s.PROD_ID, s.STK_IN, s.STK_OUT, s.STK_QR, l.LOC_ID, l.LOC_STAT, l.LOC_G1, l.LOC_G2, l.LOC_G3, l.LOC_G4, l.LOC_G5, l.LOC_G6, l.LOC_X, l.LOC_Y, l.LOC_Z "
			+ "							FROM TB_LO_STOCK s LEFT OUTER JOIN TB_LO_LOCATION l ON s.LOC_ID = l.LOC_ID "
			+ "							WHERE PROD_ID = #{PROD_ID} "
			+ "								AND STK_OUT IS NULL) JOINTAB2 "
			+ "						GROUP BY LOC_ID  "
			+ "						HAVING CNT >= #{DTL_NUMB} "
			+ "						) TAB1 "
			+ "				  ) "
			+ " ORDER BY s.STK_IN LIMIT 1 ")
	public TB_LO_STOCK selectposition(String PROD_ID, int DTL_NUMB);
	
	// 세부작업 진행중으로 상태 변경
	@Update(" UPDATE TB_LO_WORKDTL SET DTL_STAT=20, DTL_START=NOW() WHERE DTL_ID=#{DTL_ID} ")
	public int ongoDTL(String DTL_ID);
	
	// 세부작업 완료로 상태 변경
	@Update(" UPDATE TB_LO_WORKDTL SET DTL_STAT=30, DTL_END=NOW() WHERE DTL_ID=#{DTL_ID} ")
	public int complDTL(String DTL_ID);
	
	// 작업lot 시작
	@Update(" UPDATE TB_LO_WORK SET WRK_STAT=200, WRK_START=NOW() WHERE WRK_ID=#{WRK_ID} ")
	public int ongoWRK(String WRK_ID);
	
	// 작업lot 종료
	@Update(" UPDATE TB_LO_WORKDTL SET WRK_STAT=300, WRK_END=NOW() WHERE WRK_ID=#{WRK_ID} ")
	public int complWRK(String WRK_ID);
	
}
